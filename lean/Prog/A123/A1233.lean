import SequenceMachineLib
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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

/-!
# A123300: Prime sums of 14 positive 5th powers.

The programs for A123300, there is no canonical definition to state claims against.
-/

/-! ## A123300.P10975625596869272038

`p?[A123295(n+1)]`
-/

namespace A123300.P10975625596869272038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123300.P10975625596869272038

/-! ## A123300.P13340545758087497601

`p?[record[A123295(A291766(n))]]`
-/

namespace A123300.P13340545758087497601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123300.P13340545758087497601

/-! ## A123300.P5446161887667946248

`filter[A123295(n+1), A010051(#)]`
-/

namespace A123300.P5446161887667946248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123300.P5446161887667946248

/-! ## A123300.P14919264024651106407

`∩[A000040(n+1), A123295(n+1)]`
-/

namespace A123300.P14919264024651106407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P14919264024651106407

/-! ## A123300.P9355966155092280994

`∩[A004139(n+1), A123295(n+1)]`
-/

namespace A123300.P9355966155092280994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P9355966155092280994

/-! ## A123300.P810973696135093886

`∩[A006005(n+1), A123295(n+1)]`
-/

namespace A123300.P810973696135093886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P810973696135093886

/-! ## A123300.P15229077476275089855

`∩[A008578(n+1), A123295(n+1)]`
-/

namespace A123300.P15229077476275089855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P15229077476275089855

/-! ## A123300.P8680610610622337255

`∩[A033946(n+1), A123295(n+1)]`
-/

namespace A123300.P8680610610622337255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P8680610610622337255

/-! ## A123300.P17784317490119207509

`∩[A038672(n+1), A123295(n+1)]`
-/

namespace A123300.P17784317490119207509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P17784317490119207509

/-! ## A123300.P10802268268208506942

`∩[A045319(n+1), A123295(n+1)]`
-/

namespace A123300.P10802268268208506942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P10802268268208506942

/-! ## A123300.P17186219105928900031

`∩[A045344(n+1), A123295(n+1)]`
-/

namespace A123300.P17186219105928900031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P17186219105928900031

/-! ## A123300.P12298380316728236749

`∩[A046022(n+1), A123295(n+1)]`
-/

namespace A123300.P12298380316728236749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P12298380316728236749

/-! ## A123300.P1669795063551405920

`∩[A051948(n+1), A123295(n+1)]`
-/

namespace A123300.P1669795063551405920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P1669795063551405920

/-! ## A123300.P1996653575579285825

`∩[A053813(n+1), A123295(n+1)]`
-/

namespace A123300.P1996653575579285825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P1996653575579285825

/-! ## A123300.P2221420658508468003

`∩[A062972(n+1), A123295(n+1)]`
-/

namespace A123300.P2221420658508468003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P2221420658508468003

/-! ## A123300.P829050444521950462

`∩[A064728(n+1), A123295(n+1)]`
-/

namespace A123300.P829050444521950462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P829050444521950462

/-! ## A123300.P9858841592410567586

`∩[A065091(n+1), A123295(n+1)]`
-/

namespace A123300.P9858841592410567586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P9858841592410567586

/-! ## A123300.P7268895504378459372

`∩[A065376(n+1), A123295(n+1)]`
-/

namespace A123300.P7268895504378459372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P7268895504378459372

/-! ## A123300.P3574929461882787865

`∩[A065396(n+1), A123295(n+1)]`
-/

namespace A123300.P3574929461882787865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P3574929461882787865

/-! ## A123300.P9805630481540444469

`∩[A066050(n+1), A123295(n+1)]`
-/

namespace A123300.P9805630481540444469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123300.P9805630481540444469

/-!
# A123301: Triangle read by rows: T(n,k) is the number of specially labeled bicolored nonseparable graphs with k points in one color class and n-k points in the other class. "Special" means there are separate labels 1,2,...,k and 1,2,...,n-k for the two color classes (n >= 2, k = 1,...,n-1).

The programs for A123301, there is no canonical definition to state claims against.
-/

/-! ## A123301.P3758735074705627367

`A000096(A342980(n))-A102705(A342980(n))`
-/

namespace A123301.P3758735074705627367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A342980 n).toNat - A102705 (A342980 n).toNat

end

end A123301.P3758735074705627367

/-! ## A123301.P14268156275179493434

`A350707(A342980(n)+1)`
-/

namespace A123301.P14268156275179493434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350707 (A342980 n + 1).toNat

end

end A123301.P14268156275179493434

/-! ## A123301.P2720291826762344131

`A266168(or(2, A271697(n)))`
-/

namespace A123301.P2720291826762344131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266168 (Int.lor 2 (A271697 n)).toNat

end

end A123301.P2720291826762344131

/-! ## A123301.P17971360748041866364

`A003056(A371761(n)²²)`
-/

namespace A123301.P17971360748041866364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((A371761 n ^ 2) ^ 2).toNat

end

end A123301.P17971360748041866364

/-! ## A123301.P14592814983922993557

`A000045(A122083(n)^A162247(n+1))`
-/

namespace A123301.P14592814983922993557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A122083 n : ℚ) ^ (A162247 (n + 1) : ℤ))).toNat

end

end A123301.P14592814983922993557

/-!
# A123303: E ist der erste, sechste, achte, zwoelfte, vierzehnte, neunzehnte, vierundzwanzigste,... Buchstabe dieses Satzes, Kommas und Leerstellen nicht mitgezaehlt.

The programs for A123303, there is no canonical definition to state claims against.
-/

/-! ## A123303.P8057867521338748815

`A328335(3*n+2)-A008683(A328080(n))`
-/

namespace A123303.P8057867521338748815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (3 * n + 2) - A008683 (A328080 n).toNat

end

end A123303.P8057867521338748815

/-! ## A123303.P14776469585229068556

`A047237(lt[A318407(3*n+4), n])`
-/

namespace A123303.P14776469585229068556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318407 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A123303.P14776469585229068556

/-! ## A123303.P16523796430338443372

`record[gcd(A014378(n), A235032(2*(n+2)))]`
-/

namespace A123303.P16523796430338443372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014378 n) (A235032 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123303.P16523796430338443372

/-! ## A123303.P8078558766240734496

`A235045(2*(n+2))%A306230(A299273(n))`
-/

namespace A123303.P8078558766240734496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235045 (2 * (n + 2))) (A306230 (A299273 n).toNat)

end

end A123303.P8078558766240734496

/-!
# A123304: Number of edge covers for the circular ladder (n-prism graph) C_n X K_2.

The programs for A123304, the canonical program `A123304.P18201645127155216356` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123304 has offset 0).

The definition of A123304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123304.P18201645127155216356

`5*a(n-1)+9*a(n-2)+a(n-3)-2*a(n-4)` with `a(0)=4, a(1)=5, a(2)=43, a(3)=263`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123304

/-- `5*a(n-1)+9*a(n-2)+a(n-3)-2*a(n-4)` -/
def P18201645127155216356.Spec : Prop :=
  ∀ n, P18201645127155216356.a n = A123304 n

theorem P18201645127155216356.correct : P18201645127155216356.Spec := by
  intro n
  simp only [A123304]

end A123304

/-!
# A123305: Triangle T, read by rows, where column k of T equals (k+1)*(column k of T^2) when shifted to have an initial '1'; i.e., T(n,k) = (k+1)*[T^2](n-1,k) for n>k>=0, with T(n,n)=1 for n>=0.

The programs for A123305, there is no canonical definition to state claims against.
-/

/-! ## A123305.P17529965180368954217

`A334966(A135880(n))+A069777(n)`
-/

namespace A123305.P17529965180368954217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (A135880 n).toNat + A069777 n

end

end A123305.P17529965180368954217

/-!
# A123306: Column 0 of triangle A123305.

The programs for A123306, there is no canonical definition to state claims against.
-/

/-! ## A123306.P17485611357039663177

`A123305(∑[n])`
-/

namespace A123306.P17485611357039663177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123306.P17485611357039663177

/-! ## A123306.P1607742821812418365

`A123305(A000217(n))+char[10]`
-/

namespace A123306.P1607742821812418365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123305 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A123306.P1607742821812418365

/-! ## A123306.P16608599839048240048

`A123305(n*(n+1)/2)%A023989(n)`
-/

namespace A123306.P16608599839048240048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123305 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat) (A023989 n)

end

end A123306.P16608599839048240048

/-! ## A123306.P11241060090443844020

`A123305(C(n+1, 2))^A117894(C(n+1, 2))`
-/

namespace A123306.P11241060090443844020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123305 (Nat.choose (n + 1) 2) : ℚ) ^ (A117894 (Nat.choose (n + 1) 2) : ℤ)

end

end A123306.P11241060090443844020

/-! ## A123306.P7126085418295553598

`A123305(n-Δ[-C(n, 3)])+A000007(2*n+4)`
-/

namespace A123306.P7126085418295553598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123305 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat + A000007 (2 * n + 4)

end

end A123306.P7126085418295553598

/-!
# A123307: Column 1 of triangle A123305.

The programs for A123307, there is no canonical definition to state claims against.
-/

/-! ## A123307.P11276745383725290874

`record[A123305(comp[∑[n]])]`
-/

namespace A123307.P11276745383725290874
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123305 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123307.P11276745383725290874

/-! ## A123307.P13665856931086541763

`A123305(∑[n+1]+1)`
-/

namespace A123307.P13665856931086541763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A123307.P13665856931086541763

/-! ## A123307.P1653102803697953458

`record[A123305(n)/A036073(n)]`
-/

namespace A123307.P1653102803697953458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123305 n : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123307.P1653102803697953458

/-! ## A123307.P6690443070899440959

`record[A123305(n)/A066657(n)]`
-/

namespace A123307.P6690443070899440959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123305 n : ℚ) / (A066657 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123307.P6690443070899440959

/-! ## A123307.P15072453773382393753

`record[A123305(n)/A177767(n)]`
-/

namespace A123307.P15072453773382393753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123305 n : ℚ) / (A177767 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123307.P15072453773382393753

/-!
# A123308: Column 2 of triangle A123305.

The programs for A123308, there is no canonical definition to state claims against.
-/

/-! ## A123308.P17328939981508277630

`A123305(∑[n+2]+3)`
-/

namespace A123308.P17328939981508277630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123305 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A123308.P17328939981508277630

/-! ## A123308.P1764151583747068798

`record[C(A123305(n+1), A123301(n+2))]`
-/

namespace A123308.P1764151583747068798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123305 (n + 1)).toNat (A123301 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123308.P1764151583747068798

/-!
# A123309: Column 3 of triangle A123305.

The programs for A123309, there is no canonical definition to state claims against.
-/

/-! ## A123309.P9158708762139012105

`A123305(((n+4)²-n)/2+1)`
-/

namespace A123309.P9158708762139012105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123305 (SequenceMachineLib.roundAway ((((n + 4) ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 + 1)).toNat

end

end A123309.P9158708762139012105

/-! ## A123309.P14016321611894943618

`or(char[28], A123305(A167614(n+2)))`
-/

namespace A123309.P14016321611894943618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A123305 (A167614 (n + 2)).toNat)

end

end A123309.P14016321611894943618

/-!
# A123310: Row sums of triangle A123305.

The programs for A123310, there is no canonical definition to state claims against.
-/

/-! ## A123310.P8945525729967937398

`A000463(∑[A185994(n)])`
-/

namespace A123310.P8945525729967937398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123310.P8945525729967937398

/-! ## A123310.P17134059725479340996

`A001057(∑[A185994(n)])`
-/

namespace A123310.P17134059725479340996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123310.P17134059725479340996

/-!
# A123311: Central terms of triangle A123305.

The programs for A123311, there is no canonical definition to state claims against.
-/

/-! ## A123311.P14901600979108143701

`(n+1)*A123312(n)`
-/

namespace A123311.P14901600979108143701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123312 n

end

end A123311.P14901600979108143701

/-! ## A123311.P12538682347737492507

`A123312(n)*A131830(A000096(n))`
-/

namespace A123311.P12538682347737492507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123312 n * A131830 (A000096 n).toNat

end

end A123311.P12538682347737492507

/-! ## A123311.P14587125637993557726

`A123312(n)*A131818(A000124(n))`
-/

namespace A123311.P14587125637993557726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123312 n * A131818 (A000124 n).toNat

end

end A123311.P14587125637993557726

/-! ## A123311.P1688406713138331733

`A123312(n)*A131818(A001844(n))`
-/

namespace A123311.P1688406713138331733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123312 n * A131818 (A001844 n).toNat

end

end A123311.P1688406713138331733

/-! ## A123311.P9681661303883183984

`A123312(n)*A133700(A000079(n))`
-/

namespace A123311.P9681661303883183984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123312 n * A133700 (A000079 n).toNat

end

end A123311.P9681661303883183984

/-!
# A123312: a(n) = A123311(n)/(n+1), where A123311 forms the central terms of triangle A123305.

The programs for A123312, there is no canonical definition to state claims against.
-/

/-! ## A123312.P14987052035531798012

`A123311(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123312.P14987052035531798012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123311 n : ℚ) / (n + 1 : ℚ)

end

end A123312.P14987052035531798012

/-! ## A123312.P16391192156381507154

`floor(A123311(n)/A348553(n))`
-/

namespace A123312.P16391192156381507154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123311 n : ℚ) / (A348553 n : ℚ)⌋

end

end A123312.P16391192156381507154

/-! ## A123312.P7607995246732626206

`ceil(A123311(n)/A031285(n))`
-/

namespace A123312.P7607995246732626206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123311 n : ℚ) / (A031285 n : ℚ)⌉

end

end A123312.P7607995246732626206

/-! ## A123312.P6136491830749826926

`floor(A123311(n)/A008619(2*n))`
-/

namespace A123312.P6136491830749826926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123311 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A123312.P6136491830749826926

/-! ## A123312.P2083389364264347554

`(A123311(n)/A031285(n))^A114099(A023931(n))`
-/

namespace A123312.P2083389364264347554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A123311 n : ℚ) / (A031285 n : ℚ)) ^ (A114099 (A023931 n).toNat : ℤ)

end

end A123312.P2083389364264347554

/-!
# A123313: Maximum of greatest common divisors of pairs of distinct squarefree numbers not greater than the n-th squarefree number; a(1)=1.

The programs for A123313, the canonical program `A123313.P2865230886219014765` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123313 has offset 1).

The definition of A123313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123313.P2865230886219014765

`A056911(A103775(2*(n+1))+A072747(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A123313

/-- `A056911(A103775(2*(n+1))+A072747(n+1))` -/
def P2865230886219014765.Spec : Prop :=
  ∀ n, P2865230886219014765.a n = A123313 (n + 1)

theorem P2865230886219014765.correct : P2865230886219014765.Spec := by
  intro n
  simp only [A123313, Nat.add_sub_cancel]

end A123313

/-!
# A123316: Triangle read by rows: T(n,k)=(k+1)*n!/2 (1<=k<=n).

The programs for A123316, the canonical program `A123316.P12471927346864757691` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123316 has offset 1).

The definition of A123316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123316.P4624404639864867440

`∑[ceil(round(sqrt(2*(n+1)))!/2)]`
-/

namespace A123316.P4624404639864867440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123316.P4624404639864867440

namespace A123316

/-- `∑[ceil(round(sqrt(2*(n+1)))!/2)]` -/
def P4624404639864867440.Spec : Prop :=
  ∀ n, P4624404639864867440.a n = A123316 (n + 1)

end A123316

/-! ## A123316.P12544247059570095431

`∑[round(round(sqrt(2*(n+1)))!/2)]`
-/

namespace A123316.P12544247059570095431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123316.P12544247059570095431

namespace A123316

/-- `∑[round(round(sqrt(2*(n+1)))!/2)]` -/
def P12544247059570095431.Spec : Prop :=
  ∀ n, P12544247059570095431.a n = A123316 (n + 1)

end A123316

/-! ## A123316.P12471927346864757691

`A098361(n)*A124932(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A123316

/-- `A098361(n)*A124932(n+1)` -/
def P12471927346864757691.Spec : Prop :=
  ∀ n, P12471927346864757691.a n = A123316 (n + 1)

theorem P12471927346864757691.correct : P12471927346864757691.Spec := by
  intro n
  simp only [A123316, Nat.add_sub_cancel]

end A123316

/-! ## A123316.P12850661009443261096

`(∑[∑[char[∑[n]]]!]+1)/2`
-/

namespace A123316.P12850661009443261096
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2

end

end A123316.P12850661009443261096

namespace A123316

/-- `(∑[∑[char[∑[n]]]!]+1)/2` -/
def P12850661009443261096.Spec : Prop :=
  ∀ n, P12850661009443261096.a n = (A123316 (n + 1) : ℚ)

end A123316

/-! ## A123316.P18327249281003954993

`ceil(∑[(comp[∑[n]]-n-1)!]/2)`
-/

namespace A123316.P18327249281003954993
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A123316.P18327249281003954993

namespace A123316

/-- `ceil(∑[(comp[∑[n]]-n-1)!]/2)` -/
def P18327249281003954993.Spec : Prop :=
  ∀ n, P18327249281003954993.a n = A123316 (n + 1)

end A123316

/-! ## A123316.P12837078579999722986

`floor(∑[(comp[∑[n]]-n-1)!]/2)+1`
-/

namespace A123316.P12837078579999722986
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋ + 1

end

end A123316.P12837078579999722986

namespace A123316

/-- `floor(∑[(comp[∑[n]]-n-1)!]/2)+1` -/
def P12837078579999722986.Spec : Prop :=
  ∀ n, P12837078579999722986.a n = A123316 (n + 1)

end A123316

/-! ## A123316.P4548894942358808602

`A051683(n+2)/2`
-/

namespace A123316.P4548894942358808602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051683 (n + 2) : ℚ) / 2

end

end A123316.P4548894942358808602

namespace A123316

/-- `A051683(n+2)/2` -/
def P4548894942358808602.Spec : Prop :=
  ∀ n, P4548894942358808602.a n = (A123316 (n + 1) : ℚ)

end A123316

/-! ## A123316.P6864156968265748903

`(A200748(n+1)+1)/2`
-/

namespace A123316.P6864156968265748903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200748 (n + 1) + 1 : ℚ) / 2

end

end A123316.P6864156968265748903

namespace A123316

/-- `(A200748(n+1)+1)/2` -/
def P6864156968265748903.Spec : Prop :=
  ∀ n, P6864156968265748903.a n = (A123316 (n + 1) : ℚ)

end A123316

/-! ## A123316.P4011980004261651467

`A162608(A007401(n+2))/2`
-/

namespace A123316.P4011980004261651467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162608 (A007401 (n + 2)).toNat : ℚ) / 2

end

end A123316.P4011980004261651467

namespace A123316

/-- `A162608(A007401(n+2))/2` -/
def P4011980004261651467.Spec : Prop :=
  ∀ n, P4011980004261651467.a n = (A123316 (n + 1) : ℚ)

end A123316

/-! ## A123316.P16898763227148726382

`A324225(A004202(n+2))/2`
-/

namespace A123316.P16898763227148726382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324225 (A004202 (n + 2)).toNat : ℚ) / 2

end

end A123316.P16898763227148726382

namespace A123316

/-- `A324225(A004202(n+2))/2` -/
def P16898763227148726382.Spec : Prop :=
  ∀ n, P16898763227148726382.a n = (A123316 (n + 1) : ℚ)

end A123316

/-!
# A123317: Smallest prime power m such that n+m is a prime number.

The programs for A123317, there is no canonical definition to state claims against.
-/

/-! ## A123317.P8525746191851488003

`A123318(n+1)-(n+1)`
-/

namespace A123317.P8525746191851488003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (n + 1) - (n + 1 : ℤ)

end

end A123317.P8525746191851488003

/-! ## A123317.P2071084595434270771

`A000010(A123318(n+1))-n`
-/

namespace A123317.P2071084595434270771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A123318 (n + 1)).toNat - (n : ℤ)

end

end A123317.P2071084595434270771

/-! ## A123317.P16048708473632313862

`A023443(A123318(n+1)-n)`
-/

namespace A123317.P16048708473632313862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A123318 (n + 1) - (n : ℤ)).toNat

end

end A123317.P16048708473632313862

/-! ## A123317.P5901408835622149462

`A136623(A123318(n+1)-n)`
-/

namespace A123317.P5901408835622149462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (A123318 (n + 1) - (n : ℤ)).toNat

end

end A123317.P5901408835622149462

/-! ## A123317.P5990562887331592051

`A160597(A123318(n+1)-n)`
-/

namespace A123317.P5990562887331592051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160597 (A123318 (n + 1) - (n : ℤ)).toNat

end

end A123317.P5990562887331592051

/-!
# A123318: a(n) = smallest prime of the form n + (prime power).

The programs for A123318, there is no canonical definition to state claims against.
-/

/-! ## A123318.P7007301386632790186

`A123317(n+1)+1+n`
-/

namespace A123318.P7007301386632790186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (n + 1) + 1 + (n : ℤ)

end

end A123318.P7007301386632790186

/-! ## A123318.P10747471881624374526

`p?[A123317(A028310(n))+n]`
-/

namespace A123318.P10747471881624374526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123318.P10747471881624374526

/-! ## A123318.P17883955696990571010

`A020725(A123317(n+1)+n)`
-/

namespace A123318.P17883955696990571010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A123317 (n + 1) + (n : ℤ)).toNat

end

end A123318.P17883955696990571010

/-! ## A123318.P5121709825831845868

`A034694(A123317(n+1)+n)`
-/

namespace A123318.P5121709825831845868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A123317 (n + 1) + (n : ℤ)).toNat

end

end A123318.P5121709825831845868

/-! ## A123318.P15285858720562988014

`A057174(A123317(n+1)+n)`
-/

namespace A123318.P15285858720562988014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (A123317 (n + 1) + (n : ℤ)).toNat

end

end A123318.P15285858720562988014

/-! ## A123318.P10543567482820387612

`A059843(A123317(n+1)+n)`
-/

namespace A123318.P10543567482820387612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A123317 (n + 1) + (n : ℤ)).toNat

end

end A123318.P10543567482820387612

/-! ## A123318.P12068140840836643901

`A060474(A123317(n+1)+n)`
-/

namespace A123318.P12068140840836643901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060474 (A123317 (n + 1) + (n : ℤ)).toNat

end

end A123318.P12068140840836643901

/-! ## A123318.P515882169427973493

`A079114(A123317(n+1)+n)`
-/

namespace A123318.P515882169427973493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (A123317 (n + 1) + (n : ℤ)).toNat

end

end A123318.P515882169427973493

/-! ## A123318.P15313697567373867917

`A086507(A123317(n+1)+n)`
-/

namespace A123318.P15313697567373867917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (A123317 (n + 1) + (n : ℤ)).toNat

end

end A123318.P15313697567373867917

/-!
# A123319: Triangle read by rows: coefficients of polynomials p(k) = (-x + k + 1)*p(k-1), starting p(0)=1, p(1)=1-x.

The programs for A123319, there is no canonical definition to state claims against.
-/

/-! ## A123319.P9718958221322309304

`A008836(A059268(n))*A196841(A061579(n))`
-/

namespace A123319.P9718958221322309304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A196841 (A061579 n).toNat

end

end A123319.P9718958221322309304

/-! ## A123319.P1134219095758601343

`A033999(A173003(n))*A196841(A061579(n))`
-/

namespace A123319.P1134219095758601343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A173003 n).toNat * A196841 (A061579 n).toNat

end

end A123319.P1134219095758601343

/-!
# A123320: Table of the cycle lengths for "imperfect" (generalized) faro shuffles with cut of size k returning a deck of size n to its original order.

The programs for A123320, there is no canonical definition to state claims against.
-/

/-! ## A123320.P5340008871006055805

`A054123(n)-A185193(A147001(A054123(n)))`
-/

namespace A123320.P5340008871006055805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n - A185193 (A147001 (A054123 n).toNat).toNat

end

end A123320.P5340008871006055805

/-! ## A123320.P6067741125899717894

`A331245(A096744(n))`
-/

namespace A123320.P6067741125899717894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331245 (A096744 n).toNat

end

end A123320.P6067741125899717894

/-! ## A123320.P4305559662537316409

`A390085(A048004(n))`
-/

namespace A123320.P4305559662537316409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390085 (A048004 n).toNat

end

end A123320.P4305559662537316409

/-! ## A123320.P8180603013150978144

`A390085(A140998(n))`
-/

namespace A123320.P8180603013150978144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390085 (A140998 n).toNat

end

end A123320.P8180603013150978144

/-! ## A123320.P14718842560006716781

`A167439(A178249(n+1))`
-/

namespace A123320.P14718842560006716781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A178249 (n + 1)).toNat

end

end A123320.P14718842560006716781

/-!
# A123321: Products of 7 distinct primes (squarefree 7-almost primes).

The programs for A123321, there is no canonical definition to state claims against.
-/

/-! ## A123321.P2941657689760963248

`A030727(A030734(n+1))*A168352(n+1)`
-/

namespace A123321.P2941657689760963248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A030734 (n + 1)).toNat * A168352 (n + 1)

end

end A123321.P2941657689760963248

/-! ## A123321.P6375706795599526476

`A030737(A030744(n+1))*A168352(n+1)`
-/

namespace A123321.P6375706795599526476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A030744 (n + 1)).toNat * A168352 (n + 1)

end

end A123321.P6375706795599526476

/-! ## A123321.P1007705529355265866

`A030747(A030754(n+1))*A168352(n+1)`
-/

namespace A123321.P1007705529355265866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A030754 (n + 1)).toNat * A168352 (n + 1)

end

end A123321.P1007705529355265866

/-! ## A123321.P12335082693189175832

`A020639(A028326(abs(2-n)))*A168352(n+1)`
-/

namespace A123321.P12335082693189175832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028326 |2 - (n : ℤ)|.toNat).toNat * A168352 (n + 1)

end

end A123321.P12335082693189175832

/-! ## A123321.P17920178733072006372

`lcm(A020639(A028326(n)), A168352(n+1))`
-/

namespace A123321.P17920178733072006372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A028326 n).toNat) (A168352 (n + 1))

end

end A123321.P17920178733072006372

/-! ## A123321.P10750763203396035393

`xor(1, A020639(A028326(n+1))*A168352(n+1)+1)`
-/

namespace A123321.P10750763203396035393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A020639 (A028326 (n + 1)).toNat * A168352 (n + 1) + 1)

end

end A123321.P10750763203396035393

/-! ## A123321.P7133444839381224429

`A001222(A168354(n+1))*A168352(n+1)`
-/

namespace A123321.P7133444839381224429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A168354 (n + 1)).toNat * A168352 (n + 1)

end

end A123321.P7133444839381224429

/-! ## A123321.P17546727256115230854

`2*A168352(A237447(∑[n]+1))`
-/

namespace A123321.P17546727256115230854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168352 (A237447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A123321.P17546727256115230854

/-! ## A123321.P199850856905700642

`record[2*A168352(A237447(n+1))]`
-/

namespace A123321.P199850856905700642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168352 (A237447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123321.P199850856905700642

/-! ## A123321.P9976052850782669995

`A168352(n+1)+record[A168352(A237447(n+1))]`
-/

namespace A123321.P9976052850782669995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168352 (A237447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168352 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123321.P9976052850782669995

/-! ## A123321.P11959885586201643285

`lcm(A168352(n+1)+A168352(n+1), A168353(n+1))`
-/

namespace A123321.P11959885586201643285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168352 (n + 1) + A168352 (n + 1)) (A168353 (n + 1))

end

end A123321.P11959885586201643285

/-!
# A123322: Products of 8 distinct primes (squarefree 8-almost primes).

The programs for A123322, there is no canonical definition to state claims against.
-/

/-! ## A123322.P9798581265502518254

`A161841(A000040(2*(n+1)))*A361075(n+1)`
-/

namespace A123322.P9798581265502518254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (A000040 (2 * (n + 1))).toNat * A361075 (n + 1)

end

end A123322.P9798581265502518254

/-! ## A123322.P14283612001669813588

`A161841(A234695(n+1))*A361075(n+1)`
-/

namespace A123322.P14283612001669813588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (A234695 (n + 1)).toNat * A361075 (n + 1)

end

end A123322.P14283612001669813588

/-! ## A123322.P6396771093849308758

`A161841(A151935(n)!)*A361075(n+1)`
-/

namespace A123322.P6396771093849308758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (Nat.factorial (A151935 n).toNat) * A361075 (n + 1)

end

end A123322.P6396771093849308758

/-!
# A123323: Number of integer-sided triangles with maximum side n, with sides relatively prime.

The programs for A123323, the canonical program `A123323.P8887875192151149646` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123323 has offset 1).

The definition of A123323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123323.P8887875192151149646

`A007438(n+1)-A346758(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A123323

/-- `A007438(n+1)-A346758(n+1)` -/
def P8887875192151149646.Spec : Prop :=
  ∀ n, P8887875192151149646.a n = A123323 (n + 1)

theorem P8887875192151149646.correct : P8887875192151149646.Spec := by
  intro n
  simp only [A123323, Nat.add_sub_cancel]

end A123323

/-! ## A123323.P2267075526905182552

`floor(A007438(n+1)²/Δ[A321879(n)])`
-/

namespace A123323.P2267075526905182552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007438 (n + 1) ^ 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A123323.P2267075526905182552

namespace A123323

/-- `floor(A007438(n+1)²/Δ[A321879(n)])` -/
def P2267075526905182552.Spec : Prop :=
  ∀ n, P2267075526905182552.a n = A123323 (n + 1)

end A123323

/-! ## A123323.P6868039249528652577

`floor(A007438(n+1)²/A007434(n+1))`
-/

namespace A123323.P6868039249528652577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007438 (n + 1) ^ 2 : ℚ) / (A007434 (n + 1) : ℚ)⌋

end

end A123323.P6868039249528652577

namespace A123323

/-- `floor(A007438(n+1)²/A007434(n+1))` -/
def P6868039249528652577.Spec : Prop :=
  ∀ n, P6868039249528652577.a n = A123323 (n + 1)

end A123323

/-! ## A123323.P5500192081096333347

`∑{d}[n+1, A008683(#)*A087811((n+1)/#)]`
-/

namespace A123323.P5500192081096333347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A087811 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A123323.P5500192081096333347

namespace A123323

/-- `∑{d}[n+1, A008683(#)*A087811((n+1)/#)]` -/
def P5500192081096333347.Spec : Prop :=
  ∀ n, P5500192081096333347.a n = A123323 (n + 1)

end A123323

/-! ## A123323.P618227650429225898

`A007438(n+1)-floor(A001766(n+1)/(2*(n+1)))`
-/

namespace A123323.P618227650429225898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - ⌊(A001766 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A123323.P618227650429225898

namespace A123323

/-- `A007438(n+1)-floor(A001766(n+1)/(2*(n+1)))` -/
def P618227650429225898.Spec : Prop :=
  ∀ n, P618227650429225898.a n = A123323 (n + 1)

end A123323

/-! ## A123323.P17781706855361887715

`A007438(n+1)-round(A000056(n+1)/(4*(n+1)))`
-/

namespace A123323.P17781706855361887715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (4 * (n + 1) : ℚ))

end

end A123323.P17781706855361887715

namespace A123323

/-- `A007438(n+1)-round(A000056(n+1)/(4*(n+1)))` -/
def P17781706855361887715.Spec : Prop :=
  ∀ n, P17781706855361887715.a n = A123323 (n + 1)

end A123323

/-! ## A123323.P10410667677403892915

`A007438(n+1)-round(A063659((n+1)²)/4)`
-/

namespace A123323.P10410667677403892915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - SequenceMachineLib.roundAway ((A063659 ((n + 1) ^ 2) : ℚ) / 4)

end

end A123323.P10410667677403892915

namespace A123323

/-- `A007438(n+1)-round(A063659((n+1)²)/4)` -/
def P10410667677403892915.Spec : Prop :=
  ∀ n, P10410667677403892915.a n = A123323 (n + 1)

end A123323

/-! ## A123323.P2639592497991451424

`A054576(A140434(n+1)+A007434(n+1))`
-/

namespace A123323.P2639592497991451424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A140434 (n + 1) + A007434 (n + 1)).toNat

end

end A123323.P2639592497991451424

namespace A123323

/-- `A054576(A140434(n+1)+A007434(n+1))` -/
def P2639592497991451424.Spec : Prop :=
  ∀ n, P2639592497991451424.a n = A123323 (n + 1)

end A123323

/-! ## A123323.P12052699107008330250

`A007438(n+1)-A130722(A007434(n+1))`
-/

namespace A123323.P12052699107008330250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - A130722 (A007434 (n + 1)).toNat

end

end A123323.P12052699107008330250

namespace A123323

/-- `A007438(n+1)-A130722(A007434(n+1))` -/
def P12052699107008330250.Spec : Prop :=
  ∀ n, P12052699107008330250.a n = A123323 (n + 1)

end A123323

/-! ## A123323.P3972464995565203230

`A177975(A167614(n+1))-A285727(A007434(n+1))`
-/

namespace A123323.P3972464995565203230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A167614 (n + 1)).toNat - A285727 (A007434 (n + 1)).toNat

end

end A123323.P3972464995565203230

namespace A123323

/-- `A177975(A167614(n+1))-A285727(A007434(n+1))` -/
def P3972464995565203230.Spec : Prop :=
  ∀ n, P3972464995565203230.a n = A123323 (n + 1)

end A123323

/-!
# A123324: Number of integer-sided triangles with all sides <= n and sides relatively prime.

The programs for A123324, the canonical program `A123324.P6293013150715471247` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123324 has offset 1).

The definition of A123324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123324.P6293013150715471247

`∑[A123323(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A123324

/-- `∑[A123323(n+1)]` -/
def P6293013150715471247.Spec : Prop :=
  ∀ n, P6293013150715471247.a n = A123324 (n + 1)

theorem P6293013150715471247.correct : P6293013150715471247.Spec := by
  intro n
  simp only [A123324, Nat.add_sub_cancel]

end A123324

/-! ## A123324.P9073833166863915726

`∑[A007438(n+1)-A346758(n+1)]`
-/

namespace A123324.P9073833166863915726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - A346758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P9073833166863915726

namespace A123324

/-- `∑[A007438(n+1)-A346758(n+1)]` -/
def P9073833166863915726.Spec : Prop :=
  ∀ n, P9073833166863915726.a n = A123324 (n + 1)

end A123324

/-! ## A123324.P11111988998548393247

`∑[floor(A007438(n+1)²/A007434(n+1))]`
-/

namespace A123324.P11111988998548393247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007438 (n + 1) ^ 2 : ℚ) / (A007434 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P11111988998548393247

namespace A123324

/-- `∑[floor(A007438(n+1)²/A007434(n+1))]` -/
def P11111988998548393247.Spec : Prop :=
  ∀ n, P11111988998548393247.a n = A123324 (n + 1)

end A123324

/-! ## A123324.P8471319803222640308

`∑[∑{d}[n+1, A008683(#)*A087811((n+1)/#)]]`
-/

namespace A123324.P8471319803222640308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A087811 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P8471319803222640308

namespace A123324

/-- `∑[∑{d}[n+1, A008683(#)*A087811((n+1)/#)]]` -/
def P8471319803222640308.Spec : Prop :=
  ∀ n, P8471319803222640308.a n = A123324 (n + 1)

end A123324

/-! ## A123324.P1135783021842002111

`∑[A007438(n+1)-floor(A001766(n+1)/(2*(n+1)))]`
-/

namespace A123324.P1135783021842002111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - ⌊(A001766 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P1135783021842002111

namespace A123324

/-- `∑[A007438(n+1)-floor(A001766(n+1)/(2*(n+1)))]` -/
def P1135783021842002111.Spec : Prop :=
  ∀ n, P1135783021842002111.a n = A123324 (n + 1)

end A123324

/-! ## A123324.P5660543848782534096

`∑[A007438(n+1)-round(A000056(n+1)/(4*(n+1)))]`
-/

namespace A123324.P5660543848782534096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (4 * (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P5660543848782534096

namespace A123324

/-- `∑[A007438(n+1)-round(A000056(n+1)/(4*(n+1)))]` -/
def P5660543848782534096.Spec : Prop :=
  ∀ n, P5660543848782534096.a n = A123324 (n + 1)

end A123324

/-! ## A123324.P10093826114183051050

`∑[A007438(n+1)-round(A063659((n+1)²)/4)]`
-/

namespace A123324.P10093826114183051050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - SequenceMachineLib.roundAway ((A063659 ((n + 1) ^ 2) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P10093826114183051050

namespace A123324

/-- `∑[A007438(n+1)-round(A063659((n+1)²)/4)]` -/
def P10093826114183051050.Spec : Prop :=
  ∀ n, P10093826114183051050.a n = A123324 (n + 1)

end A123324

/-! ## A123324.P7179529102717247520

`∑[A054576(A140434(n+1)+A007434(n+1))]`
-/

namespace A123324.P7179529102717247520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A140434 (n + 1) + A007434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P7179529102717247520

namespace A123324

/-- `∑[A054576(A140434(n+1)+A007434(n+1))]` -/
def P7179529102717247520.Spec : Prop :=
  ∀ n, P7179529102717247520.a n = A123324 (n + 1)

end A123324

/-! ## A123324.P2071622472268973292

`∑[A007438(n+1)-A130722(A007434(n+1))]`
-/

namespace A123324.P2071622472268973292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - A130722 (A007434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P2071622472268973292

namespace A123324

/-- `∑[A007438(n+1)-A130722(A007434(n+1))]` -/
def P2071622472268973292.Spec : Prop :=
  ∀ n, P2071622472268973292.a n = A123324 (n + 1)

end A123324

/-!
# A123326: Let M be the matrix defined in A111490. Sequence gives the sum of the elements of the submatrices (from the upper left element): M(1,1); M(1,1)+M(1,2)+M(1,2)+M(2,2); M(1,1)+M(1,2)+M(1,3)+M(2,1)+M(2,2)+M(2,3)+M(3,1)+M(3,2)+M(3,3), etc.

The programs for A123326, there is no canonical definition to state claims against.
-/

/-! ## A123326.P9945509780666054701

`a(n-1)+A121896(n+1)` with `a(0)=1`
-/

namespace A123326.P9945509780666054701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A121896 (n + 1)

end

end A123326.P9945509780666054701

/-! ## A123326.P7438499272994049388

`∑[∑[3*n+1-∑{d}[n, #]]]`
-/

namespace A123326.P7438499272994049388
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (1 - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123326.P7438499272994049388

/-! ## A123326.P18310764060814232446

`∑[∑[1-(∑{d}[n, #]-3*n)]]`
-/

namespace A123326.P18310764060814232446
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (3 * n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123326.P18310764060814232446

/-! ## A123326.P6504281109256897219

`∑[∑[Δ[n²]-∑{d}[n, #]+n]]`
-/

namespace A123326.P6504281109256897219
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123326.P6504281109256897219

/-! ## A123326.P2940646972951839508

`∑[∑[Δ[n²]-∑{d}[n, #%n]]]`
-/

namespace A123326.P2940646972951839508
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - ((∑ d ∈ Nat.divisors (f4 n), d % n : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123326.P2940646972951839508

/-!
# A123327: a(n) = A000203(n) + A004125(n).

The programs for A123327, the canonical program `A123327.P12449877284529674263` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123327 has offset 1).

The definition of A123327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123327.P12449877284529674263

`A000203(n+1)+A004125(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A123327

/-- `A000203(n+1)+A004125(n+1)` -/
def P12449877284529674263.Spec : Prop :=
  ∀ n, P12449877284529674263.a n = A123327 (n + 1)

theorem P12449877284529674263.correct : P12449877284529674263.Spec := by
  intro n
  simp only [A123327, Nat.add_sub_cancel]

end A123327

/-! ## A123327.P13151267011790424038

`∑[Δ[n²]-∑{d}[n, #]]`
-/

namespace A123327.P13151267011790424038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123327.P13151267011790424038

namespace A123327

/-- `∑[Δ[n²]-∑{d}[n, #]]` -/
def P13151267011790424038.Spec : Prop :=
  ∀ n, P13151267011790424038.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P5548959674043079521

`(n+1)²-∑[∑{d}[n, #]]`
-/

namespace A123327.P5548959674043079521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A123327.P5548959674043079521

namespace A123327

/-- `(n+1)²-∑[∑{d}[n, #]]` -/
def P5548959674043079521.Spec : Prop :=
  ∀ n, P5548959674043079521.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P5038942286492213823

`∑[2*n+1-∑{d}[n, #]]`
-/

namespace A123327.P5038942286492213823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123327.P5038942286492213823

namespace A123327

/-- `∑[2*n+1-∑{d}[n, #]]` -/
def P5038942286492213823.Spec : Prop :=
  ∀ n, P5038942286492213823.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P12541774530650503255

`∑[1-(∑{d}[n, #]-2*n)]`
-/

namespace A123327.P12541774530650503255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123327.P12541774530650503255

namespace A123327

/-- `∑[1-(∑{d}[n, #]-2*n)]` -/
def P12541774530650503255.Spec : Prop :=
  ∀ n, P12541774530650503255.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P8466770313997713683

`∑[n+1-∑{d}[n, #]+n]`
-/

namespace A123327.P8466770313997713683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123327.P8466770313997713683

namespace A123327

/-- `∑[n+1-∑{d}[n, #]+n]` -/
def P8466770313997713683.Spec : Prop :=
  ∀ n, P8466770313997713683.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P5867238427427560101

`a(n-1)+2*n+1-∑{d}[n, #]` with `a(0)=1`
-/

namespace A123327.P5867238427427560101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A123327.P5867238427427560101

namespace A123327

/-- `a(n-1)+2*n+1-∑{d}[n, #]` -/
def P5867238427427560101.Spec : Prop :=
  ∀ n, P5867238427427560101.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P16391136136351152350

`A111490(n)+1+n`
-/

namespace A123327.P16391136136351152350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n + 1 + (n : ℤ)

end

end A123327.P16391136136351152350

namespace A123327

/-- `A111490(n)+1+n` -/
def P16391136136351152350.Spec : Prop :=
  ∀ n, P16391136136351152350.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P16930594457037044906

`A157449(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A123327.P16930594457037044906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A157449 n + a (n - 1)

end

end A123327.P16930594457037044906

namespace A123327

/-- `A157449(n)+a(n-1)` -/
def P16930594457037044906.Spec : Prop :=
  ∀ n, P16930594457037044906.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P14658042977406337895

`∑[n+1]-A244048(n+1)`
-/

namespace A123327.P14658042977406337895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A244048 (n + 1)

end

end A123327.P14658042977406337895

namespace A123327

/-- `∑[n+1]-A244048(n+1)` -/
def P14658042977406337895.Spec : Prop :=
  ∀ n, P14658042977406337895.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P4788606409178235435

`a(n-1)+A033879(n)+1` with `a(0)=1`
-/

namespace A123327.P4788606409178235435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A033879 n + 1)

end

end A123327.P4788606409178235435

namespace A123327

/-- `a(n-1)+A033879(n)+1` -/
def P4788606409178235435.Spec : Prop :=
  ∀ n, P4788606409178235435.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P13617306351272819894

`a(n-1)+Δ[n²]-A000203(n)` with `a(0)=1`
-/

namespace A123327.P13617306351272819894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000203 n)

end

end A123327.P13617306351272819894

namespace A123327

/-- `a(n-1)+Δ[n²]-A000203(n)` -/
def P13617306351272819894.Spec : Prop :=
  ∀ n, P13617306351272819894.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P821349759068643676

`2*n+1-(A000203(2*n-n)-a(n-1))` with `a(0)=1`
-/

namespace A123327.P821349759068643676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) - (A000203 (2 * n - n) - a (n - 1))

end

end A123327.P821349759068643676

namespace A123327

/-- `2*n+1-(A000203(2*n-n)-a(n-1))` -/
def P821349759068643676.Spec : Prop :=
  ∀ n, P821349759068643676.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P2231366445216415212

`A005563(n)+2-A160664(n)`
-/

namespace A123327.P2231366445216415212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (2 - A160664 n)

end

end A123327.P2231366445216415212

namespace A123327

/-- `A005563(n)+2-A160664(n)` -/
def P2231366445216415212.Spec : Prop :=
  ∀ n, P2231366445216415212.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P11055020183237878582

`A163180(n+1)+A065608(n+1)`
-/

namespace A123327.P11055020183237878582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163180 (n + 1) + A065608 (n + 1)

end

end A123327.P11055020183237878582

namespace A123327

/-- `A163180(n+1)+A065608(n+1)` -/
def P11055020183237878582.Spec : Prop :=
  ∀ n, P11055020183237878582.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P15927700273375969085

`A354801(n+1)-A024816(n+1)`
-/

namespace A123327.P15927700273375969085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354801 (n + 1) - A024816 (n + 1)

end

end A123327.P15927700273375969085

namespace A123327

/-- `A354801(n+1)-A024816(n+1)` -/
def P15927700273375969085.Spec : Prop :=
  ∀ n, P15927700273375969085.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P11026249719596447624

`A001065(n+1)+∑[A033879(n+1)]`
-/

namespace A123327.P11026249719596447624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123327.P11026249719596447624

namespace A123327

/-- `A001065(n+1)+∑[A033879(n+1)]` -/
def P11026249719596447624.Spec : Prop :=
  ∀ n, P11026249719596447624.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P7786627419815564535

`A000203(n+1)-∑[A237588(n+1)]`
-/

namespace A123327.P7786627419815564535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123327.P7786627419815564535

namespace A123327

/-- `A000203(n+1)-∑[A237588(n+1)]` -/
def P7786627419815564535.Spec : Prop :=
  ∀ n, P7786627419815564535.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P487407377055647103

`A245092(2*n+1)+A004125(n+1)`
-/

namespace A123327.P487407377055647103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + A004125 (n + 1)

end

end A123327.P487407377055647103

namespace A123327

/-- `A245092(2*n+1)+A004125(n+1)` -/
def P487407377055647103.Spec : Prop :=
  ∀ n, P487407377055647103.a n = A123327 (n + 1)

end A123327

/-! ## A123327.P5751188396046335783

`∑[n-A001065(n+1)]+A000203(n+1)`
-/

namespace A123327.P5751188396046335783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000203 (n + 1)

end

end A123327.P5751188396046335783

namespace A123327

/-- `∑[n-A001065(n+1)]+A000203(n+1)` -/
def P5751188396046335783.Spec : Prop :=
  ∀ n, P5751188396046335783.a n = A123327 (n + 1)

end A123327

/-!
# A123328: Let M be the matrix defined in A111490. Sequence gives M(1,1), M(1,2)+M(1,2)+M(2,2), M(1,3)+M(2,3)+M(3,1)+M(3,2)+M(3,3), etc.

The programs for A123328, there is no canonical definition to state claims against.
-/

/-! ## A123328.P16391150360363422812

`∑[3*n+1-∑{d}[n, #]]-a(n-1)` with `a(0)=1`
-/

namespace A123328.P16391150360363422812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (1 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A123328.P16391150360363422812

/-! ## A123328.P15080388027436398204

`∑[1-(∑{d}[n, #]-3*n)]-a(n-1)` with `a(0)=1`
-/

namespace A123328.P15080388027436398204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (3 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A123328.P15080388027436398204

/-! ## A123328.P14453733246405191905

`∑[Δ[n²]-∑{d}[n, #%n]]-a(n-1)` with `a(0)=1`
-/

namespace A123328.P14453733246405191905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d % n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A123328.P14453733246405191905

/-! ## A123328.P4778575978198916154

`a(n-2)+2*n-∑{d}[n, #]+n+1` with `a(0)=1, a(1)=3`
-/

namespace A123328.P4778575978198916154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + ((2 * n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (n + 1 : ℤ))

end

end A123328.P4778575978198916154

/-! ## A123328.P2123176689811376885

`A121896(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A123328.P2123176689811376885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121896 (n + 1) - a (n - 1)

end

end A123328.P2123176689811376885

/-!
# A123329: Let M be the matrix defined in A111490. Sequence gives M(2,1)-M(1,2), M(2,1)+M(3,1)+M(3,2)-M(1,2)-M(1,3)-M(2,3), etc.

The programs for A123329, the canonical program `A123329.P16141024750467098144` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123329 has offset 0).

The definition of A123329 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123329.P16141024750467098144

`C(n+2, 3)-A072481(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123329

/-- `C(n+2, 3)-A072481(n+1)` -/
def P16141024750467098144.Spec : Prop :=
  ∀ n, P16141024750467098144.a n = A123329 n

theorem P16141024750467098144.correct : P16141024750467098144.Spec := by
  intro n
  simp only [A123329]

end A123329

/-! ## A123329.P17462712518793655788

`∑[∑[∑{d}[n+1, #]-(n+1)]]`
-/

namespace A123329.P17462712518793655788
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P17462712518793655788

namespace A123329

/-- `∑[∑[∑{d}[n+1, #]-(n+1)]]` -/
def P17462712518793655788.Spec : Prop :=
  ∀ n, P17462712518793655788.a n = A123329 n

end A123329

/-! ## A123329.P7223671905888572310

`∑[∑[∑{d}[n+1, #%(n+1)]]]`
-/

namespace A123329.P7223671905888572310
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P7223671905888572310

namespace A123329

/-- `∑[∑[∑{d}[n+1, #%(n+1)]]]` -/
def P7223671905888572310.Spec : Prop :=
  ∀ n, (P7223671905888572310.a n : ℤ) = A123329 n

end A123329

/-! ## A123329.P16690227001871533885

`∑[A153485(n+1)]`
-/

namespace A123329.P16690227001871533885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P16690227001871533885

namespace A123329

/-- `∑[A153485(n+1)]` -/
def P16690227001871533885.Spec : Prop :=
  ∀ n, P16690227001871533885.a n = A123329 n

end A123329

/-! ## A123329.P5932716822449199486

`∑[∑[A001065(n+1)]]`
-/

namespace A123329.P5932716822449199486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P5932716822449199486

namespace A123329

/-- `∑[∑[A001065(n+1)]]` -/
def P5932716822449199486.Spec : Prop :=
  ∀ n, P5932716822449199486.a n = A123329 n

end A123329

/-! ## A123329.P14434219641066256069

`∑[A244049(n+1)+n]`
-/

namespace A123329.P14434219641066256069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P14434219641066256069

namespace A123329

/-- `∑[A244049(n+1)+n]` -/
def P14434219641066256069.Spec : Prop :=
  ∀ n, P14434219641066256069.a n = A123329 n

end A123329

/-! ## A123329.P2053722248136523567

`∑[∑[A173455(n+1)]-1]`
-/

namespace A123329.P2053722248136523567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P2053722248136523567

namespace A123329

/-- `∑[∑[A173455(n+1)]-1]` -/
def P2053722248136523567.Spec : Prop :=
  ∀ n, P2053722248136523567.a n = A123329 n

end A123329

/-! ## A123329.P16346605633439548568

`∑[∑[A091818(n+1)/2]]`
-/

namespace A123329.P16346605633439548568
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P16346605633439548568

namespace A123329

/-- `∑[∑[A091818(n+1)/2]]` -/
def P16346605633439548568.Spec : Prop :=
  ∀ n, P16346605633439548568.a n = (A123329 n : ℚ)

end A123329

/-! ## A123329.P16201737210197284449

`∑[∑[A048050(n+1)]+n]`
-/

namespace A123329.P16201737210197284449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P16201737210197284449

namespace A123329

/-- `∑[∑[A048050(n+1)]+n]` -/
def P16201737210197284449.Spec : Prop :=
  ∀ n, P16201737210197284449.a n = A123329 n

end A123329

/-! ## A123329.P4277534786955616820

`∑[∑[A237588(n+1)+n]]`
-/

namespace A123329.P4277534786955616820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P4277534786955616820

namespace A123329

/-- `∑[∑[A237588(n+1)+n]]` -/
def P4277534786955616820.Spec : Prop :=
  ∀ n, P4277534786955616820.a n = A123329 n

end A123329

/-! ## A123329.P1910261436189712361

`∑[∑[n]-A004125(n+1)]`
-/

namespace A123329.P1910261436189712361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A004125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P1910261436189712361

namespace A123329

/-- `∑[∑[n]-A004125(n+1)]` -/
def P1910261436189712361.Spec : Prop :=
  ∀ n, P1910261436189712361.a n = A123329 n

end A123329

/-! ## A123329.P10614726550777323828

`∑[∑[A039653(n+1)-n]]`
-/

namespace A123329.P10614726550777323828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P10614726550777323828

namespace A123329

/-- `∑[∑[A039653(n+1)-n]]` -/
def P10614726550777323828.Spec : Prop :=
  ∀ n, P10614726550777323828.a n = A123329 n

end A123329

/-! ## A123329.P7105165718372224682

`∑[∑[n]]-A072481(n+1)`
-/

namespace A123329.P7105165718372224682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A072481 (n + 1)

end

end A123329.P7105165718372224682

namespace A123329

/-- `∑[∑[n]]-A072481(n+1)` -/
def P7105165718372224682.Spec : Prop :=
  ∀ n, P7105165718372224682.a n = A123329 n

end A123329

/-! ## A123329.P7626008906722529271

`∑[∑[n-A235796(n+1)]]`
-/

namespace A123329.P7626008906722529271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A235796 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P7626008906722529271

namespace A123329

/-- `∑[∑[n-A235796(n+1)]]` -/
def P7626008906722529271.Spec : Prop :=
  ∀ n, P7626008906722529271.a n = A123329 n

end A123329

/-! ## A123329.P16632968648937128562

`∑[(n+1)²-A354801(n+1)]`
-/

namespace A123329.P16632968648937128562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A354801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P16632968648937128562

namespace A123329

/-- `∑[(n+1)²-A354801(n+1)]` -/
def P16632968648937128562.Spec : Prop :=
  ∀ n, P16632968648937128562.a n = A123329 n

end A123329

/-! ## A123329.P8264880278580356930

`∑[∑[A000203(n+1)-(n+1)]]`
-/

namespace A123329.P8264880278580356930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P8264880278580356930

namespace A123329

/-- `∑[∑[A000203(n+1)-(n+1)]]` -/
def P8264880278580356930.Spec : Prop :=
  ∀ n, P8264880278580356930.a n = A123329 n

end A123329

/-! ## A123329.P2237488079926940196

`∑[∑[n+1-A033879(n+1)]]`
-/

namespace A123329.P2237488079926940196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P2237488079926940196

namespace A123329

/-- `∑[∑[n+1-A033879(n+1)]]` -/
def P2237488079926940196.Spec : Prop :=
  ∀ n, P2237488079926940196.a n = A123329 n

end A123329

/-! ## A123329.P1734001653438253716

`∑[∑[∑{d}[n+1, #-A000010(#)]]]`
-/

namespace A123329.P1734001653438253716
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - A000010 d)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P1734001653438253716

namespace A123329

/-- `∑[∑[∑{d}[n+1, #-A000010(#)]]]` -/
def P1734001653438253716.Spec : Prop :=
  ∀ n, P1734001653438253716.a n = A123329 n

end A123329

/-! ## A123329.P6428157841442974722

`∑[∑[A155085(n+1)-2*(n+1)]]`
-/

namespace A123329.P6428157841442974722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (2 * (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P6428157841442974722

namespace A123329

/-- `∑[∑[A155085(n+1)-2*(n+1)]]` -/
def P6428157841442974722.Spec : Prop :=
  ∀ n, P6428157841442974722.a n = A123329 n

end A123329

/-! ## A123329.P8724825395556327293

`∑[∑[A245092(2*n+1)-(n+1)]]`
-/

namespace A123329.P8724825395556327293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123329.P8724825395556327293

namespace A123329

/-- `∑[∑[A245092(2*n+1)-(n+1)]]` -/
def P8724825395556327293.Spec : Prop :=
  ∀ n, P8724825395556327293.a n = A123329 n

end A123329

/-!
# A123330: Expansion of eta(q^2) * eta(q^3)^6 / (eta(q)^2 * eta(q^6)^3) in powers of q.

The programs for A123330, there is no canonical definition to state claims against.
-/

/-! ## A123330.P886193010371843111

`(-1)^n*A113973(n)`
-/

namespace A123330.P886193010371843111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113973 n

end

end A123330.P886193010371843111

/-! ## A123330.P15185815205947716202

`abs(A113973(n))`
-/

namespace A123330.P15185815205947716202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113973 n|

end

end A123330.P15185815205947716202

/-! ## A123330.P6724272024581793440

`A217219(n)+A193514(n)`
-/

namespace A123330.P6724272024581793440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 n + A193514 n

end

end A123330.P6724272024581793440

/-! ## A123330.P2003426765604533639

`A193514(n)/A131713(n)`
-/

namespace A123330.P2003426765604533639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193514 n : ℚ) / (A131713 n : ℚ)

end

end A123330.P2003426765604533639

/-! ## A123330.P14193078428612009673

`gcd(A000038(n), A113973(n))`
-/

namespace A123330.P14193078428612009673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A113973 n)

end

end A123330.P14193078428612009673

/-! ## A123330.P15529368877406015425

`gcd(A004016(n), A193514(n))`
-/

namespace A123330.P15529368877406015425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004016 n) (A193514 n)

end

end A123330.P15529368877406015425

/-! ## A123330.P6699836192449135074

`lcm(A000034(n), A113973(n))`
-/

namespace A123330.P6699836192449135074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A113973 n)

end

end A123330.P6699836192449135074

/-! ## A123330.P12829660992527151628

`gcd(A193514(n)+A033716(n), A033716(n))`
-/

namespace A123330.P12829660992527151628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193514 n + A033716 n) (A033716 n)

end

end A123330.P12829660992527151628

/-! ## A123330.P15640296661877475685

`A193514(3*n)`
-/

namespace A123330.P15640296661877475685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193514 (3 * n)

end

end A123330.P15640296661877475685

/-! ## A123330.P18178343676991981039

`A113973(n*A000034(n)²)`
-/

namespace A123330.P18178343676991981039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 ((n : ℤ) * A000034 n ^ 2).toNat

end

end A123330.P18178343676991981039

/-! ## A123330.P10277884738602771156

`A113973(4*n)`
-/

namespace A123330.P10277884738602771156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 (4 * n)

end

end A123330.P10277884738602771156

/-!
# A123331: Expansion of (c(q)^2/(3c(q^2))-1)/2 in powers of q where c(q) is a cubic AGM function.

The programs for A123331, the canonical program `A123331.P9518979506076851162` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123331 has offset 1).

The definition of A123331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123331.P14737965292189471890

`∑{d}[n+1, round(sin(#%6))]`
-/

namespace A123331.P14737965292189471890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.sin ((d % 6 : ℕ) : ℝ))

end

end A123331.P14737965292189471890

namespace A123331

/-- `∑{d}[n+1, round(sin(#%6))]` -/
def P14737965292189471890.Spec : Prop :=
  ∀ n, P14737965292189471890.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P11084229744892113679

`∑{d}[n+1, round(cos((#-1)%6))]`
-/

namespace A123331.P11084229744892113679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.cos (Int.tmod ((d : ℤ) - 1) 6 : ℝ))

end

end A123331.P11084229744892113679

namespace A123331

/-- `∑{d}[n+1, round(cos((#-1)%6))]` -/
def P11084229744892113679.Spec : Prop :=
  ∀ n, P11084229744892113679.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P13644188263659214871

`abs(A113661(n+1))`
-/

namespace A123331.P13644188263659214871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113661 (n + 1)|

end

end A123331.P13644188263659214871

namespace A123331

/-- `abs(A113661(n+1))` -/
def P13644188263659214871.Spec : Prop :=
  ∀ n, P13644188263659214871.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P9518979506076851162

`abs(A122860(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A123331

/-- `abs(A122860(n+1))` -/
def P9518979506076851162.Spec : Prop :=
  ∀ n, P9518979506076851162.a n = A123331 (n + 1)

theorem P9518979506076851162.correct : P9518979506076851162.Spec := by
  intro n
  simp only [A123331, Nat.add_sub_cancel]

end A123331

/-! ## A123331.P3352536100157686448

`∑{d}[n+1, A010892(#-1)]`
-/

namespace A123331.P3352536100157686448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010892 (d - 1)

end

end A123331.P3352536100157686448

namespace A123331

/-- `∑{d}[n+1, A010892(#-1)]` -/
def P3352536100157686448.Spec : Prop :=
  ∀ n, P3352536100157686448.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P4435395406945663371

`A113660((n+1)/4^val(n+1, 4))/6`
-/

namespace A123331.P4435395406945663371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat : ℚ) / 6

end

end A123331.P4435395406945663371

namespace A123331

/-- `A113660((n+1)/4^val(n+1, 4))/6` -/
def P4435395406945663371.Spec : Prop :=
  ∀ n, P4435395406945663371.a n = (A123331 (n + 1) : ℚ)

end A123331

/-! ## A123331.P5419234111218225275

`A113661(A065883(n+1))`
-/

namespace A123331.P5419234111218225275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113661 (A065883 (n + 1)).toNat

end

end A123331.P5419234111218225275

namespace A123331

/-- `A113661(A065883(n+1))` -/
def P5419234111218225275.Spec : Prop :=
  ∀ n, P5419234111218225275.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P15703618986515734388

`gcd(A000038(n), A113661(n+1))`
-/

namespace A123331.P15703618986515734388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A113661 (n + 1))

end

end A123331.P15703618986515734388

namespace A123331

/-- `gcd(A000038(n), A113661(n+1))` -/
def P15703618986515734388.Spec : Prop :=
  ∀ n, (P15703618986515734388.a n : ℤ) = A123331 (n + 1)

end A123331

/-! ## A123331.P10175237437935539843

`gcd(A099894(n), A122860(n+1))`
-/

namespace A123331.P10175237437935539843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099894 n) (A122860 (n + 1))

end

end A123331.P10175237437935539843

namespace A123331

/-- `gcd(A099894(n), A122860(n+1))` -/
def P10175237437935539843.Spec : Prop :=
  ∀ n, (P10175237437935539843.a n : ℤ) = A123331 (n + 1)

end A123331

/-! ## A123331.P11774161109833559939

`lcm(A033999(n), A122860(n+1))`
-/

namespace A123331.P11774161109833559939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A122860 (n + 1))

end

end A123331.P11774161109833559939

namespace A123331

/-- `lcm(A033999(n), A122860(n+1))` -/
def P11774161109833559939.Spec : Prop :=
  ∀ n, (P11774161109833559939.a n : ℤ) = A123331 (n + 1)

end A123331

/-! ## A123331.P17684004981148514895

`A364014(n+1)+A364011(n+1)`
-/

namespace A123331.P17684004981148514895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364014 (n + 1) + A364011 (n + 1)

end

end A123331.P17684004981148514895

namespace A123331

/-- `A364014(n+1)+A364011(n+1)` -/
def P17684004981148514895.Spec : Prop :=
  ∀ n, P17684004981148514895.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P15958776133005464366

`A035178(n+1)*A056832(n+1)`
-/

namespace A123331.P15958776133005464366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A056832 (n + 1)

end

end A123331.P15958776133005464366

namespace A123331

/-- `A035178(n+1)*A056832(n+1)` -/
def P15958776133005464366.Spec : Prop :=
  ∀ n, P15958776133005464366.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P7557640573824829194

`A035178(n+1)*A060236(n+1)`
-/

namespace A123331.P7557640573824829194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A060236 (n + 1)

end

end A123331.P7557640573824829194

namespace A123331

/-- `A035178(n+1)*A060236(n+1)` -/
def P7557640573824829194.Spec : Prop :=
  ∀ n, P7557640573824829194.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P16377148566577282845

`A105931(n+1)*A113447(n+1)`
-/

namespace A123331.P16377148566577282845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1) * A113447 (n + 1)

end

end A123331.P16377148566577282845

namespace A123331

/-- `A105931(n+1)*A113447(n+1)` -/
def P16377148566577282845.Spec : Prop :=
  ∀ n, P16377148566577282845.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P9600262900848271425

`A035178(n+1)*A390692(n+1)`
-/

namespace A123331.P9600262900848271425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A390692 (n + 1)

end

end A123331.P9600262900848271425

namespace A123331

/-- `A035178(n+1)*A390692(n+1)` -/
def P9600262900848271425.Spec : Prop :=
  ∀ n, P9600262900848271425.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P7202937166403267629

`A122860(n+1)*A309873(n+1)`
-/

namespace A123331.P7202937166403267629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122860 (n + 1) * A309873 (n + 1)

end

end A123331.P7202937166403267629

namespace A123331

/-- `A122860(n+1)*A309873(n+1)` -/
def P7202937166403267629.Spec : Prop :=
  ∀ n, P7202937166403267629.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P8284165446767363925

`A122860(n+1)*A343785(n+1)`
-/

namespace A123331.P8284165446767363925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122860 (n + 1) * A343785 (n + 1)

end

end A123331.P8284165446767363925

namespace A123331

/-- `A122860(n+1)*A343785(n+1)` -/
def P8284165446767363925.Spec : Prop :=
  ∀ n, P8284165446767363925.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P9131697552799937241

`A256232(n+1)+2*A364014(n+1)`
-/

namespace A123331.P9131697552799937241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256232 (n + 1) + 2 * A364014 (n + 1)

end

end A123331.P9131697552799937241

namespace A123331

/-- `A256232(n+1)+2*A364014(n+1)` -/
def P9131697552799937241.Spec : Prop :=
  ∀ n, P9131697552799937241.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P17172072417196116675

`(2-A035263(n+1))*A035178(n+1)`
-/

namespace A123331.P17172072417196116675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A035263 (n + 1)) * A035178 (n + 1)

end

end A123331.P17172072417196116675

namespace A123331

/-- `(2-A035263(n+1))*A035178(n+1)` -/
def P17172072417196116675.Spec : Prop :=
  ∀ n, P17172072417196116675.a n = A123331 (n + 1)

end A123331

/-! ## A123331.P616773131116166148

`2*A364011(n+1)-A256232(n+1)`
-/

namespace A123331.P616773131116166148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364011 (n + 1) - A256232 (n + 1)

end

end A123331.P616773131116166148

namespace A123331

/-- `2*A364011(n+1)-A256232(n+1)` -/
def P616773131116166148.Spec : Prop :=
  ∀ n, P616773131116166148.a n = A123331 (n + 1)

end A123331

/-!
# A123332: a(n) = 2^n*(Gamma(n+1/2)/Gamma(1/2) + (n-1)!).

The programs for A123332, there is no canonical definition to state claims against.
-/

/-! ## A123332.P1567026449973423666

`∏[abs(1-2*n)]+2*n*a(n-1)` with `a(0)=3`
-/

namespace A123332.P1567026449973423666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ) * a (n - 1)

end

end A123332.P1567026449973423666

/-! ## A123332.P14272957171749838868

`A076051(2*n+1)+2^n*n!`
-/

namespace A123332.P14272957171749838868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076051 (2 * n + 1) + (2 ^ n * Nat.factorial n : ℤ)

end

end A123332.P14272957171749838868

/-! ## A123332.P17889340666057114712

`∏[abs(1-2*n)]+a(n-1)*A005843(n)` with `a(0)=3`
-/

namespace A123332.P17889340666057114712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1) * A005843 n

end

end A123332.P17889340666057114712

/-! ## A123332.P4825609621348232310

`∏[abs(1-2*n)]+2*n*a(A023443(n))` with `a(0)=3`
-/

namespace A123332.P4825609621348232310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2 * ((n : ℤ) * a (A023443 n).toNat)

end

end A123332.P4825609621348232310

/-! ## A123332.P2042507333071233392

`A066318(n+1)+∏[A005408(n)]`
-/

namespace A123332.P2042507333071233392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066318 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123332.P2042507333071233392

/-! ## A123332.P11781091518687107901

`A066318(n+1)+A001147(n+1)`
-/

namespace A123332.P11781091518687107901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066318 (n + 1) + A001147 (n + 1)

end

end A123332.P11781091518687107901

/-! ## A123332.P14852020450671733803

`A001147(n+1)+2*A000165(n)`
-/

namespace A123332.P14852020450671733803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) + 2 * A000165 n

end

end A123332.P14852020450671733803

/-! ## A123332.P17243222155159140292

`A076051(2*n+1)+A000165(n)`
-/

namespace A123332.P17243222155159140292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076051 (2 * n + 1) + A000165 n

end

end A123332.P17243222155159140292

/-! ## A123332.P17950147941148961247

`A001147(n+1)+2*A006882(2*n)`
-/

namespace A123332.P17950147941148961247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) + 2 * A006882 (2 * n)

end

end A123332.P17950147941148961247

/-! ## A123332.P10786688411210787456

`A001147(n+1)+2*A037223(2*n)`
-/

namespace A123332.P10786688411210787456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) + 2 * A037223 (2 * n)

end

end A123332.P10786688411210787456

/-!
# A123333: a(n) = 3^n*(Gamma(n+1/3)/Gamma(1/3) + (n-1)!).

The programs for A123333, there is no canonical definition to state claims against.
-/

/-! ## A123333.P8234406711606230579

`∏[a(n-1)+3]+3^(n+1)*n!` with `a(0)=1`
-/

namespace A123333.P8234406711606230579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 3 ^ (n + 1) * Nat.factorial n

end

end A123333.P8234406711606230579

/-! ## A123333.P3775971104626395744

`A032179(n+1)+∏[A016777(n)]`
-/

namespace A123333.P3775971104626395744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032179 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123333.P3775971104626395744

/-! ## A123333.P7317493867785667814

`A032179(n+1)+record[A136214(n)]`
-/

namespace A123333.P7317493867785667814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032179 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123333.P7317493867785667814

/-! ## A123333.P14751124327389494073

`A032179(n+1)+record[A136215(n)]`
-/

namespace A123333.P14751124327389494073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032179 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123333.P14751124327389494073

/-! ## A123333.P9182224936731072791

`A032179(n+1)+A007559(n+1)`
-/

namespace A123333.P9182224936731072791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032179 (n + 1) + A007559 (n + 1)

end

end A123333.P9182224936731072791

/-!
# A123334: a(n) = 4^n*(Gamma(n+1/4)/Gamma(1/4) + (n-1)!).

The programs for A123334, there is no canonical definition to state claims against.
-/

/-! ## A123334.P6158624254755743759

`A007696(n+1)+A000302(n+1)*A000142(n)`
-/

namespace A123334.P6158624254755743759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007696 (n + 1) + A000302 (n + 1) * A000142 n

end

end A123334.P6158624254755743759

/-!
# A123335: a(n) = -2*a(n-1) + a(n-2) for n>1, a(0)=1, a(1)=-1.

The programs for A123335, the canonical program `A123335.P5525109471307577526` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123335 has offset 0).

The definition of A123335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*a(n-1)+a(n-2)` (program `A123335.P5525109471307577526`, by `A123335.P5525109471307577526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123335.P5525109471307577526

`-2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123335

/-- `-2*a(n-1)+a(n-2)` -/
def P5525109471307577526.Spec : Prop :=
  ∀ n, P5525109471307577526.a n = A123335 n

theorem P5525109471307577526.correct : P5525109471307577526.Spec := by
  intro n
  simp only [A123335]

end A123335

/-! ## A123335.P2835725696675414482

`(-1)^n*A001333(n)`
-/

namespace A123335.P2835725696675414482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001333 n

end

end A123335.P2835725696675414482

namespace A123335

/-- `(-1)^n*A001333(n)` -/
def P2835725696675414482.Spec : Prop :=
  ∀ n, P2835725696675414482.a n = A123335 n

end A123335

/-! ## A123335.P13439230678139903357

`ogf((1+x)/(1+2x-x^2))`
-/

namespace A123335.P13439230678139903357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 2, -1] n

end

end A123335.P13439230678139903357

namespace A123335

/-- `ogf((1+x)/(1+2x-x^2))` -/
def P13439230678139903357.Spec : Prop :=
  ∀ n, P13439230678139903357.a n = A123335 n

end A123335

/-! ## A123335.P11609053632411902380

`a(n-2)-2*a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A123335.P11609053632411902380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) - 2 * a (n - 1)

end

end A123335.P11609053632411902380

namespace A123335

/-- `a(n-2)-2*a(n-1)` -/
def P11609053632411902380.Spec : Prop :=
  ∀ n, P11609053632411902380.a n = A123335 n

end A123335

/-! ## A123335.P2614818439927563164

`a(n-2)-a(n-1)-a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A123335.P2614818439927563164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) - a (n - 1) - a (n - 1)

end

end A123335.P2614818439927563164

namespace A123335

/-- `a(n-2)-a(n-1)-a(n-1)` -/
def P2614818439927563164.Spec : Prop :=
  ∀ n, P2614818439927563164.a n = A123335 n

end A123335

/-! ## A123335.P3031904216649210821

`Δ[-A215936(n+1)]`
-/

namespace A123335.P3031904216649210821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A215936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123335.P3031904216649210821

namespace A123335

/-- `Δ[-A215936(n+1)]` -/
def P3031904216649210821.Spec : Prop :=
  ∀ n, P3031904216649210821.a n = A123335 n

end A123335

/-! ## A123335.P4418929665325482679

`A001333(n)*A033999(n)`
-/

namespace A123335.P4418929665325482679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A033999 n

end

end A123335.P4418929665325482679

namespace A123335

/-- `A001333(n)*A033999(n)` -/
def P4418929665325482679.Spec : Prop :=
  ∀ n, P4418929665325482679.a n = A123335 n

end A123335

/-! ## A123335.P12815304879331505418

`xor(A033999(n), A293004(n))`
-/

namespace A123335.P12815304879331505418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n) (A293004 n)

end

end A123335.P12815304879331505418

namespace A123335

/-- `xor(A033999(n), A293004(n))` -/
def P12815304879331505418.Spec : Prop :=
  ∀ n, P12815304879331505418.a n = A123335 n

end A123335

/-! ## A123335.P990641933968491121

`A001333(n)*A165326(n+1)`
-/

namespace A123335.P990641933968491121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A165326 (n + 1)

end

end A123335.P990641933968491121

namespace A123335

/-- `A001333(n)*A165326(n+1)` -/
def P990641933968491121.Spec : Prop :=
  ∀ n, P990641933968491121.a n = A123335 n

end A123335

/-! ## A123335.P18257289015004975569

`A001333(n)/A033999(n+2)`
-/

namespace A123335.P18257289015004975569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A123335.P18257289015004975569

namespace A123335

/-- `A001333(n)/A033999(n+2)` -/
def P18257289015004975569.Spec : Prop :=
  ∀ n, P18257289015004975569.a n = (A123335 n : ℚ)

end A123335

/-! ## A123335.P13727315620615597687

`A001333(n)*A056594(2*n)`
-/

namespace A123335.P13727315620615597687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A056594 (2 * n)

end

end A123335.P13727315620615597687

namespace A123335

/-- `A001333(n)*A056594(2*n)` -/
def P13727315620615597687.Spec : Prop :=
  ∀ n, P13727315620615597687.a n = A123335 n

end A123335

/-! ## A123335.P5178988318029911674

`A001333(n)*A057077(2*n)`
-/

namespace A123335.P5178988318029911674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A057077 (2 * n)

end

end A123335.P5178988318029911674

namespace A123335

/-- `A001333(n)*A057077(2*n)` -/
def P5178988318029911674.Spec : Prop :=
  ∀ n, P5178988318029911674.a n = A123335 n

end A123335

/-! ## A123335.P5705145286238481307

`A033999(n)*A119016(2*n)`
-/

namespace A123335.P5705145286238481307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A119016 (2 * n)

end

end A123335.P5705145286238481307

namespace A123335

/-- `A033999(n)*A119016(2*n)` -/
def P5705145286238481307.Spec : Prop :=
  ∀ n, P5705145286238481307.a n = A123335 n

end A123335

/-! ## A123335.P18415880516726701765

`A215936(n+1)-A215936(n+2)`
-/

namespace A123335.P18415880516726701765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 1) - A215936 (n + 2)

end

end A123335.P18415880516726701765

namespace A123335

/-- `A215936(n+1)-A215936(n+2)` -/
def P18415880516726701765.Spec : Prop :=
  ∀ n, P18415880516726701765.a n = A123335 n

end A123335

/-! ## A123335.P14128889799376358444

`A002965(2*n+1)*A033999(n)`
-/

namespace A123335.P14128889799376358444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n + 1) * A033999 n

end

end A123335.P14128889799376358444

namespace A123335

/-- `A002965(2*n+1)*A033999(n)` -/
def P14128889799376358444.Spec : Prop :=
  ∀ n, P14128889799376358444.a n = A123335 n

end A123335

/-! ## A123335.P9450876645550737114

`A001333(n)*A112030(2*n+1)`
-/

namespace A123335.P9450876645550737114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A112030 (2 * n + 1)

end

end A123335.P9450876645550737114

namespace A123335

/-- `A001333(n)*A112030(2*n+1)` -/
def P9450876645550737114.Spec : Prop :=
  ∀ n, P9450876645550737114.a n = A123335 n

end A123335

/-! ## A123335.P9948069275627181925

`(1-A010673(n))*A002965(2*n+1)`
-/

namespace A123335.P9948069275627181925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A002965 (2 * n + 1)

end

end A123335.P9948069275627181925

namespace A123335

/-- `(1-A010673(n))*A002965(2*n+1)` -/
def P9948069275627181925.Spec : Prop :=
  ∀ n, P9948069275627181925.a n = A123335 n

end A123335

/-! ## A123335.P364040156425866949

`A001333(n)-Δ[A001333(A052928(n))]`
-/

namespace A123335.P364040156425866949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - (f1 (n + 1) - f1 n)

end

end A123335.P364040156425866949

namespace A123335

/-- `A001333(n)-Δ[A001333(A052928(n))]` -/
def P364040156425866949.Spec : Prop :=
  ∀ n, P364040156425866949.a n = A123335 n

end A123335

/-! ## A123335.P13056678891185087149

`A001333(n)/(A078008(n)-A001045(n))`
-/

namespace A123335.P13056678891185087149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n : ℚ) / (A078008 n - A001045 n : ℚ)

end

end A123335.P13056678891185087149

namespace A123335

/-- `A001333(n)/(A078008(n)-A001045(n))` -/
def P13056678891185087149.Spec : Prop :=
  ∀ n, P13056678891185087149.a n = (A123335 n : ℚ)

end A123335

/-! ## A123335.P14774151973998303620

`A001333(n)/(A097075(n)-A097076(n))`
-/

namespace A123335.P14774151973998303620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n : ℚ) / (A097075 n - A097076 n : ℚ)

end

end A123335.P14774151973998303620

namespace A123335

/-- `A001333(n)/(A097075(n)-A097076(n))` -/
def P14774151973998303620.Spec : Prop :=
  ∀ n, P14774151973998303620.a n = (A123335 n : ℚ)

end A123335

/-!
# A123336: Values X satisfying the equation 3(X-Y)^4-16XY=0, where X>=Y.

The programs for A123336, the canonical program `A123336.P9956149420142184204` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123336 has offset 0).

The definition of A123336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123336.P9956149420142184204

`18*a(n-1)-58*a(n-2)+18*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=32, a(3)=405`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123336

/-- `18*a(n-1)-58*a(n-2)+18*a(n-3)-a(n-4)` -/
def P9956149420142184204.Spec : Prop :=
  ∀ n, P9956149420142184204.a n = A123336 n

theorem P9956149420142184204.correct : P9956149420142184204.Spec := by
  intro n
  simp only [A123336]

end A123336

/-! ## A123336.P4619957748692053212

`Δ[A101879(n)²]`
-/

namespace A123336.P4619957748692053212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123336.P4619957748692053212

namespace A123336

/-- `Δ[A101879(n)²]` -/
def P4619957748692053212.Spec : Prop :=
  ∀ n, P4619957748692053212.a n = A123336 n

end A123336

/-! ## A123336.P16928383329184113118

`A011944(n)+A001353(n)`
-/

namespace A123336.P16928383329184113118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n + A001353 n

end

end A123336.P16928383329184113118

namespace A123336

/-- `A011944(n)+A001353(n)` -/
def P16928383329184113118.Spec : Prop :=
  ∀ n, P16928383329184113118.a n = A123336 n

end A123336

/-! ## A123336.P439670887751720706

`A011944(n)-A106707(n)`
-/

namespace A123336.P439670887751720706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n - A106707 n

end

end A123336.P439670887751720706

namespace A123336

/-- `A011944(n)-A106707(n)` -/
def P439670887751720706.Spec : Prop :=
  ∀ n, P439670887751720706.a n = A123336 n

end A123336

/-! ## A123336.P17743246551314354569

`A001353(n)*A121401(n)`
-/

namespace A123336.P17743246551314354569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n * A121401 n

end

end A123336.P17743246551314354569

namespace A123336

/-- `A001353(n)*A121401(n)` -/
def P17743246551314354569.Spec : Prop :=
  ∀ n, P17743246551314354569.a n = A123336 n

end A123336

/-! ## A123336.P6709738553562298914

`abs(A106707(n)*A121401(n))`
-/

namespace A123336.P6709738553562298914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106707 n * A121401 n|

end

end A123336.P6709738553562298914

namespace A123336

/-- `abs(A106707(n)*A121401(n))` -/
def P6709738553562298914.Spec : Prop :=
  ∀ n, P6709738553562298914.a n = A123336 n

end A123336

/-! ## A123336.P3820566817662857011

`A011944(n)+sqrt(A098301(n))`
-/

namespace A123336.P3820566817662857011
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A011944 n : ℝ) + Real.sqrt (A098301 n : ℝ)

end

end A123336.P3820566817662857011

namespace A123336

/-- `A011944(n)+sqrt(A098301(n))` -/
def P3820566817662857011.Spec : Prop :=
  ∀ n, P3820566817662857011.a n = (A123336 n : ℝ)

end A123336

/-! ## A123336.P15363799415399405834

`(A001075(n)+1)*A001353(n)`
-/

namespace A123336.P15363799415399405834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001075 n + 1) * A001353 n

end

end A123336.P15363799415399405834

namespace A123336

/-- `(A001075(n)+1)*A001353(n)` -/
def P15363799415399405834.Spec : Prop :=
  ∀ n, P15363799415399405834.a n = A123336 n

end A123336

/-! ## A123336.P13231926874830307968

`A011944(n)+A002530(2*n)`
-/

namespace A123336.P13231926874830307968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n + A002530 (2 * n)

end

end A123336.P13231926874830307968

namespace A123336

/-- `A011944(n)+A002530(2*n)` -/
def P13231926874830307968.Spec : Prop :=
  ∀ n, P13231926874830307968.a n = A123336 n

end A123336

/-! ## A123336.P13749502696954540576

`(A092184(n)+2)*A001353(n)`
-/

namespace A123336.P13749502696954540576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092184 n + 2) * A001353 n

end

end A123336.P13749502696954540576

namespace A123336

/-- `(A092184(n)+2)*A001353(n)` -/
def P13749502696954540576.Spec : Prop :=
  ∀ n, P13749502696954540576.a n = A123336 n

end A123336

/-!
# A123338: a(0) = a(1) = 1. For n >= 2, a(n) = largest divisor of (a(n-1) + a(n-2)) which is coprime to n.

The programs for A123338, there is no canonical definition to state claims against.
-/

/-! ## A123338.P16977122111481681493

`gcd(A038572(A077168(n)), A293743(n))`
-/

namespace A123338.P16977122111481681493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038572 (A077168 n).toNat) (A293743 n)

end

end A123338.P16977122111481681493

/-! ## A123338.P10044493891091732140

`or(A000188(n+1), A163351(A019565(n)))`
-/

namespace A123338.P10044493891091732140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000188 (n + 1)) (A163351 (A019565 n).toNat)

end

end A123338.P10044493891091732140

/-!
# A123340: Least m such that 2^n+3^m is prime.

The programs for A123340, there is no canonical definition to state claims against.
-/

/-! ## A123340.P1443678782236288945

`A060576(A173854(n))*A159266(A028310(n))`
-/

namespace A123340.P1443678782236288945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A173854 n).toNat * A159266 (A028310 n).toNat

end

end A123340.P1443678782236288945

/-! ## A123340.P6528594840892306328

`A343985(A301676(n))%∑[char[2*n]]`
-/

namespace A123340.P6528594840892306328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343985 (A301676 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A123340.P6528594840892306328

/-! ## A123340.P14540586746512309925

`A069283(A333662(n+1)^A069283(n))`
-/

namespace A123340.P14540586746512309925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (SequenceMachineLib.roundAway ((A333662 (n + 1) : ℚ) ^ (A069283 n : ℤ))).toNat

end

end A123340.P14540586746512309925

/-! ## A123340.P4091223349710697339

`A171727(n+1)%A326948(A050315(n))`
-/

namespace A123340.P4091223349710697339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171727 (n + 1)) (A326948 (A050315 n).toNat)

end

end A123340.P4091223349710697339

/-! ## A123340.P6479243667344922914

`A001842(dr(A162467(n+1))*A038504(n))`
-/

namespace A123340.P6479243667344922914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 ((SequenceMachineLib.digitalRoot (A162467 (n + 1)) : ℤ) * A038504 n).toNat

end

end A123340.P6479243667344922914

/-!
# A123341: a(1) = 1, a(n) = Sum_{k=1..pi(n)} a(n-k) for n > 1, where pi(n) is the number of primes less than or equal to n.

The programs for A123341, there is no canonical definition to state claims against.
-/

/-! ## A123341.P340229282268322235

`floor(sqrt(A307668(∑[n+2]-1)))`
-/

namespace A123341.P340229282268322235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A307668 (∑ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A123341.P340229282268322235

/-! ## A123341.P6376317255992605789

`floor(sqrt(A318518(C(2*n, n)+2^n)))`
-/

namespace A123341.P6376317255992605789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A318518 (Nat.choose (2 * n) n + 2 ^ n))

end

end A123341.P6376317255992605789

/-! ## A123341.P12267976435038688148

`A172471(A045723(n))`
-/

namespace A123341.P12267976435038688148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A045723 n).toNat

end

end A123341.P12267976435038688148

/-! ## A123341.P8597474575086020792

`A251656(n+2)+A008966(A027856(n+1))`
-/

namespace A123341.P8597474575086020792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 2) + A008966 (A027856 (n + 1)).toNat

end

end A123341.P8597474575086020792

/-! ## A123341.P2882361667868977392

`A193627(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A123341.P2882361667868977392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  A193627 (a (n - 1)).toNat

end

end A123341.P2882361667868977392

/-!
# A123342: Least m such that 2^n+5^m is prime.

The programs for A123342, there is no canonical definition to state claims against.
-/

/-! ## A123342.P9831404446387689644

`and(A006530(A223480(n+1)), A186768(n))`
-/

namespace A123342.P9831404446387689644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A223480 (n + 1)).toNat) (A186768 n)

end

end A123342.P9831404446387689644

/-! ## A123342.P15773480380548735570

`A195257(n)%A000005(A045628(n))`
-/

namespace A123342.P15773480380548735570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195257 n) (A000005 (A045628 n).toNat)

end

end A123342.P15773480380548735570

/-!
# A123344: Expansion of (1+3*x)/(1+2*x).

The programs for A123344, the canonical program `A123344.P4808185925048640944` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123344 has offset 0).

The definition of A123344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1+2x))` (program `A123344.P4808185925048640944`, by `A123344.P4808185925048640944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123344.P4808185925048640944

`ogf((1+3x)/(1+2x))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123344

/-- `ogf((1+3x)/(1+2x))` -/
def P4808185925048640944.Spec : Prop :=
  ∀ n, P4808185925048640944.a n = A123344 n

theorem P4808185925048640944.correct : P4808185925048640944.Spec := by
  intro n
  simp only [A123344]

end A123344

/-! ## A123344.P17744657986677797035

`-(2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A123344.P17744657986677797035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -(2 * a (n - 1))

end

end A123344.P17744657986677797035

namespace A123344

/-- `-(2*a(n-1))` -/
def P17744657986677797035.Spec : Prop :=
  ∀ n, P17744657986677797035.a n = A123344 n

end A123344

/-! ## A123344.P9764878257130871167

`4*a(n-2)` with `a(0)=1, a(1)=1, a(2)=-2`
-/

namespace A123344.P9764878257130871167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2] fun n a =>
  4 * a (n - 2)

end

end A123344.P9764878257130871167

namespace A123344

/-- `4*a(n-2)` -/
def P9764878257130871167.Spec : Prop :=
  ∀ n, P9764878257130871167.a n = A123344 n

end A123344

/-! ## A123344.P11561918593816750061

`(-2)^floor(n²/(n+1))`
-/

namespace A123344.P11561918593816750061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋ : ℤ)

end

end A123344.P11561918593816750061

namespace A123344

/-- `(-2)^floor(n²/(n+1))` -/
def P11561918593816750061.Spec : Prop :=
  ∀ n, P11561918593816750061.a n = (A123344 n : ℚ)

end A123344

/-! ## A123344.P2730578747368887437

`a(n-1)/(1/2-1)` with `a(0)=1, a(1)=1`
-/

namespace A123344.P2730578747368887437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A123344.P2730578747368887437

namespace A123344

/-- `a(n-1)/(1/2-1)` -/
def P2730578747368887437.Spec : Prop :=
  ∀ n, P2730578747368887437.a n = (A123344 n : ℚ)

end A123344

/-! ## A123344.P1014485607173628165

`floor((C(3, n+2)-2)^(n-1))`
-/

namespace A123344.P1014485607173628165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose 3 (n + 2) : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A123344.P1014485607173628165

namespace A123344

/-- `floor((C(3, n+2)-2)^(n-1))` -/
def P1014485607173628165.Spec : Prop :=
  ∀ n, P1014485607173628165.a n = A123344 n

end A123344

/-! ## A123344.P13592504572729786209

`ceil((C(3, n+2)-2)^(n-1))`
-/

namespace A123344.P13592504572729786209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose 3 (n + 2) : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A123344.P13592504572729786209

namespace A123344

/-- `ceil((C(3, n+2)-2)^(n-1))` -/
def P13592504572729786209.Spec : Prop :=
  ∀ n, P13592504572729786209.a n = A123344 n

end A123344

/-! ## A123344.P13862301412094871975

`round((C(3, n+2)-2)^(n-1))`
-/

namespace A123344.P13862301412094871975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose 3 (n + 2) : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A123344.P13862301412094871975

namespace A123344

/-- `round((C(3, n+2)-2)^(n-1))` -/
def P13862301412094871975.Spec : Prop :=
  ∀ n, P13862301412094871975.a n = A123344 n

end A123344

/-! ## A123344.P13173220116083301612

`Δ[4-a(n-1)-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A123344.P13173220116083301612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123344.P13173220116083301612

namespace A123344

/-- `Δ[4-a(n-1)-a(n-1)]` -/
def P13173220116083301612.Spec : Prop :=
  ∀ n, P13173220116083301612.a n = A123344 n

end A123344

/-! ## A123344.P13612933196835545097

`char[1]-a(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A123344.P13612933196835545097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1) - a (n - 1)

end

end A123344.P13612933196835545097

namespace A123344

/-- `char[1]-a(n-1)-a(n-1)` -/
def P13612933196835545097.Spec : Prop :=
  ∀ n, P13612933196835545097.a n = A123344 n

end A123344

/-! ## A123344.P9670289688156915314

`1-floor(a(n-1)+a(n-1)+1)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123344.P9670289688156915314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 1) + (a (n - 1) + 1))

end

end A123344.P9670289688156915314

namespace A123344

/-- `1-floor(a(n-1)+a(n-1)+1)` -/
def P9670289688156915314.Spec : Prop :=
  ∀ n, P9670289688156915314.a n = A123344 n

end A123344

/-! ## A123344.P7300062154540188863

`floor(1-a(n-1)-a(n-1))-1` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123344.P7300062154540188863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (n - 1) - a (n - 1) - 1

end

end A123344.P7300062154540188863

namespace A123344

/-- `floor(1-a(n-1)-a(n-1))-1` -/
def P7300062154540188863.Spec : Prop :=
  ∀ n, P7300062154540188863.a n = A123344 n

end A123344

/-! ## A123344.P11466089840288889425

`a(n-2)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=-2`
-/

namespace A123344.P11466089840288889425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 1))

end

end A123344.P11466089840288889425

namespace A123344

/-- `a(n-2)+a(n-2)-a(n-1)` -/
def P11466089840288889425.Spec : Prop :=
  ∀ n, P11466089840288889425.a n = A123344 n

end A123344

/-! ## A123344.P18438807163877490461

`A122803((n-1)%(n+1))`
-/

namespace A123344.P18438807163877490461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A123344.P18438807163877490461

namespace A123344

/-- `A122803((n-1)%(n+1))` -/
def P18438807163877490461.Spec : Prop :=
  ∀ n, P18438807163877490461.a n = A123344 n

end A123344

/-! ## A123344.P9424111653902158812

`∏{e}[A006530(n+1), (#-3)^(n-1)]`
-/

namespace A123344.P9424111653902158812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A123344.P9424111653902158812

namespace A123344

/-- `∏{e}[A006530(n+1), (#-3)^(n-1)]` -/
def P9424111653902158812.Spec : Prop :=
  ∀ n, P9424111653902158812.a n = (A123344 n : ℚ)

end A123344

/-! ## A123344.P4867994887590522191

`∏{e}[A020639(n+1), (#-3)^(n-1)]`
-/

namespace A123344.P4867994887590522191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A123344.P4867994887590522191

namespace A123344

/-- `∏{e}[A020639(n+1), (#-3)^(n-1)]` -/
def P4867994887590522191.Spec : Prop :=
  ∀ n, P4867994887590522191.a n = (A123344 n : ℚ)

end A123344

/-! ## A123344.P1261499863381652331

`A117575(A004273(n))`
-/

namespace A123344.P1261499863381652331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (A004273 n).toNat

end

end A123344.P1261499863381652331

namespace A123344

/-- `A117575(A004273(n))` -/
def P1261499863381652331.Spec : Prop :=
  ∀ n, P1261499863381652331.a n = A123344 n

end A123344

/-! ## A123344.P10270575548655872740

`A122803(A289207(n+1))`
-/

namespace A123344.P10270575548655872740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A289207 (n + 1)).toNat

end

end A123344.P10270575548655872740

namespace A123344

/-- `A122803(A289207(n+1))` -/
def P10270575548655872740.Spec : Prop :=
  ∀ n, P10270575548655872740.a n = A123344 n

end A123344

/-! ## A123344.P8249257921101495167

`A122803(A028310(n)-1)`
-/

namespace A123344.P8249257921101495167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A028310 n - 1).toNat

end

end A123344.P8249257921101495167

namespace A123344

/-- `A122803(A028310(n)-1)` -/
def P8249257921101495167.Spec : Prop :=
  ∀ n, P8249257921101495167.a n = A123344 n

end A123344

/-! ## A123344.P6890566237997710520

`A011782(n)*A165326(n)`
-/

namespace A123344.P6890566237997710520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A165326 n

end

end A123344.P6890566237997710520

namespace A123344

/-- `A011782(n)*A165326(n)` -/
def P6890566237997710520.Spec : Prop :=
  ∀ n, P6890566237997710520.a n = A123344 n

end A123344

/-!
# A123345: Numbers containing all divisors in their binary representation.

The programs for A123345, there is no canonical definition to state claims against.
-/

/-! ## A123345.P90698510565818836

`eq[A000005(n+1), A093640(n+1)]+1`
-/

namespace A123345.P90698510565818836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123345.P90698510565818836

/-! ## A123345.P6696599671228677539

`eq[A000203(n+1), A355633(n+1)]+1`
-/

namespace A123345.P6696599671228677539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123345.P6696599671228677539

/-! ## A123345.P1080391909605286127

`lt[A032741(n+1), A093640(n+1)]+1`
-/

namespace A123345.P1080391909605286127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A123345.P1080391909605286127

/-! ## A123345.P14346942729583175668

`eq[abs(A143348(n+1)), A355633(n+1)]+1`
-/

namespace A123345.P14346942729583175668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123345.P14346942729583175668

/-! ## A123345.P11855316626373000894

`A093641(n+1)-A100910(A205478(n))`
-/

namespace A123345.P11855316626373000894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1) - A100910 (A205478 n).toNat

end

end A123345.P11855316626373000894

/-!
# A123346: Mirror image of the Bell triangle A011971, which is also called the Pierce triangle or Aitken's array.

The programs for A123346, there is no canonical definition to state claims against.
-/

/-! ## A123346.P7625353818928590082

`A182930(comp[∑[n]])`
-/

namespace A123346.P7625353818928590082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A123346.P7625353818928590082

/-! ## A123346.P5392821291575505333

`A011971(A061579(n))`
-/

namespace A123346.P5392821291575505333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A061579 n).toNat

end

end A123346.P5392821291575505333

/-! ## A123346.P11337450082897609537

`A011971(A038722(n+1)-1)`
-/

namespace A123346.P11337450082897609537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A038722 (n + 1) - 1).toNat

end

end A123346.P11337450082897609537

/-! ## A123346.P4206516592568743269

`A011972(2*A057944(n)-n)`
-/

namespace A123346.P4206516592568743269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (2 * A057944 n - (n : ℤ)).toNat

end

end A123346.P4206516592568743269

/-! ## A123346.P6020657596094637152

`A011971(A002024(n+1)²-(n+1))`
-/

namespace A123346.P6020657596094637152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A123346.P6020657596094637152

/-! ## A123346.P10027080284391837269

`A011971((A003056(n)+1)²-(n+1))`
-/

namespace A123346.P10027080284391837269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A123346.P10027080284391837269

/-! ## A123346.P15394337298740428663

`A011972(A057944(n)+A057944(n)-n)`
-/

namespace A123346.P15394337298740428663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A057944 n + (A057944 n - (n : ℤ))).toNat

end

end A123346.P15394337298740428663

/-! ## A123346.P7531512966073544606

`A011972(A057944(n)-(n-A057944(n)))`
-/

namespace A123346.P7531512966073544606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A057944 n - ((n : ℤ) - A057944 n)).toNat

end

end A123346.P7531512966073544606

/-! ## A123346.P3934464602521634427

`A182930(A014132(n+1)+1)+A182930(n+1)`
-/

namespace A123346.P3934464602521634427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A014132 (n + 1) + 1).toNat + A182930 (n + 1)

end

end A123346.P3934464602521634427

/-!
# A123347: Number of words of length n over the alphabet {1,2,3,4,5} such that 1 is not followed by an odd letter.

The programs for A123347, the canonical program `A123347.P5625107672900304284` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123347 has offset 0).

The definition of A123347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123347.P5625107672900304284

`4*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123347

/-- `4*a(n-1)+2*a(n-2)` -/
def P5625107672900304284.Spec : Prop :=
  ∀ n, (P5625107672900304284.a n : ℤ) = A123347 n

theorem P5625107672900304284.correct : P5625107672900304284.Spec := by
  intro n
  simp only [A123347]

end A123347

/-! ## A123347.P14021178896275425932

`A090017(n+1)+A090017(n)`
-/

namespace A123347.P14021178896275425932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1) + A090017 n

end

end A123347.P14021178896275425932

namespace A123347

/-- `A090017(n+1)+A090017(n)` -/
def P14021178896275425932.Spec : Prop :=
  ∀ n, P14021178896275425932.a n = A123347 n

end A123347

/-! ## A123347.P18392247566257654791

`ogf((1+x)/(1-4x-2x^2))`
-/

namespace A123347.P18392247566257654791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, -2] n

end

end A123347.P18392247566257654791

namespace A123347

/-- `ogf((1+x)/(1-4x-2x^2))` -/
def P18392247566257654791.Spec : Prop :=
  ∀ n, P18392247566257654791.a n = A123347 n

end A123347

/-! ## A123347.P9552697415333434440

`2*(2-(2*(1-a(n-1))-a(n-2)))` with `a(0)=1, a(1)=5`
-/

namespace A123347.P9552697415333434440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (2 - (2 * (1 - a (n - 1)) - a (n - 2)))

end

end A123347.P9552697415333434440

namespace A123347

/-- `2*(2-(2*(1-a(n-1))-a(n-2)))` -/
def P9552697415333434440.Spec : Prop :=
  ∀ n, P9552697415333434440.a n = A123347 n

end A123347

/-! ## A123347.P17930520492577426344

`A026655(2*n)`
-/

namespace A123347.P17930520492577426344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026655 (2 * n)

end

end A123347.P17930520492577426344

namespace A123347

/-- `A026655(2*n)` -/
def P17930520492577426344.Spec : Prop :=
  ∀ n, P17930520492577426344.a n = A123347 n

end A123347

/-! ## A123347.P14023104220002786442

`A026656(Δ[n²])`
-/

namespace A123347.P14023104220002786442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A123347.P14023104220002786442

namespace A123347

/-- `A026656(Δ[n²])` -/
def P14023104220002786442.Spec : Prop :=
  ∀ n, P14023104220002786442.a n = A123347 n

end A123347

/-! ## A123347.P7179829980448521110

`A123348(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A123347.P7179829980448521110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123348 n + 2 * a (n - 1)

end

end A123347.P7179829980448521110

namespace A123347

/-- `A123348(n)+2*a(n-1)` -/
def P7179829980448521110.Spec : Prop :=
  ∀ n, P7179829980448521110.a n = A123347 n

end A123347

/-! ## A123347.P7362359666598201356

`A123348(n)+A084059(n)`
-/

namespace A123347.P7362359666598201356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123348 n + A084059 n

end

end A123347.P7362359666598201356

namespace A123347

/-- `A123348(n)+A084059(n)` -/
def P7362359666598201356.Spec : Prop :=
  ∀ n, P7362359666598201356.a n = A123347 n

end A123347

/-! ## A123347.P4985595544914685276

`A164549(n)-A090017(n)`
-/

namespace A123347.P4985595544914685276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n - A090017 n

end

end A123347.P4985595544914685276

namespace A123347

/-- `A164549(n)-A090017(n)` -/
def P4985595544914685276.Spec : Prop :=
  ∀ n, P4985595544914685276.a n = A123347 n

end A123347

/-! ## A123347.P11741500939315956508

`A016116(n)*A142238(n)`
-/

namespace A123347.P11741500939315956508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A142238 n

end

end A123347.P11741500939315956508

namespace A123347

/-- `A016116(n)*A142238(n)` -/
def P11741500939315956508.Spec : Prop :=
  ∀ n, P11741500939315956508.a n = A123347 n

end A123347

/-! ## A123347.P9625453878921891081

`Δ[A090017(n)]-(A090017(n)-A123348(n))`
-/

namespace A123347.P9625453878921891081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A090017 n - A123348 n)

end

end A123347.P9625453878921891081

namespace A123347

/-- `Δ[A090017(n)]-(A090017(n)-A123348(n))` -/
def P9625453878921891081.Spec : Prop :=
  ∀ n, P9625453878921891081.a n = A123347 n

end A123347

/-! ## A123347.P18023659004155239588

`A000034(2*n)*A026656(A109613(2*n))`
-/

namespace A123347.P18023659004155239588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A026656 (A109613 (2 * n)).toNat

end

end A123347.P18023659004155239588

namespace A123347

/-- `A000034(2*n)*A026656(A109613(2*n))` -/
def P18023659004155239588.Spec : Prop :=
  ∀ n, P18023659004155239588.a n = A123347 n

end A123347

/-! ## A123347.P14874450029623326308

`((2+sqrt(6))^(n+1)+(2-sqrt(6))^(n+1))/4`
-/

namespace A123347.P14874450029623326308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (6 : ℝ)) ^ (n + 1) + (2 - Real.sqrt (6 : ℝ)) ^ (n + 1)) / 4

end

end A123347.P14874450029623326308

namespace A123347

/-- `((2+sqrt(6))^(n+1)+(2-sqrt(6))^(n+1))/4` -/
def P14874450029623326308.Spec : Prop :=
  ∀ n, P14874450029623326308.a n = (A123347 n : ℝ)

end A123347

/-! ## A123347.P47358016381932943

`1/2*A084059(n+1)`
-/

namespace A123347.P47358016381932943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A084059 (n + 1) : ℚ)

end

end A123347.P47358016381932943

namespace A123347

/-- `1/2*A084059(n+1)` -/
def P47358016381932943.Spec : Prop :=
  ∀ n, P47358016381932943.a n = (A123347 n : ℚ)

end A123347

/-! ## A123347.P15822613152980380572

`A335749(n)-A123348(n)`
-/

namespace A123347.P15822613152980380572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335749 n - A123348 n

end

end A123347.P15822613152980380572

namespace A123347

/-- `A335749(n)-A123348(n)` -/
def P15822613152980380572.Spec : Prop :=
  ∀ n, P15822613152980380572.a n = A123347 n

end A123347

/-! ## A123347.P9244496465858867408

`record[gcd(A026655(n), A026656(n))]`
-/

namespace A123347.P9244496465858867408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026655 n) (A026656 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123347.P9244496465858867408

namespace A123347

/-- `record[gcd(A026655(n), A026656(n))]` -/
def P9244496465858867408.Spec : Prop :=
  ∀ n, (P9244496465858867408.a n : ℤ) = A123347 n

end A123347

/-! ## A123347.P192941106682786966

`A021001(n)+A164549(n)-A084059(n+1)`
-/

namespace A123347.P192941106682786966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021001 n + (A164549 n - A084059 (n + 1))

end

end A123347.P192941106682786966

namespace A123347

/-- `A021001(n)+A164549(n)-A084059(n+1)` -/
def P192941106682786966.Spec : Prop :=
  ∀ n, P192941106682786966.a n = A123347 n

end A123347

/-! ## A123347.P13816991498583381894

`A164549(n+1)-(A268409(n)+A189741(n+2))`
-/

namespace A123347.P13816991498583381894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 (n + 1) - (A268409 n + A189741 (n + 2))

end

end A123347.P13816991498583381894

namespace A123347

/-- `A164549(n+1)-(A268409(n)+A189741(n+2))` -/
def P13816991498583381894.Spec : Prop :=
  ∀ n, P13816991498583381894.a n = A123347 n

end A123347

/-! ## A123347.P17874095774495707241

`A021001(n+1)-(A164549(n+1)+A021001(n))`
-/

namespace A123347.P17874095774495707241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021001 (n + 1) - (A164549 (n + 1) + A021001 n)

end

end A123347.P17874095774495707241

namespace A123347

/-- `A021001(n+1)-(A164549(n+1)+A021001(n))` -/
def P17874095774495707241.Spec : Prop :=
  ∀ n, P17874095774495707241.a n = A123347 n

end A123347

/-! ## A123347.P15225469679051132004

`A026975(2*n+1)-2*A026975(2*n)`
-/

namespace A123347.P15225469679051132004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026975 (2 * n + 1) - 2 * A026975 (2 * n)

end

end A123347.P15225469679051132004

namespace A123347

/-- `A026975(2*n+1)-2*A026975(2*n)` -/
def P15225469679051132004.Spec : Prop :=
  ∀ n, P15225469679051132004.a n = A123347 n

end A123347

/-!
# A123348: Kekulé numbers for certain benzenoids (see the Cyvin-Gutman book for details).

The programs for A123348, the canonical program `A123348.P7131483526110074031` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123348 has offset 0).

The definition of A123348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123348.P7131483526110074031

`3*A090017(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123348

/-- `3*A090017(n)` -/
def P7131483526110074031.Spec : Prop :=
  ∀ n, P7131483526110074031.a n = A123348 n

theorem P7131483526110074031.correct : P7131483526110074031.Spec := by
  intro n
  simp only [A123348]

end A123348

/-! ## A123348.P4529052033469097892

`ogf(3x/(1-4x-2x^2))`
-/

namespace A123348.P4529052033469097892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -4, -2] n

end

end A123348.P4529052033469097892

namespace A123348

/-- `ogf(3x/(1-4x-2x^2))` -/
def P4529052033469097892.Spec : Prop :=
  ∀ n, P4529052033469097892.a n = A123348 n

end A123348

/-! ## A123348.P12812306343852389594

`2*(a(n-2)+2*a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A123348.P12812306343852389594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (a (n - 2) + 2 * a (n - 1))

end

end A123348.P12812306343852389594

namespace A123348

/-- `2*(a(n-2)+2*a(n-1))` -/
def P12812306343852389594.Spec : Prop :=
  ∀ n, (P12812306343852389594.a n : ℤ) = A123348 n

end A123348

/-! ## A123348.P7088000484452398468

`2-2*(1-2*a(n-1)-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A123348.P7088000484452398468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 - 2 * (1 - 2 * a (n - 1) - a (n - 2))

end

end A123348.P7088000484452398468

namespace A123348

/-- `2-2*(1-2*a(n-1)-a(n-2))` -/
def P7088000484452398468.Spec : Prop :=
  ∀ n, P7088000484452398468.a n = A123348 n

end A123348

/-! ## A123348.P5630898655885564064

`(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` with `a(0)=0, a(1)=3`
-/

namespace A123348.P5630898655885564064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  (a (n - 1) + (a (n - 1) + a (n - 2))) / (1 - (1 : ℚ) / 2)

end

end A123348.P5630898655885564064

namespace A123348

/-- `(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` -/
def P5630898655885564064.Spec : Prop :=
  ∀ n, P5630898655885564064.a n = (A123348 n : ℚ)

end A123348

/-! ## A123348.P9713842527867168660

`A123347(n)-A084059(n)`
-/

namespace A123348.P9713842527867168660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123347 n - A084059 n

end

end A123348.P9713842527867168660

namespace A123348

/-- `A123347(n)-A084059(n)` -/
def P9713842527867168660.Spec : Prop :=
  ∀ n, P9713842527867168660.a n = A123348 n

end A123348

/-! ## A123348.P812367989095111314

`A164549(n)-Δ[A090017(n)]`
-/

namespace A123348.P812367989095111314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n - (f1 (n + 1) - f1 n)

end

end A123348.P812367989095111314

namespace A123348

/-- `A164549(n)-Δ[A090017(n)]` -/
def P812367989095111314.Spec : Prop :=
  ∀ n, P812367989095111314.a n = A123348 n

end A123348

/-! ## A123348.P7949675217302117594

`A026655(2*n)-A084059(n)`
-/

namespace A123348.P7949675217302117594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026655 (2 * n) - A084059 n

end

end A123348.P7949675217302117594

namespace A123348

/-- `A026655(2*n)-A084059(n)` -/
def P7949675217302117594.Spec : Prop :=
  ∀ n, P7949675217302117594.a n = A123348 n

end A123348

/-! ## A123348.P6345005403228605439

`A026655(2*n)-A026655(A004273(n))`
-/

namespace A123348.P6345005403228605439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026655 (2 * n) - A026655 (A004273 n).toNat

end

end A123348.P6345005403228605439

namespace A123348

/-- `A026655(2*n)-A026655(A004273(n))` -/
def P6345005403228605439.Spec : Prop :=
  ∀ n, P6345005403228605439.a n = A123348 n

end A123348

/-! ## A123348.P16100444167047881327

`A164549(n)-(A090017(n)+A084059(n))`
-/

namespace A123348.P16100444167047881327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n - (A090017 n + A084059 n)

end

end A123348.P16100444167047881327

namespace A123348

/-- `A164549(n)-(A090017(n)+A084059(n))` -/
def P16100444167047881327.Spec : Prop :=
  ∀ n, P16100444167047881327.a n = A123348 n

end A123348

/-! ## A123348.P13448277109299387638

`A090017(n+1)+A090017(n)-A084059(n)`
-/

namespace A123348.P13448277109299387638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1) + (A090017 n - A084059 n)

end

end A123348.P13448277109299387638

namespace A123348

/-- `A090017(n+1)+A090017(n)-A084059(n)` -/
def P13448277109299387638.Spec : Prop :=
  ∀ n, P13448277109299387638.a n = A123348 n

end A123348

/-! ## A123348.P15594483597528921559

`A164549(n)+A090017(n)-A090017(n+1)`
-/

namespace A123348.P15594483597528921559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n + (A090017 n - A090017 (n + 1))

end

end A123348.P15594483597528921559

namespace A123348

/-- `A164549(n)+A090017(n)-A090017(n+1)` -/
def P15594483597528921559.Spec : Prop :=
  ∀ n, P15594483597528921559.a n = A123348 n

end A123348

/-! ## A123348.P13581201889511498672

`A335749(n)-A123347(n)`
-/

namespace A123348.P13581201889511498672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335749 n - A123347 n

end

end A123348.P13581201889511498672

namespace A123348

/-- `A335749(n)-A123347(n)` -/
def P13581201889511498672.Spec : Prop :=
  ∀ n, P13581201889511498672.a n = A123348 n

end A123348

/-! ## A123348.P11832195907101419625

`2*A164549(n)-A021001(n)`
-/

namespace A123348.P11832195907101419625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164549 n - A021001 n

end

end A123348.P11832195907101419625

namespace A123348

/-- `2*A164549(n)-A021001(n)` -/
def P11832195907101419625.Spec : Prop :=
  ∀ n, P11832195907101419625.a n = A123348 n

end A123348

/-! ## A123348.P154405342223936893

`(A335749(n)-A084059(n))/2`
-/

namespace A123348.P154405342223936893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335749 n - A084059 n : ℚ) / 2

end

end A123348.P154405342223936893

namespace A123348

/-- `(A335749(n)-A084059(n))/2` -/
def P154405342223936893.Spec : Prop :=
  ∀ n, P154405342223936893.a n = (A123348 n : ℚ)

end A123348

/-!
# A123349: Square array of Kekulé numbers for the mirror-symmetrical chevrons Ch(m,n), read by antidiagonals (m,n >= 0).

The programs for A123349, there is no canonical definition to state claims against.
-/

/-! ## A123349.P7951175601734774248

`A110197((2*n)%comp[∑[n-1]])`
-/

namespace A123349.P7951175601734774248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110197 (2 * n % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A123349.P7951175601734774248

/-! ## A123349.P9453014378077837289

`∑{e}[A066119(n+1), #²]`
-/

namespace A123349.P9453014378077837289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A123349.P9453014378077837289

/-! ## A123349.P7928396816409941972

`A090885(A066119(n+1))`
-/

namespace A123349.P7928396816409941972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (A066119 (n + 1)).toNat

end

end A123349.P7928396816409941972

/-!
# A123350: a(n) = (n^4 + 2n^3 + 5n^2 + 4)/4.

The programs for A123350, the canonical program `A123350.P6960914957523859593` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123350 has offset 0).

The definition of A123350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123350.P5472875879182369184

`(n^4+2*n^3+5*n²+4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123350.P5472875879182369184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 2 * n ^ 3 + 5 * n ^ 2 + 4 : ℚ) / 4

end

end A123350.P5472875879182369184

namespace A123350

/-- `(n^4+2*n^3+5*n²+4)/4` -/
def P5472875879182369184.Spec : Prop :=
  ∀ n, P5472875879182369184.a n = (A123350 n : ℚ)

end A123350

/-! ## A123350.P6960914957523859593

`1+A117717(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123350

/-- `1+A117717(n+1)` -/
def P6960914957523859593.Spec : Prop :=
  ∀ n, P6960914957523859593.a n = A123350 n

theorem P6960914957523859593.correct : P6960914957523859593.Spec := by
  intro n
  simp only [A123350]

end A123350

/-! ## A123350.P2113658362856778084

`(C(n+1, 2)+1)²-n`
-/

namespace A123350.P2113658362856778084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) 2 + 1) ^ 2 : ℤ) - (n : ℤ)

end

end A123350.P2113658362856778084

namespace A123350

/-- `(C(n+1, 2)+1)²-n` -/
def P2113658362856778084.Spec : Prop :=
  ∀ n, P2113658362856778084.a n = A123350 n

end A123350

/-! ## A123350.P12344302726669355451

`∑[abs(1-n*or(2, n²))]`
-/

namespace A123350.P12344302726669355451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n * Nat.lor 2 (n ^ 2) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123350.P12344302726669355451

namespace A123350

/-- `∑[abs(1-n*or(2, n²))]` -/
def P12344302726669355451.Spec : Prop :=
  ∀ n, P12344302726669355451.a n = A123350 n

end A123350

/-! ## A123350.P7278963358219370335

`∑[a(n-1)-1]²-n` with `a(0)=-1, a(1)=-1`
-/

namespace A123350.P7278963358219370335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)

end

end A123350.P7278963358219370335

namespace A123350

/-- `∑[a(n-1)-1]²-n` -/
def P7278963358219370335.Spec : Prop :=
  ∀ n, P7278963358219370335.a n = A123350 n

end A123350

/-! ## A123350.P9536710308091799304

`a(n-1)+n*(n²+2)-1` with `a(0)=1`
-/

namespace A123350.P9536710308091799304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n * (n ^ 2 + 2) : ℤ) - 1)

end

end A123350.P9536710308091799304

namespace A123350

/-- `a(n-1)+n*(n²+2)-1` -/
def P9536710308091799304.Spec : Prop :=
  ∀ n, P9536710308091799304.a n = A123350 n

end A123350

/-! ## A123350.P6064010300204309220

`(∑[n]+1)*(C(n+1, 2)+1)-n`
-/

namespace A123350.P6064010300204309220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 1) * (Nat.choose (n + 1) 2 + 1) : ℕ) : ℤ) - (n : ℤ)

end

end A123350.P6064010300204309220

namespace A123350

/-- `(∑[n]+1)*(C(n+1, 2)+1)-n` -/
def P6064010300204309220.Spec : Prop :=
  ∀ n, P6064010300204309220.a n = A123350 n

end A123350

/-! ## A123350.P16576064873605526246

`abs((round(record[xor(1, n)²]/8)+1)²-n)`
-/

namespace A123350.P16576064873605526246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 8) + 1) ^ 2 - (n : ℤ)|

end

end A123350.P16576064873605526246

namespace A123350

/-- `abs((round(record[xor(1, n)²]/8)+1)²-n)` -/
def P16576064873605526246.Spec : Prop :=
  ∀ n, P16576064873605526246.a n = A123350 n

end A123350

/-! ## A123350.P2230674899651515004

`floor(a(n-1)+n*(n*n+2)-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123350.P2230674899651515004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n * (n * n + 2) : ℤ) - 1)

end

end A123350.P2230674899651515004

namespace A123350

/-- `floor(a(n-1)+n*(n*n+2)-1)` -/
def P2230674899651515004.Spec : Prop :=
  ∀ n, P2230674899651515004.a n = A123350 n

end A123350

/-! ## A123350.P15058153765803623097

`A086601(n)-n`
-/

namespace A123350.P15058153765803623097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n - (n : ℤ)

end

end A123350.P15058153765803623097

namespace A123350

/-- `A086601(n)-n` -/
def P15058153765803623097.Spec : Prop :=
  ∀ n, P15058153765803623097.a n = A123350 n

end A123350

/-! ## A123350.P18222563963348964009

`A154323(n)+n²`
-/

namespace A123350.P18222563963348964009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n + (n ^ 2 : ℤ)

end

end A123350.P18222563963348964009

namespace A123350

/-- `A154323(n)+n²` -/
def P18222563963348964009.Spec : Prop :=
  ∀ n, P18222563963348964009.a n = A123350 n

end A123350

/-! ## A123350.P15442759464460369365

`A000124(n)²-n`
-/

namespace A123350.P15442759464460369365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ 2 - (n : ℤ)

end

end A123350.P15442759464460369365

namespace A123350

/-- `A000124(n)²-n` -/
def P15442759464460369365.Spec : Prop :=
  ∀ n, P15442759464460369365.a n = A123350 n

end A123350

/-! ## A123350.P16600280984543483342

`A061316(n)+1-n`
-/

namespace A123350.P16600280984543483342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n + (1 - (n : ℤ))

end

end A123350.P16600280984543483342

namespace A123350

/-- `A061316(n)+1-n` -/
def P16600280984543483342.Spec : Prop :=
  ∀ n, P16600280984543483342.a n = A123350 n

end A123350

/-! ## A123350.P7573786222669410642

`∑[A028310(n)]²-n`
-/

namespace A123350.P7573786222669410642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)

end

end A123350.P7573786222669410642

namespace A123350

/-- `∑[A028310(n)]²-n` -/
def P7573786222669410642.Spec : Prop :=
  ∀ n, P7573786222669410642.a n = A123350 n

end A123350

/-! ## A123350.P8338288302671986587

`(A000217(n)+1)²-n`
-/

namespace A123350.P8338288302671986587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) ^ 2 - (n : ℤ)

end

end A123350.P8338288302671986587

namespace A123350

/-- `(A000217(n)+1)²-n` -/
def P8338288302671986587.Spec : Prop :=
  ∀ n, P8338288302671986587.a n = A123350 n

end A123350

/-! ## A123350.P1634491940239612802

`A125641(n+1)-2*n`
-/

namespace A123350.P1634491940239612802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125641 (n + 1) - (2 * n : ℤ)

end

end A123350.P1634491940239612802

namespace A123350

/-- `A125641(n+1)-2*n` -/
def P1634491940239612802.Spec : Prop :=
  ∀ n, P1634491940239612802.a n = A123350 n

end A123350

/-! ## A123350.P12050838814541535099

`∑[A034262(n)+abs(1-n)]`
-/

namespace A123350.P12050838814541535099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123350.P12050838814541535099

namespace A123350

/-- `∑[A034262(n)+abs(1-n)]` -/
def P12050838814541535099.Spec : Prop :=
  ∀ n, P12050838814541535099.a n = A123350 n

end A123350

/-! ## A123350.P13909579771463255935

`∑[or(1, A004275(n))+n^3]`
-/

namespace A123350.P13909579771463255935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004275 n) + (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123350.P13909579771463255935

namespace A123350

/-- `∑[or(1, A004275(n))+n^3]` -/
def P13909579771463255935.Spec : Prop :=
  ∀ n, P13909579771463255935.a n = A123350 n

end A123350

/-! ## A123350.P2905039890935556328

`floor(A000537(n)+n²+3/2)`
-/

namespace A123350.P2905039890935556328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000537 n : ℚ) + ((n ^ 2 : ℚ) + (3 : ℚ) / 2)⌋

end

end A123350.P2905039890935556328

namespace A123350

/-- `floor(A000537(n)+n²+3/2)` -/
def P2905039890935556328.Spec : Prop :=
  ∀ n, P2905039890935556328.a n = A123350 n

end A123350

/-! ## A123350.P3767251003345388002

`∑[A004273(n)+round(1/acot(n^3))]`
-/

namespace A123350.P3767251003345388002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n ^ 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123350.P3767251003345388002

namespace A123350

/-- `∑[A004273(n)+round(1/acot(n^3))]` -/
def P3767251003345388002.Spec : Prop :=
  ∀ n, P3767251003345388002.a n = A123350 n

end A123350

/-!
# A123351: Kekulé numbers for certain benzenoids (see the Cyvin-Gutman book for details).

The programs for A123351, the canonical program `A123351.P776606237189557634` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123351 has offset 0).

The definition of A123351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123351.P776606237189557634

`(n^6+6*n^5+22*n^4+30*n^3+49*n²+36)/36`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123351

/-- `(n^6+6*n^5+22*n^4+30*n^3+49*n²+36)/36` -/
def P776606237189557634.Spec : Prop :=
  ∀ n, P776606237189557634.a n = (A123351 n : ℚ)

end A123351

/-! ## A123351.P14858924183061824084

`A110197(A046691(n+1))`
-/

namespace A123351.P14858924183061824084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110197 (A046691 (n + 1)).toNat

end

end A123351.P14858924183061824084

namespace A123351

/-- `A110197(A046691(n+1))` -/
def P14858924183061824084.Spec : Prop :=
  ∀ n, P14858924183061824084.a n = A123351 n

end A123351

/-! ## A123351.P8459373094514948782

`A110197(A052905(n)+1)`
-/

namespace A123351.P8459373094514948782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110197 (A052905 n + 1).toNat

end

end A123351.P8459373094514948782

namespace A123351

/-- `A110197(A052905(n)+1)` -/
def P8459373094514948782.Spec : Prop :=
  ∀ n, P8459373094514948782.a n = A123351 n

end A123351

/-! ## A123351.P12669220684530688596

`A110197(A055999(n)+2)`
-/

namespace A123351.P12669220684530688596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110197 (A055999 n + 2).toNat

end

end A123351.P12669220684530688596

namespace A123351

/-- `A110197(A055999(n)+2)` -/
def P12669220684530688596.Spec : Prop :=
  ∀ n, P12669220684530688596.a n = A123351 n

end A123351

/-! ## A123351.P3390430437866778611

`A110197(eq[1, A110162(n+3)])`
-/

namespace A123351.P3390430437866778611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123351.P3390430437866778611

namespace A123351

/-- `A110197(eq[1, A110162(n+3)])` -/
def P3390430437866778611.Spec : Prop :=
  ∀ n, P3390430437866778611.a n = A123351 n

end A123351

/-!
# A123352: Triangle read by rows, giving Kekulé numbers for certain benzenoids (see the Cyvin-Gutman book for details).

The programs for A123352, there is no canonical definition to state claims against.
-/

/-! ## A123352.P5676062145654644324

`A078920(A061579(n))`
-/

namespace A123352.P5676062145654644324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A061579 n).toNat

end

end A123352.P5676062145654644324

/-! ## A123352.P14239517630867171090

`A078920(A114327(n)+n)`
-/

namespace A123352.P14239517630867171090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A114327 n + (n : ℤ)).toNat

end

end A123352.P14239517630867171090

/-! ## A123352.P15043383517055403891

`A078920(∑[A198954(n)-1])`
-/

namespace A123352.P15043383517055403891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123352.P15043383517055403891

/-! ## A123352.P17067112571463665138

`A078920(A038722(n+1)-1)`
-/

namespace A123352.P17067112571463665138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A038722 (n + 1) - 1).toNat

end

end A123352.P17067112571463665138

/-! ## A123352.P18240925998866752011

`A078920(Δ[A004247(n)+A000217(n)])`
-/

namespace A123352.P18240925998866752011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (f1 (n + 1) - f1 n).toNat

end

end A123352.P18240925998866752011

/-! ## A123352.P281711481536359761

`A078920(A038722(n+2))`
-/

namespace A123352.P281711481536359761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A038722 (n + 2)).toNat

end

end A123352.P281711481536359761

/-! ## A123352.P17120860212544443574

`A368025(A080036(n))`
-/

namespace A123352.P17120860212544443574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368025 (A080036 n).toNat

end

end A123352.P17120860212544443574

/-! ## A123352.P12128322734095626938

`A368025(A014132(n+1))`
-/

namespace A123352.P12128322734095626938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368025 (A014132 (n + 1)).toNat

end

end A123352.P12128322734095626938

/-! ## A123352.P2897870569275266856

`A368025(A007401(n+1)+1)`
-/

namespace A123352.P2897870569275266856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368025 (A007401 (n + 1) + 1).toNat

end

end A123352.P2897870569275266856

/-! ## A123352.P18174558550465021600

`A368025(A007401(n+2))`
-/

namespace A123352.P18174558550465021600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368025 (A007401 (n + 2)).toNat

end

end A123352.P18174558550465021600

/-!
# A123354: Triangle read by rows, giving Kekulé numbers for certain benzenoids (see the Cyvin-Gutman book for details).

The programs for A123354, there is no canonical definition to state claims against.
-/

/-! ## A123354.P2371086401649547526

`A317468(A298636(n+1)%A199191(n+1))`
-/

namespace A123354.P2371086401649547526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (Int.tmod (A298636 (n + 1)) (A199191 (n + 1))).toNat

end

end A123354.P2371086401649547526

/-! ## A123354.P3573946938959773179

`A248333(A316623(n))+A008278(n+1)`
-/

namespace A123354.P3573946938959773179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A316623 n).toNat + A008278 (n + 1)

end

end A123354.P3573946938959773179

/-! ## A123354.P13806276667145979318

`A317468(A133567(n+1)^A225641(n))`
-/

namespace A123354.P13806276667145979318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (SequenceMachineLib.roundAway ((A133567 (n + 1) : ℚ) ^ (A225641 n : ℤ))).toNat

end

end A123354.P13806276667145979318

/-! ## A123354.P16534208295694257104

`A317468(A133567(n+1)^A233543(n))`
-/

namespace A123354.P16534208295694257104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (SequenceMachineLib.roundAway ((A133567 (n + 1) : ℚ) ^ (A233543 n : ℤ))).toNat

end

end A123354.P16534208295694257104

/-! ## A123354.P234765761765302142

`A240945(A351153(n+1))%A000040(n+1)`
-/

namespace A123354.P234765761765302142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240945 (A351153 (n + 1)).toNat) (A000040 (n + 1))

end

end A123354.P234765761765302142

/-!
# A123355: Kekulé numbers for certain benzenoids (see the Cyvin-Gutman book for details).

The programs for A123355, there is no canonical definition to state claims against.
-/

/-! ## A123355.P8430555362398430905

`A123353(∑[n+3])`
-/

namespace A123355.P8430555362398430905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123353 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123355.P8430555362398430905

/-!
# A123357: Kekulé numbers for certain benzenoids (see the Cyvin-Gutman book for details).

The programs for A123357, the canonical program `A123357.P1520419305831346680` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123357 has offset 0).

The definition of A123357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123357.P1571050166145034866

`ogf((1-2x)/(1-8x+8x^2))`
-/

namespace A123357.P1571050166145034866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -8, 8] n

end

end A123357.P1571050166145034866

namespace A123357

/-- `ogf((1-2x)/(1-8x+8x^2))` -/
def P1571050166145034866.Spec : Prop :=
  ∀ n, P1571050166145034866.a n = A123357 n

end A123357

/-! ## A123357.P1520419305831346680

`8*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123357

/-- `8*(a(n-1)-a(n-2))` -/
def P1520419305831346680.Spec : Prop :=
  ∀ n, P1520419305831346680.a n = A123357 n

theorem P1520419305831346680.correct : P1520419305831346680.Spec := by
  intro n
  simp only [A123357]

end A123357

/-! ## A123357.P8723037619349341904

`A084130(n+1)/4`
-/

namespace A123357.P8723037619349341904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084130 (n + 1) : ℚ) / 4

end

end A123357.P8723037619349341904

namespace A123357

/-- `A084130(n+1)/4` -/
def P8723037619349341904.Spec : Prop :=
  ∀ n, P8723037619349341904.a n = (A123357 n : ℚ)

end A123357

/-! ## A123357.P11152571941641079980

`2^n*A007052(n)`
-/

namespace A123357.P11152571941641079980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007052 n

end

end A123357.P11152571941641079980

namespace A123357

/-- `2^n*A007052(n)` -/
def P11152571941641079980.Spec : Prop :=
  ∀ n, P11152571941641079980.a n = A123357 n

end A123357

/-! ## A123357.P15553344665074033234

`∑[A208561(n+1)/2]`
-/

namespace A123357.P15553344665074033234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208561 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123357.P15553344665074033234

namespace A123357

/-- `∑[A208561(n+1)/2]` -/
def P15553344665074033234.Spec : Prop :=
  ∀ n, P15553344665074033234.a n = (A123357 n : ℚ)

end A123357

/-! ## A123357.P7977333070634574394

`2^n*∑[A003480(n)]`
-/

namespace A123357.P7977333070634574394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123357.P7977333070634574394

namespace A123357

/-- `2^n*∑[A003480(n)]` -/
def P7977333070634574394.Spec : Prop :=
  ∀ n, P7977333070634574394.a n = A123357 n

end A123357

/-! ## A123357.P13975871434106269974

`2^(n-1)*A006012(n+1)`
-/

namespace A123357.P13975871434106269974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A006012 (n + 1) : ℚ)

end

end A123357.P13975871434106269974

namespace A123357

/-- `2^(n-1)*A006012(n+1)` -/
def P13975871434106269974.Spec : Prop :=
  ∀ n, P13975871434106269974.a n = (A123357 n : ℚ)

end A123357

/-! ## A123357.P8995802070749795357

`2^(n-2)*A056236(n+1)`
-/

namespace A123357.P8995802070749795357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A056236 (n + 1) : ℚ)

end

end A123357.P8995802070749795357

namespace A123357

/-- `2^(n-2)*A056236(n+1)` -/
def P8995802070749795357.Spec : Prop :=
  ∀ n, P8995802070749795357.a n = (A123357 n : ℚ)

end A123357

/-! ## A123357.P1257068498359159964

`lcm(A007052(n), A094014(n))`
-/

namespace A123357.P1257068498359159964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007052 n) (A094014 n)

end

end A123357.P1257068498359159964

namespace A123357

/-- `lcm(A007052(n), A094014(n))` -/
def P1257068498359159964.Spec : Prop :=
  ∀ n, (P1257068498359159964.a n : ℤ) = A123357 n

end A123357

/-! ## A123357.P10179885670912981525

`∑[A003480(n)]*A000079(n)`
-/

namespace A123357.P10179885670912981525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A123357.P10179885670912981525

namespace A123357

/-- `∑[A003480(n)]*A000079(n)` -/
def P10179885670912981525.Spec : Prop :=
  ∀ n, P10179885670912981525.a n = A123357 n

end A123357

/-! ## A123357.P4366422978303453547

`A007052(n)*A011782(n+1)`
-/

namespace A123357.P4366422978303453547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n * A011782 (n + 1)

end

end A123357.P4366422978303453547

namespace A123357

/-- `A007052(n)*A011782(n+1)` -/
def P4366422978303453547.Spec : Prop :=
  ∀ n, P4366422978303453547.a n = A123357 n

end A123357

/-! ## A123357.P3149163777823646450

`A007052(n)*A131577(n+1)`
-/

namespace A123357.P3149163777823646450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n * A131577 (n + 1)

end

end A123357.P3149163777823646450

namespace A123357

/-- `A007052(n)*A131577(n+1)` -/
def P3149163777823646450.Spec : Prop :=
  ∀ n, P3149163777823646450.a n = A123357 n

end A123357

/-! ## A123357.P3517939788196474643

`2*A057084(n)-A164546(n)`
-/

namespace A123357.P3517939788196474643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057084 n - A164546 n

end

end A123357.P3517939788196474643

namespace A123357

/-- `2*A057084(n)-A164546(n)` -/
def P3517939788196474643.Spec : Prop :=
  ∀ n, P3517939788196474643.a n = A123357 n

end A123357

/-! ## A123357.P3644420325514473180

`A007052(n)*A016116(2*n)`
-/

namespace A123357.P3644420325514473180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n * A016116 (2 * n)

end

end A123357.P3644420325514473180

namespace A123357

/-- `A007052(n)*A016116(2*n)` -/
def P3644420325514473180.Spec : Prop :=
  ∀ n, P3644420325514473180.a n = A123357 n

end A123357

/-! ## A123357.P4195202789656271535

`A007052(n)*A077957(2*n)`
-/

namespace A123357.P4195202789656271535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n * A077957 (2 * n)

end

end A123357.P4195202789656271535

namespace A123357

/-- `A007052(n)*A077957(2*n)` -/
def P4195202789656271535.Spec : Prop :=
  ∀ n, P4195202789656271535.a n = A123357 n

end A123357

/-! ## A123357.P5787427546618242811

`A007052(n)*A143095(2*n)`
-/

namespace A123357.P5787427546618242811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n * A143095 (2 * n)

end

end A123357.P5787427546618242811

namespace A123357

/-- `A007052(n)*A143095(2*n)` -/
def P5787427546618242811.Spec : Prop :=
  ∀ n, P5787427546618242811.a n = A123357 n

end A123357

/-! ## A123357.P17168112737637000931

`∑[A003480(n)]*∑[A011782(n)]`
-/

namespace A123357.P17168112737637000931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A123357.P17168112737637000931

namespace A123357

/-- `∑[A003480(n)]*∑[A011782(n)]` -/
def P17168112737637000931.Spec : Prop :=
  ∀ n, P17168112737637000931.a n = A123357 n

end A123357

/-! ## A123357.P6872121436234640373

`∑[A003480(n)]*A055248(∑[n])`
-/

namespace A123357.P6872121436234640373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A055248 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A123357.P6872121436234640373

namespace A123357

/-- `∑[A003480(n)]*A055248(∑[n])` -/
def P6872121436234640373.Spec : Prop :=
  ∀ n, P6872121436234640373.a n = A123357 n

end A123357

/-! ## A123357.P17396180527542614600

`2*A164591(n)-∑[A164591(n)]`
-/

namespace A123357.P17396180527542614600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164591 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123357.P17396180527542614600

namespace A123357

/-- `2*A164591(n)-∑[A164591(n)]` -/
def P17396180527542614600.Spec : Prop :=
  ∀ n, P17396180527542614600.a n = A123357 n

end A123357

/-! ## A123357.P9260645941242178567

`∑[A011782(n)]*A062113(2*n)`
-/

namespace A123357.P9260645941242178567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A062113 (2 * n)

end

end A123357.P9260645941242178567

namespace A123357

/-- `∑[A011782(n)]*A062113(2*n)` -/
def P9260645941242178567.Spec : Prop :=
  ∀ n, P9260645941242178567.a n = A123357 n

end A123357

/-!
# A123358: Kekulé numbers for certain benzenoids (see the Cyvin-Gutman book for details).

The programs for A123358, the canonical program `A123358.P8414249925965946807` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123358 has offset 0).

The definition of A123358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123358.P8414249925965946807

`5^n*A001519(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123358

/-- `5^n*A001519(n+1)` -/
def P8414249925965946807.Spec : Prop :=
  ∀ n, P8414249925965946807.a n = A123358 n

theorem P8414249925965946807.correct : P8414249925965946807.Spec := by
  intro n
  simp only [A123358]

end A123358

/-! ## A123358.P18377149272199478940

`ogf((1-5x)/(1-15x+25x^2))`
-/

namespace A123358.P18377149272199478940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -15, 25] n

end

end A123358.P18377149272199478940

namespace A123358

/-- `ogf((1-5x)/(1-15x+25x^2))` -/
def P18377149272199478940.Spec : Prop :=
  ∀ n, P18377149272199478940.a n = A123358 n

end A123358

/-! ## A123358.P17746029520347604972

`A081567(2*n)`
-/

namespace A123358.P17746029520347604972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (2 * n)

end

end A123358.P17746029520347604972

namespace A123358

/-- `A081567(2*n)` -/
def P17746029520347604972.Spec : Prop :=
  ∀ n, P17746029520347604972.a n = A123358 n

end A123358

/-! ## A123358.P10212536615187808375

`A109106(n+1)/2`
-/

namespace A123358.P10212536615187808375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109106 (n + 1) : ℚ) / 2

end

end A123358.P10212536615187808375

namespace A123358

/-- `A109106(n+1)/2` -/
def P10212536615187808375.Spec : Prop :=
  ∀ n, P10212536615187808375.a n = (A123358 n : ℚ)

end A123358

/-! ## A123358.P409815302146584675

`A178381(4*n+1)`
-/

namespace A123358.P409815302146584675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (4 * n + 1)

end

end A123358.P409815302146584675

namespace A123358

/-- `A178381(4*n+1)` -/
def P409815302146584675.Spec : Prop :=
  ∀ n, P409815302146584675.a n = A123358 n

end A123358

/-! ## A123358.P690440857129830820

`A147748(Δ[n²])/2`
-/

namespace A123358.P690440857129830820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147748 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A123358.P690440857129830820

namespace A123358

/-- `A147748(Δ[n²])/2` -/
def P690440857129830820.Spec : Prop :=
  ∀ n, P690440857129830820.a n = (A123358 n : ℚ)

end A123358

/-! ## A123358.P16029702766320513727

`A020876(2*n+1)/5`
-/

namespace A123358.P16029702766320513727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020876 (2 * n + 1) : ℚ) / 5

end

end A123358.P16029702766320513727

namespace A123358

/-- `A020876(2*n+1)/5` -/
def P16029702766320513727.Spec : Prop :=
  ∀ n, P16029702766320513727.a n = (A123358 n : ℚ)

end A123358

/-! ## A123358.P18028908012881866076

`5^n*A000045(Δ[n²])`
-/

namespace A123358.P18028908012881866076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A123358.P18028908012881866076

namespace A123358

/-- `5^n*A000045(Δ[n²])` -/
def P18028908012881866076.Spec : Prop :=
  ∀ n, P18028908012881866076.a n = A123358 n

end A123358

/-! ## A123358.P7304607321782465695

`5^n*Δ[A000045(2*n)]`
-/

namespace A123358.P7304607321782465695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A123358.P7304607321782465695

namespace A123358

/-- `5^n*Δ[A000045(2*n)]` -/
def P7304607321782465695.Spec : Prop :=
  ∀ n, P7304607321782465695.a n = A123358 n

end A123358

/-! ## A123358.P12361152270070262510

`A000045(2*n+1)/5^-n`
-/

namespace A123358.P12361152270070262510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 1) : ℚ) / (5 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A123358.P12361152270070262510

namespace A123358

/-- `A000045(2*n+1)/5^-n` -/
def P12361152270070262510.Spec : Prop :=
  ∀ n, P12361152270070262510.a n = (A123358 n : ℚ)

end A123358

/-!
# A123359: Least m such that 3^n+2^m is prime.

The programs for A123359, there is no canonical definition to state claims against.
-/

/-! ## A123359.P17639286769422099533

`A337509(4*A013598(n))`
-/

namespace A123359.P17639286769422099533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337509 (4 * A013598 n).toNat

end

end A123359.P17639286769422099533

/-! ## A123359.P4815787280504283301

`A001222(A000013(A013598(n)))`
-/

namespace A123359.P4815787280504283301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000013 (A013598 n).toNat).toNat

end

end A123359.P4815787280504283301

/-! ## A123359.P4192397737342966774

`∑{e}[A000013(A013598(n)), A001102(#)]`
-/

namespace A123359.P4192397737342966774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (A013598 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001102 (Nat.factorization (f1 n).natAbs p)

end

end A123359.P4192397737342966774

/-! ## A123359.P10302502387959532280

`∑{e}[A000013(A013598(n)), A020639(#)]`
-/

namespace A123359.P10302502387959532280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (A013598 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (Nat.factorization (f1 n).natAbs p)

end

end A123359.P10302502387959532280

/-!
# A123362: a(0) = 1, a(1) = 1, a(n) = 6*a(n-1) + 5*a(n-2) for n > 1.

The programs for A123362, the canonical program `A123362.P10185203674900568354` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123362 has offset 0).

The definition of A123362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+5*a(n-2)` (program `A123362.P10185203674900568354`, by `A123362.P10185203674900568354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123362.P10185203674900568354

`6*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123362

/-- `6*a(n-1)+5*a(n-2)` -/
def P10185203674900568354.Spec : Prop :=
  ∀ n, (P10185203674900568354.a n : ℤ) = A123362 n

theorem P10185203674900568354.correct : P10185203674900568354.Spec := by
  intro n
  simp only [A123362]

end A123362

/-! ## A123362.P7862703649927286177

`ogf((-1+5x)/(-1+6x+5x^2))`
-/

namespace A123362.P7862703649927286177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -6, -5] n

end

end A123362.P7862703649927286177

namespace A123362

/-- `ogf((-1+5x)/(-1+6x+5x^2))` -/
def P7862703649927286177.Spec : Prop :=
  ∀ n, P7862703649927286177.a n = A123362 n

end A123362

/-! ## A123362.P12542182641470630880

`∑[2*A091927(n)]-1`
-/

namespace A123362.P12542182641470630880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A123362.P12542182641470630880

namespace A123362

/-- `∑[2*A091927(n)]-1` -/
def P12542182641470630880.Spec : Prop :=
  ∀ n, P12542182641470630880.a n = A123362 n

end A123362

/-! ## A123362.P14649127402744444222

`A091927(n)+A015551(n)`
-/

namespace A123362.P14649127402744444222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091927 n + A015551 n

end

end A123362.P14649127402744444222

namespace A123362

/-- `A091927(n)+A015551(n)` -/
def P14649127402744444222.Spec : Prop :=
  ∀ n, P14649127402744444222.a n = A123362 n

end A123362

/-! ## A123362.P18281399102672807948

`∑[A036453(n+1)*A091927(n)]`
-/

namespace A123362.P18281399102672807948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A091927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123362.P18281399102672807948

namespace A123362

/-- `∑[A036453(n+1)*A091927(n)]` -/
def P18281399102672807948.Spec : Prop :=
  ∀ n, P18281399102672807948.a n = A123362 n

end A123362

/-! ## A123362.P5136980186591554773

`∑[A020639(A008574(n))*A091927(n)]`
-/

namespace A123362.P5136980186591554773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A091927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123362.P5136980186591554773

namespace A123362

/-- `∑[A020639(A008574(n))*A091927(n)]` -/
def P5136980186591554773.Spec : Prop :=
  ∀ n, P5136980186591554773.a n = A123362 n

end A123362

/-! ## A123362.P3923621293374873195

`∑[A091927(n)*A100549(A100549(n+1))]`
-/

namespace A123362.P3923621293374873195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091927 n * A100549 (A100549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123362.P3923621293374873195

namespace A123362

/-- `∑[A091927(n)*A100549(A100549(n+1))]` -/
def P3923621293374873195.Spec : Prop :=
  ∀ n, P3923621293374873195.a n = A123362 n

end A123362

/-! ## A123362.P15477321662576524832

`∑[A091928(n)]-A091927(n+1)`
-/

namespace A123362.P15477321662576524832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091927 (n + 1)

end

end A123362.P15477321662576524832

namespace A123362

/-- `∑[A091928(n)]-A091927(n+1)` -/
def P15477321662576524832.Spec : Prop :=
  ∀ n, P15477321662576524832.a n = A123362 n

end A123362

/-! ## A123362.P12742840397774971898

`A091927(n)-(A091928(n)-∑[A091928(n)])`
-/

namespace A123362.P12742840397774971898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091927 n - (A091928 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123362.P12742840397774971898

namespace A123362

/-- `A091927(n)-(A091928(n)-∑[A091928(n)])` -/
def P12742840397774971898.Spec : Prop :=
  ∀ n, P12742840397774971898.a n = A123362 n

end A123362

/-!
# A123363: a(n) = n^3 + (-1)^(n+1).

The programs for A123363, the canonical program `A123363.P7335407803196755453` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123363 has offset 0).

The definition of A123363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(-1)^(n+1)` (program `A123363.P7335407803196755453`, by `A123363.P7335407803196755453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123363.P7335407803196755453

`n^3+(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123363

/-- `n^3+(-1)^(n+1)` -/
def P7335407803196755453.Spec : Prop :=
  ∀ n, P7335407803196755453.a n = A123363 n

theorem P7335407803196755453.correct : P7335407803196755453.Spec := by
  intro n
  simp only [A123363]

end A123363

/-! ## A123363.P5460465598474776413

`-xor(1, -n^3)`
-/

namespace A123363.P5460465598474776413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n ^ 3 : ℤ))

end

end A123363.P5460465598474776413

namespace A123363

/-- `-xor(1, -n^3)` -/
def P5460465598474776413.Spec : Prop :=
  ∀ n, P5460465598474776413.a n = A123363 n

end A123363

/-! ## A123363.P5751428379743686751

`Δ[gcd(2, n)+C(n, 2)²]`
-/

namespace A123363.P5751428379743686751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A123363.P5751428379743686751

namespace A123363

/-- `Δ[gcd(2, n)+C(n, 2)²]` -/
def P5751428379743686751.Spec : Prop :=
  ∀ n, P5751428379743686751.a n = A123363 n

end A123363

/-! ## A123363.P16310150129460654423

`Δ[C(n, 2)²-and(1, n)]`
-/

namespace A123363.P16310150129460654423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P16310150129460654423

namespace A123363

/-- `Δ[C(n, 2)²-and(1, n)]` -/
def P16310150129460654423.Spec : Prop :=
  ∀ n, P16310150129460654423.a n = A123363 n

end A123363

/-! ## A123363.P58459762365586818

`Δ[and(1, n+1)+C(n, 2)²]`
-/

namespace A123363.P58459762365586818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A123363.P58459762365586818

namespace A123363

/-- `Δ[and(1, n+1)+C(n, 2)²]` -/
def P58459762365586818.Spec : Prop :=
  ∀ n, P58459762365586818.a n = A123363 n

end A123363

/-! ## A123363.P6872279898583201490

`Δ[C(n, 2)²-gcd(n-1, 2*n)]`
-/

namespace A123363.P6872279898583201490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P6872279898583201490

namespace A123363

/-- `Δ[C(n, 2)²-gcd(n-1, 2*n)]` -/
def P6872279898583201490.Spec : Prop :=
  ∀ n, P6872279898583201490.a n = A123363 n

end A123363

/-! ## A123363.P5760653909078475857

`(xor(2, 2*n*n²-1)+1)/2`
-/

namespace A123363.P5760653909078475857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 ((2 * (n * n ^ 2) : ℤ) - 1) + 1 : ℚ) / 2

end

end A123363.P5760653909078475857

namespace A123363

/-- `(xor(2, 2*n*n²-1)+1)/2` -/
def P5760653909078475857.Spec : Prop :=
  ∀ n, P5760653909078475857.a n = (A123363 n : ℚ)

end A123363

/-! ## A123363.P5018999676108621305

`Δ[(n-∑[n])²-n%2]`
-/

namespace A123363.P5018999676108621305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P5018999676108621305

namespace A123363

/-- `Δ[(n-∑[n])²-n%2]` -/
def P5018999676108621305.Spec : Prop :=
  ∀ n, P5018999676108621305.a n = A123363 n

end A123363

/-! ## A123363.P1102491654153474840

`Δ[C(n, 2)²-A000034(n)]`
-/

namespace A123363.P1102491654153474840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P1102491654153474840

namespace A123363

/-- `Δ[C(n, 2)²-A000034(n)]` -/
def P1102491654153474840.Spec : Prop :=
  ∀ n, P1102491654153474840.a n = A123363 n

end A123363

/-! ## A123363.P13582056412678132010

`Δ[C(n, 2)²-(n-A052928(n))]`
-/

namespace A123363.P13582056412678132010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - ((n : ℤ) - A052928 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P13582056412678132010

namespace A123363

/-- `Δ[C(n, 2)²-(n-A052928(n))]` -/
def P13582056412678132010.Spec : Prop :=
  ∀ n, P13582056412678132010.a n = A123363 n

end A123363

/-! ## A123363.P5775836531184506087

`Δ[A161680(n)²-A000034(n)]`
-/

namespace A123363.P5775836531184506087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 2 - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P5775836531184506087

namespace A123363

/-- `Δ[A161680(n)²-A000034(n)]` -/
def P5775836531184506087.Spec : Prop :=
  ∀ n, P5775836531184506087.a n = A123363 n

end A123363

/-! ## A123363.P10307282834416529014

`Δ[A161680(n)²-A010710(n)]`
-/

namespace A123363.P10307282834416529014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 2 - A010710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P10307282834416529014

namespace A123363

/-- `Δ[A161680(n)²-A010710(n)]` -/
def P10307282834416529014.Spec : Prop :=
  ∀ n, P10307282834416529014.a n = A123363 n

end A123363

/-! ## A123363.P6179139885615827470

`Δ[A161680(n)²-A010717(n)]`
-/

namespace A123363.P6179139885615827470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 2 - A010717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P6179139885615827470

namespace A123363

/-- `Δ[A161680(n)²-A010717(n)]` -/
def P6179139885615827470.Spec : Prop :=
  ∀ n, P6179139885615827470.a n = A123363 n

end A123363

/-! ## A123363.P2319038661684699212

`Δ[A161680(n)²-A010723(n)]`
-/

namespace A123363.P2319038661684699212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 2 - A010723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P2319038661684699212

namespace A123363

/-- `Δ[A161680(n)²-A010723(n)]` -/
def P2319038661684699212.Spec : Prop :=
  ∀ n, P2319038661684699212.a n = A123363 n

end A123363

/-! ## A123363.P10769149108000727977

`Δ[A161680(n)²-A010728(n)]`
-/

namespace A123363.P10769149108000727977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 2 - A010728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123363.P10769149108000727977

namespace A123363

/-- `Δ[A161680(n)²-A010728(n)]` -/
def P10769149108000727977.Spec : Prop :=
  ∀ n, P10769149108000727977.a n = A123363 n

end A123363

/-! ## A123363.P13738693056993346482

`record[n*A037213(n)-A087960(n)]`
-/

namespace A123363.P13738693056993346482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037213 n - A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123363.P13738693056993346482

namespace A123363

/-- `record[n*A037213(n)-A087960(n)]` -/
def P13738693056993346482.Spec : Prop :=
  ∀ n, P13738693056993346482.a n = A123363 n

end A123363

/-!
# A123364: Primes of the form a^2 + b^3 (with repetition).

The programs for A123364, there is no canonical definition to state claims against.
-/

/-! ## A123364.P13428993274308403987

`p?[A155469(n+1)]`
-/

namespace A123364.P13428993274308403987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123364.P13428993274308403987

/-! ## A123364.P2634059161094915174

`filter[A155469(n+1), A010051(#)]`
-/

namespace A123364.P2634059161094915174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123364.P2634059161094915174

/-! ## A123364.P9019813286000927884

`filter[A155469(n+1), A080339(#)]`
-/

namespace A123364.P9019813286000927884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A123364.P9019813286000927884

/-! ## A123364.P7099364442536322213

`filter[A155469(n+1), A192280(#)]`
-/

namespace A123364.P7099364442536322213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A123364.P7099364442536322213

/-! ## A123364.P15619976940469362934

`filter[A155469(n+1), A294905(#)]`
-/

namespace A123364.P15619976940469362934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A123364.P15619976940469362934

/-!
# A123365: Values of k such that A046530(k) = (k+2)/3, where A046530(k) is the number of distinct residues of cubes mod k.

The programs for A123365, the canonical program `A123365.P2124579279966647089` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123365 has offset 1).

The definition of A123365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123365.P549733799555011686

`2*A177965(n+1)-1`
-/

namespace A123365.P549733799555011686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177965 (n + 1) - 1

end

end A123365.P549733799555011686

namespace A123365

/-- `2*A177965(n+1)-1` -/
def P549733799555011686.Spec : Prop :=
  ∀ n, P549733799555011686.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P2124579279966647089

`or(1, A045375(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123365

/-- `or(1, A045375(n+1)-1)` -/
def P2124579279966647089.Spec : Prop :=
  ∀ n, P2124579279966647089.a n = A123365 (n + 1)

theorem P2124579279966647089.correct : P2124579279966647089.Spec := by
  intro n
  simp only [A123365, Nat.add_sub_cancel]

end A123365

/-! ## A123365.P12711618806433751795

`A007645(n+1)%(38*n²+2)`
-/

namespace A123365.P12711618806433751795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007645 (n + 1)) (38 * n ^ 2 + 2 : ℤ)

end

end A123365.P12711618806433751795

namespace A123365

/-- `A007645(n+1)%(38*n²+2)` -/
def P12711618806433751795.Spec : Prop :=
  ∀ n, P12711618806433751795.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P3081192209057760090

`A002476(n%(2*a(floor(n/2))))` with `a(0)=1`
-/

namespace A123365.P3081192209057760090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002476 (Int.tmod (n : ℤ) (2 * a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A123365.P3081192209057760090

namespace A123365

/-- `A002476(n%(2*a(floor(n/2))))` -/
def P3081192209057760090.Spec : Prop :=
  ∀ n, P3081192209057760090.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P13379222937392407331

`A007645(n+1)-A000038(n)`
-/

namespace A123365.P13379222937392407331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) - A000038 n

end

end A123365.P13379222937392407331

namespace A123365

/-- `A007645(n+1)-A000038(n)` -/
def P13379222937392407331.Spec : Prop :=
  ∀ n, P13379222937392407331.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P1745698214638871947

`A045375(n+1)-A000007(n)`
-/

namespace A123365.P1745698214638871947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1) - A000007 n

end

end A123365.P1745698214638871947

namespace A123365

/-- `A045375(n+1)-A000007(n)` -/
def P1745698214638871947.Spec : Prop :=
  ∀ n, P1745698214638871947.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P7742565714647082946

`A045375(n+1)/A054977(n)`
-/

namespace A123365.P7742565714647082946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045375 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A123365.P7742565714647082946

namespace A123365

/-- `A045375(n+1)/A054977(n)` -/
def P7742565714647082946.Spec : Prop :=
  ∀ n, P7742565714647082946.a n = (A123365 (n + 1) : ℚ)

end A123365

/-! ## A123365.P11437250556113660996

`gcd(A007645(n+1), A045375(n+1))`
-/

namespace A123365.P11437250556113660996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007645 (n + 1)) (A045375 (n + 1))

end

end A123365.P11437250556113660996

namespace A123365

/-- `gcd(A007645(n+1), A045375(n+1))` -/
def P11437250556113660996.Spec : Prop :=
  ∀ n, (P11437250556113660996.a n : ℤ) = A123365 (n + 1)

end A123365

/-! ## A123365.P15206427812836193788

`and(A007645(n+1), A153881(n+1))`
-/

namespace A123365.P15206427812836193788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007645 (n + 1)) (A153881 (n + 1))

end

end A123365.P15206427812836193788

namespace A123365

/-- `and(A007645(n+1), A153881(n+1))` -/
def P15206427812836193788.Spec : Prop :=
  ∀ n, P15206427812836193788.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P1797664010522484255

`A003627(n+1)+A045375(n+1)-A045410(n+1)`
-/

namespace A123365.P1797664010522484255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A045375 (n + 1) - A045410 (n + 1))

end

end A123365.P1797664010522484255

namespace A123365

/-- `A003627(n+1)+A045375(n+1)-A045410(n+1)` -/
def P1797664010522484255.Spec : Prop :=
  ∀ n, P1797664010522484255.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P15727234350478834820

`A003627(n+1)+A045375(n+1)-A045309(n+2)`
-/

namespace A123365.P15727234350478834820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A045375 (n + 1) - A045309 (n + 2))

end

end A123365.P15727234350478834820

namespace A123365

/-- `A003627(n+1)+A045375(n+1)-A045309(n+2)` -/
def P15727234350478834820.Spec : Prop :=
  ∀ n, P15727234350478834820.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P6263271564662955591

`A045375(n+1)+A045375(n+1)-A045331(n+2)`
-/

namespace A123365.P6263271564662955591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1) + (A045375 (n + 1) - A045331 (n + 2))

end

end A123365.P6263271564662955591

namespace A123365

/-- `A045375(n+1)+A045375(n+1)-A045331(n+2)` -/
def P6263271564662955591.Spec : Prop :=
  ∀ n, P6263271564662955591.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P15767583712156711948

`A139513(n+1)+A045331(n+2)-A296922(n+2)`
-/

namespace A123365.P15767583712156711948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1) + (A045331 (n + 2) - A296922 (n + 2))

end

end A123365.P15767583712156711948

namespace A123365

/-- `A139513(n+1)+A045331(n+2)-A296922(n+2)` -/
def P15767583712156711948.Spec : Prop :=
  ∀ n, P15767583712156711948.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P2381567455471394033

`filter[A140475(n+1), A070563(#)]`
-/

namespace A123365.P2381567455471394033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A123365.P2381567455471394033

namespace A123365

/-- `filter[A140475(n+1), A070563(#)]` -/
def P2381567455471394033.Spec : Prop :=
  ∀ n, P2381567455471394033.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P15052755990191381419

`A171577(A171820(n+1))`
-/

namespace A123365.P15052755990191381419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (A171820 (n + 1)).toNat

end

end A123365.P15052755990191381419

namespace A123365

/-- `A171577(A171820(n+1))` -/
def P15052755990191381419.Spec : Prop :=
  ∀ n, P15052755990191381419.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P14947110910301245610

`filter[A006005(n+1), A070563(#)]`
-/

namespace A123365.P14947110910301245610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A123365.P14947110910301245610

namespace A123365

/-- `filter[A006005(n+1), A070563(#)]` -/
def P14947110910301245610.Spec : Prop :=
  ∀ n, P14947110910301245610.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P16713480799888267841

`filter[A008578(n+1), A070563(#)]`
-/

namespace A123365.P16713480799888267841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A123365.P16713480799888267841

namespace A123365

/-- `filter[A008578(n+1), A070563(#)]` -/
def P16713480799888267841.Spec : Prop :=
  ∀ n, P16713480799888267841.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P9781132910087086367

`filter[A161847(n+1), A070563(#)]`
-/

namespace A123365.P9781132910087086367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A123365.P9781132910087086367

namespace A123365

/-- `filter[A161847(n+1), A070563(#)]` -/
def P9781132910087086367.Spec : Prop :=
  ∀ n, P9781132910087086367.a n = A123365 (n + 1)

end A123365

/-! ## A123365.P18018896350453377331

`∩[A062972(n+1), A004611(n+1)]`
-/

namespace A123365.P18018896350453377331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123365.P18018896350453377331

namespace A123365

/-- `∩[A062972(n+1), A004611(n+1)]` -/
def P18018896350453377331.Spec : Prop :=
  ∀ n, (P18018896350453377331.a n : ℤ) = A123365 (n + 1)

end A123365

/-! ## A123365.P17838096679182223601

`filter[A283599(n+1), A070563(#)]`
-/

namespace A123365.P17838096679182223601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A123365.P17838096679182223601

namespace A123365

/-- `filter[A283599(n+1), A070563(#)]` -/
def P17838096679182223601.Spec : Prop :=
  ∀ n, P17838096679182223601.a n = A123365 (n + 1)

end A123365

/-!
# A123367: a(n) = (n! - 2^n)/8, n >= 4.

The programs for A123367, the canonical program `A123367.P12920090617579708559` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123367 has offset 4).

The definition of A123367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123367.P12920090617579708559

`((n+4)!-2^(n+4))/8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123367

/-- `((n+4)!-2^(n+4))/8` -/
def P12920090617579708559.Spec : Prop :=
  ∀ n, P12920090617579708559.a n = (A123367 (n + 4) : ℚ)

end A123367

/-! ## A123367.P6959139332081383469

`∏[A009005(n+1)]-2^(n+1)`
-/

namespace A123367.P6959139332081383469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ (n + 1) : ℤ)

end

end A123367.P6959139332081383469

namespace A123367

/-- `∏[A009005(n+1)]-2^(n+1)` -/
def P6959139332081383469.Spec : Prop :=
  ∀ n, P6959139332081383469.a n = A123367 (n + 4)

end A123367

/-! ## A123367.P12298122215935077545

`∏[A242963(n+1)-2]-2^(n+1)`
-/

namespace A123367.P12298122215935077545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ (n + 1) : ℤ)

end

end A123367.P12298122215935077545

namespace A123367

/-- `∏[A242963(n+1)-2]-2^(n+1)` -/
def P12298122215935077545.Spec : Prop :=
  ∀ n, P12298122215935077545.a n = A123367 (n + 4)

end A123367

/-! ## A123367.P9290371375618548613

`∏[A103517(n)+2-n]-A000079(n+1)`
-/

namespace A123367.P9290371375618548613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000079 (n + 1)

end

end A123367.P9290371375618548613

namespace A123367

/-- `∏[A103517(n)+2-n]-A000079(n+1)` -/
def P9290371375618548613.Spec : Prop :=
  ∀ n, P9290371375618548613.a n = A123367 (n + 4)

end A123367

/-! ## A123367.P8495034785869022400

`A001715(n+4)-(A001720(n+4)+A000079(n+1))`
-/

namespace A123367.P8495034785869022400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001715 (n + 4) - (A001720 (n + 4) + A000079 (n + 1))

end

end A123367.P8495034785869022400

namespace A123367

/-- `A001715(n+4)-(A001720(n+4)+A000079(n+1))` -/
def P8495034785869022400.Spec : Prop :=
  ∀ n, P8495034785869022400.a n = A123367 (n + 4)

end A123367

/-! ## A123367.P2912010145139864385

`A139183(n+4)-A130850(A034856(n+1))`
-/

namespace A123367.P2912010145139864385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139183 (n + 4) - A130850 (A034856 (n + 1)).toNat

end

end A123367.P2912010145139864385

namespace A123367

/-- `A139183(n+4)-A130850(A034856(n+1))` -/
def P2912010145139864385.Spec : Prop :=
  ∀ n, P2912010145139864385.a n = A123367 (n + 4)

end A123367

/-!
# A123369: Number of prime divisors of n-th Conway and Guy second-order harmonic number (counted with multiplicity).

The programs for A123369, there is no canonical definition to state claims against.
-/

/-! ## A123369.P13182596616796606884

`A025901(eq[A025901(n), A338731(n)])`
-/

namespace A123369.P13182596616796606884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A123369.P13182596616796606884

/-! ## A123369.P3145269871856660301

`A064415(n+1)+1-A040001(A262430(n))`
-/

namespace A123369.P3145269871856660301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + (1 - A040001 (A262430 n).toNat)

end

end A123369.P3145269871856660301

/-! ## A123369.P14454452067380997520

`A001221(A285822(2*n)-∑[char[∑[n+1]]])`
-/

namespace A123369.P14454452067380997520
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A285822 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A123369.P14454452067380997520

/-! ## A123369.P3059351608815779490

`A001221(A100071(n)+A023141(n+1))`
-/

namespace A123369.P3059351608815779490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100071 n + A023141 (n + 1)).toNat

end

end A123369.P3059351608815779490

/-! ## A123369.P7560829728373027770

`A001221(∪[A018015(3*n), A034899(n)])`
-/

namespace A123369.P7560829728373027770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034899 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A123369.P7560829728373027770

/-!
# A123370: Primes of the form (2^k + 7)/3.

The programs for A123370, there is no canonical definition to state claims against.
-/

/-! ## A123370.P4220123300997463283

`p?[∑[(-2)^n]+2]`
-/

namespace A123370.P4220123300997463283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123370.P4220123300997463283

/-!
# A123375: Least k such that the difference between consecutive semiprimes A065516(k) equals n, or 0 if no such k exists.

The programs for A123375, there is no canonical definition to state claims against.
-/

/-! ## A123375.P7178418367347355167

`A072000(A131109(n+1))`
-/

namespace A123375.P7178418367347355167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A131109 (n + 1)).toNat

end

end A123375.P7178418367347355167

/-! ## A123375.P13415540728271964664

`A058933(A131109(n+1))%A000032(n+3)`
-/

namespace A123375.P13415540728271964664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (A131109 (n + 1)).toNat) (A000032 (n + 3))

end

end A123375.P13415540728271964664

/-! ## A123375.P10198316243720460292

`A007318(C(2, n))*A058933(A131109(n+1))`
-/

namespace A123375.P10198316243720460292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A058933 (A131109 (n + 1)).toNat

end

end A123375.P10198316243720460292

/-! ## A123375.P5987037313906232973

`A058933(A131109(n+1))+A008683(4*(n+1))`
-/

namespace A123375.P5987037313906232973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A131109 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A123375.P5987037313906232973

/-! ## A123375.P8901993844729881118

`A014963(10*(n+1))*A058933(A131109(n+1))`
-/

namespace A123375.P8901993844729881118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A058933 (A131109 (n + 1)).toNat

end

end A123375.P8901993844729881118

/-!
# A123376: Sum of the first s(n) primes, where s(n) is the sum of the first p(n) primes, where p(n) is the n-th prime. Note that s(n) is A022094.

The programs for A123376, there is no canonical definition to state claims against.
-/

/-! ## A123376.P17925342056409860765

`A007504(A022094(n+1))`
-/

namespace A123376.P17925342056409860765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A022094 (n + 1)).toNat

end

end A123376.P17925342056409860765

/-! ## A123376.P16447457530560945884

`A007504(A007504(p?[xor(1, n)+1]))`
-/

namespace A123376.P16447457530560945884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007504 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A123376.P16447457530560945884

/-! ## A123376.P9257018439853531416

`A007504(A007504(p?[n%3+n]))`
-/

namespace A123376.P9257018439853531416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007504 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A123376.P9257018439853531416

/-! ## A123376.P6785888546604961871

`A007504(A007504(p?[n-(-1)^n]))`
-/

namespace A123376.P6785888546604961871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007504 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A123376.P6785888546604961871

/-! ## A123376.P10822506253149050677

`A007504(A007504(A000040(n+1)))`
-/

namespace A123376.P10822506253149050677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007504 (A000040 (n + 1)).toNat).toNat

end

end A123376.P10822506253149050677

/-!
# A123377: Values X satisfying the equation 5(X-Y)^4 - XY = 0, where X >= Y.

The programs for A123377, there is no canonical definition to state claims against.
-/

/-! ## A123377.P11092632876384477553

`A123379(n)/2`
-/

namespace A123377.P11092632876384477553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123379 n : ℚ) / 2

end

end A123377.P11092632876384477553

/-! ## A123377.P2497490082807862034

`A123381(n)/4`
-/

namespace A123377.P2497490082807862034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123381 n : ℚ) / 4

end

end A123377.P2497490082807862034

/-! ## A123377.P7210460761714551856

`(A023039(n)+1)*A049660(n)`
-/

namespace A123377.P7210460761714551856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023039 n + 1) * A049660 n

end

end A123377.P7210460761714551856

/-! ## A123377.P4040570961984079119

`(A132584(n)+1)*A207832(n)`
-/

namespace A123377.P4040570961984079119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132584 n + 1) * A207832 n

end

end A123377.P4040570961984079119

/-! ## A123377.P1443084987442376615

`(2^A008683(A020483(n)))²*A123381(n)`
-/

namespace A123377.P1443084987442376615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)) ^ 2 * (A123381 n : ℚ)

end

end A123377.P1443084987442376615

/-!
# A123378: Values x of the solutions (x,y) of the Diophantine equation 5*(X-Y)^4 - 2*X*Y = 0 with X >= Y.

The programs for A123378, there is no canonical definition to state claims against.
-/

/-! ## A123378.P7143956612104548514

`A123380(n)/2`
-/

namespace A123378.P7143956612104548514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123380 n : ℚ) / 2

end

end A123378.P7143956612104548514

/-! ## A123378.P13255775275154238183

`A084070(n)*A247335(n)`
-/

namespace A123378.P13255775275154238183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084070 n * A247335 n

end

end A123378.P13255775275154238183

/-!
# A123379: Values x of the solutions (x,y) of the Diophantine equation 5*(X-Y)^4 - 4*X*Y = 0 with X >= Y.

The programs for A123379, there is no canonical definition to state claims against.
-/

/-! ## A123379.P1813613358932195310

`2*A123377(n)`
-/

namespace A123379.P1813613358932195310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123377 n

end

end A123379.P1813613358932195310

/-! ## A123379.P5379517933601695981

`A123381(n)/2`
-/

namespace A123379.P5379517933601695981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123381 n : ℚ) / 2

end

end A123379.P5379517933601695981

/-! ## A123379.P11808185658675877669

`(A023039(n)+1)*A207832(n)`
-/

namespace A123379.P11808185658675877669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023039 n + 1) * A207832 n

end

end A123379.P11808185658675877669

/-! ## A123379.P7222379313606129509

`A207832(n)+A049660(2*n)`
-/

namespace A123379.P7222379313606129509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207832 n + A049660 (2 * n)

end

end A123379.P7222379313606129509

/-! ## A123379.P13971159864453217326

`A049660(2*n)+∑[A000045(3*comp[2*(n+1)])]`
-/

namespace A123379.P13971159864453217326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123379.P13971159864453217326

/-!
# A123380: Values x of the solutions (x,y) of the Diophantine equation 5*(X-Y)^4 - 8*X*Y = 0 with X >= Y.

The programs for A123380, there is no canonical definition to state claims against.
-/

/-! ## A123380.P13393470543491433884

`2*A123378(n)`
-/

namespace A123380.P13393470543491433884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123378 n

end

end A123380.P13393470543491433884

/-! ## A123380.P4229626662672238685

`(A078986(n)+1)*A084070(n)`
-/

namespace A123380.P4229626662672238685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078986 n + 1) * A084070 n

end

end A123380.P4229626662672238685

/-! ## A123380.P17111760556158118731

`(A078986(n)+1)*A005668(2*n)`
-/

namespace A123380.P17111760556158118731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078986 n + 1) * A005668 (2 * n)

end

end A123380.P17111760556158118731

/-! ## A123380.P3880979544844866179

`(A005667(2*n)+1)*A084070(n)`
-/

namespace A123380.P3880979544844866179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005667 (2 * n) + 1) * A084070 n

end

end A123380.P3880979544844866179

/-! ## A123380.P13664843061016120227

`(A005667(2*n)+1)*A005668(2*n)`
-/

namespace A123380.P13664843061016120227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005667 (2 * n) + 1) * A005668 (2 * n)

end

end A123380.P13664843061016120227

/-!
# A123381: Values x of the solutions (x,y) of the Diophantine equation 5*(X-Y)^4 - 16*X*Y = 0 with X >= Y.

The programs for A123381, there is no canonical definition to state claims against.
-/

/-! ## A123381.P17072767554826005428

`2*A123379(n)`
-/

namespace A123381.P17072767554826005428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123379 n

end

end A123381.P17072767554826005428

/-! ## A123381.P7785162788626915267

`4*A123377(n)`
-/

namespace A123381.P7785162788626915267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123377 n

end

end A123381.P7785162788626915267

/-! ## A123381.P15179516277255676562

`(A023039(n)+1)*A060645(n)`
-/

namespace A123381.P15179516277255676562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023039 n + 1) * A060645 n

end

end A123381.P15179516277255676562

/-! ## A123381.P12226037922346133411

`A207832(2*n)+A060645(n)`
-/

namespace A123381.P12226037922346133411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207832 (2 * n) + A060645 n

end

end A123381.P12226037922346133411

/-! ## A123381.P14608175648333172987

`4*(A023039(n)+1)*A049660(n)`
-/

namespace A123381.P14608175648333172987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((A023039 n + 1) * A049660 n)

end

end A123381.P14608175648333172987

/-!
# A123384: Number of bits in binary expansion of 10^n.

The programs for A123384, the canonical program `A123384.P4754925365740744026` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123384 has offset 0).

The definition of A123384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123384.P13897839947794471741

`floor(n*log2(10))+1`
-/

namespace A123384.P13897839947794471741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋ + 1

end

end A123384.P13897839947794471741

namespace A123384

/-- `floor(n*log2(10))+1` -/
def P13897839947794471741.Spec : Prop :=
  ∀ n, P13897839947794471741.a n = A123384 n

end A123384

/-! ## A123384.P598597156118214462

`round(1/acot(ceil(n*log2(10))))`
-/

namespace A123384.P598597156118214462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (⌈(n : ℝ) * Real.logb 2 (10 : ℝ)⌉ : ℝ))

end

end A123384.P598597156118214462

namespace A123384

/-- `round(1/acot(ceil(n*log2(10))))` -/
def P598597156118214462.Spec : Prop :=
  ∀ n, P598597156118214462.a n = A123384 n

end A123384

/-! ## A123384.P12432573983169804585

`gcd(floor(acot(n)), ceil(n*log2(10)))`
-/

namespace A123384.P12432573983169804585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ ⌈(n : ℝ) * Real.logb 2 (10 : ℝ)⌉

end

end A123384.P12432573983169804585

namespace A123384

/-- `gcd(floor(acot(n)), ceil(n*log2(10)))` -/
def P12432573983169804585.Spec : Prop :=
  ∀ n, (P12432573983169804585.a n : ℤ) = A123384 n

end A123384

/-! ## A123384.P6041786849942722725

`ceil(C(2, n+2)+n*log2(10))`
-/

namespace A123384.P6041786849942722725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose 2 (n + 2) : ℝ) + (n : ℝ) * Real.logb 2 (10 : ℝ)⌉

end

end A123384.P6041786849942722725

namespace A123384

/-- `ceil(C(2, n+2)+n*log2(10))` -/
def P6041786849942722725.Spec : Prop :=
  ∀ n, P6041786849942722725.a n = A123384 n

end A123384

/-! ## A123384.P15569792904356081190

`lt[n^A008952(n), 2*n]`
-/

namespace A123384.P15569792904356081190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A008952 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A123384.P15569792904356081190

namespace A123384

/-- `lt[n^A008952(n), 2*n]` -/
def P15569792904356081190.Spec : Prop :=
  ∀ n, (P15569792904356081190.a n : ℤ) = A123384 n

end A123384

/-! ## A123384.P4754925365740744026

`xor(A000007(n), A067497(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123384

/-- `xor(A000007(n), A067497(n))` -/
def P4754925365740744026.Spec : Prop :=
  ∀ n, P4754925365740744026.a n = A123384 n

theorem P4754925365740744026.correct : P4754925365740744026.Spec := by
  intro n
  simp only [A123384]

end A123384

/-! ## A123384.P15907708559778339091

`A067497(n)^A055396(A004277(n))`
-/

namespace A123384.P15907708559778339091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067497 n : ℚ) ^ (A055396 (A004277 n).toNat : ℤ)

end

end A123384.P15907708559778339091

namespace A123384

/-- `A067497(n)^A055396(A004277(n))` -/
def P15907708559778339091.Spec : Prop :=
  ∀ n, P15907708559778339091.a n = (A123384 n : ℚ)

end A123384

/-! ## A123384.P1005995207533060522

`∏{d}[ceil(n*log2(10)), A014963(#)]`
-/

namespace A123384.P1005995207533060522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (10 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A123384.P1005995207533060522

namespace A123384

/-- `∏{d}[ceil(n*log2(10)), A014963(#)]` -/
def P1005995207533060522.Spec : Prop :=
  ∀ n, P1005995207533060522.a n = A123384 n

end A123384

/-! ## A123384.P16105496067420669697

`A028310(A067497(n))`
-/

namespace A123384.P16105496067420669697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A067497 n).toNat

end

end A123384.P16105496067420669697

namespace A123384

/-- `A028310(A067497(n))` -/
def P16105496067420669697.Spec : Prop :=
  ∀ n, P16105496067420669697.a n = A123384 n

end A123384

/-! ## A123384.P5840024712786950834

`A028310(eq[1, A008952(n)])`
-/

namespace A123384.P5840024712786950834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123384.P5840024712786950834

namespace A123384

/-- `A028310(eq[1, A008952(n)])` -/
def P5840024712786950834.Spec : Prop :=
  ∀ n, P5840024712786950834.a n = A123384 n

end A123384

/-! ## A123384.P7248187152522966597

`record[A028310(n)/A008952(n)]`
-/

namespace A123384.P7248187152522966597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A008952 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123384.P7248187152522966597

namespace A123384

/-- `record[A028310(n)/A008952(n)]` -/
def P7248187152522966597.Spec : Prop :=
  ∀ n, P7248187152522966597.a n = (A123384 n : ℚ)

end A123384

/-! ## A123384.P4245651287221531960

`A138153(A067497(n)+1)`
-/

namespace A123384.P4245651287221531960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (A067497 n + 1).toNat

end

end A123384.P4245651287221531960

namespace A123384

/-- `A138153(A067497(n)+1)` -/
def P4245651287221531960.Spec : Prop :=
  ∀ n, P4245651287221531960.a n = A123384 n

end A123384

/-! ## A123384.P18054003918215022894

`eq[A008952(n), A141044(n)]`
-/

namespace A123384.P18054003918215022894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123384.P18054003918215022894

namespace A123384

/-- `eq[A008952(n), A141044(n)]` -/
def P18054003918215022894.Spec : Prop :=
  ∀ n, (P18054003918215022894.a n : ℤ) = A123384 n

end A123384

/-! ## A123384.P8957902585344944726

`A065033(A067497(2*n))`
-/

namespace A123384.P8957902585344944726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A067497 (2 * n)).toNat

end

end A123384.P8957902585344944726

namespace A123384

/-- `A065033(A067497(2*n))` -/
def P8957902585344944726.Spec : Prop :=
  ∀ n, P8957902585344944726.a n = A123384 n

end A123384

/-! ## A123384.P102966074827099926

`A123108(2*A067497(n))`
-/

namespace A123384.P102966074827099926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A067497 n).toNat

end

end A123384.P102966074827099926

namespace A123384

/-- `A123108(2*A067497(n))` -/
def P102966074827099926.Spec : Prop :=
  ∀ n, P102966074827099926.a n = A123384 n

end A123384

/-! ## A123384.P17386640256826924549

`record[A065033(2*n)/A008952(n)]`
-/

namespace A123384.P17386640256826924549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n) : ℚ) / (A008952 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123384.P17386640256826924549

namespace A123384

/-- `record[A065033(2*n)/A008952(n)]` -/
def P17386640256826924549.Spec : Prop :=
  ∀ n, P17386640256826924549.a n = (A123384 n : ℚ)

end A123384

/-! ## A123384.P3399120203710884070

`A004526(A067497(2*n)+A054977(n))`
-/

namespace A123384.P3399120203710884070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067497 (2 * n) + A054977 n).toNat

end

end A123384.P3399120203710884070

namespace A123384

/-- `A004526(A067497(2*n)+A054977(n))` -/
def P3399120203710884070.Spec : Prop :=
  ∀ n, P3399120203710884070.a n = A123384 n

end A123384

/-! ## A123384.P12278909050207236497

`ceil(log2(A034474(n))+n)`
-/

namespace A123384.P12278909050207236497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A034474 n : ℝ) + (n : ℝ)⌉

end

end A123384.P12278909050207236497

namespace A123384

/-- `ceil(log2(A034474(n))+n)` -/
def P12278909050207236497.Spec : Prop :=
  ∀ n, P12278909050207236497.a n = A123384 n

end A123384

/-! ## A123384.P2839708073985508908

`floor(log2(A020729(n))+n)`
-/

namespace A123384.P2839708073985508908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A020729 n : ℝ) + (n : ℝ)⌋

end

end A123384.P2839708073985508908

namespace A123384

/-- `floor(log2(A020729(n))+n)` -/
def P2839708073985508908.Spec : Prop :=
  ∀ n, P2839708073985508908.a n = A123384 n

end A123384

/-!
# A123385: a(n) = (n!)^2/2.

The programs for A123385, the canonical program `A123385.P5413672517600473098` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123385 has offset 2).

The definition of A123385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123385.P5413672517600473098

`(n+2)!²/2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123385

/-- `(n+2)!²/2` -/
def P5413672517600473098.Spec : Prop :=
  ∀ n, P5413672517600473098.a n = (A123385 (n + 2) : ℚ)

end A123385

/-! ## A123385.P3966167450369733227

`∏[(n+2)²]/2`
-/

namespace A123385.P3966167450369733227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A123385.P3966167450369733227

namespace A123385

/-- `∏[(n+2)²]/2` -/
def P3966167450369733227.Spec : Prop :=
  ∀ n, P3966167450369733227.a n = (A123385 (n + 2) : ℚ)

end A123385

/-! ## A123385.P13146602697759981712

`record[abs(2-n)!²/2]`
-/

namespace A123385.P13146602697759981712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |2 - (n : ℤ)|.toNat ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123385.P13146602697759981712

namespace A123385

/-- `record[abs(2-n)!²/2]` -/
def P13146602697759981712.Spec : Prop :=
  ∀ n, P13146602697759981712.a n = (A123385 (n + 2) : ℚ)

end A123385

/-! ## A123385.P16304708840120673993

`((n+2)!*cos(atan(1)))²`
-/

namespace A123385.P16304708840120673993
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) : ℝ) * Real.cos (Real.arctan (1 : ℝ))) ^ 2

end

end A123385.P16304708840120673993

namespace A123385

/-- `((n+2)!*cos(atan(1)))²` -/
def P16304708840120673993.Spec : Prop :=
  ∀ n, P16304708840120673993.a n = (A123385 (n + 2) : ℝ)

end A123385

/-!
# A123387: Number of triangular numbers <= n-th prime.

The programs for A123387, the canonical program `A123387.P17623723668972283392` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123387 has offset 1).

The definition of A123387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123387.P17623723668972283392

`A002024(A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123387

/-- `A002024(A000040(n+1)+1)` -/
def P17623723668972283392.Spec : Prop :=
  ∀ n, P17623723668972283392.a n = A123387 (n + 1)

theorem P17623723668972283392.correct : P17623723668972283392.Spec := by
  intro n
  simp only [A123387, Nat.add_sub_cancel]

end A123387

/-! ## A123387.P12062461601189528091

`A317137(n+1)+1`
-/

namespace A123387.P12062461601189528091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (n + 1) + 1

end

end A123387.P12062461601189528091

namespace A123387

/-- `A317137(n+1)+1` -/
def P12062461601189528091.Spec : Prop :=
  ∀ n, P12062461601189528091.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P10838610087020901239

`round(sqrt(A072055(n+1)))`
-/

namespace A123387.P10838610087020901239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A072055 (n + 1) : ℝ))

end

end A123387.P10838610087020901239

namespace A123387

/-- `round(sqrt(A072055(n+1)))` -/
def P10838610087020901239.Spec : Prop :=
  ∀ n, P10838610087020901239.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P6202651701991366518

`round(sqrt(A073582(n+1)))`
-/

namespace A123387.P6202651701991366518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A073582 (n + 1) : ℝ))

end

end A123387.P6202651701991366518

namespace A123387

/-- `round(sqrt(A073582(n+1)))` -/
def P6202651701991366518.Spec : Prop :=
  ∀ n, P6202651701991366518.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P9983344742048653581

`round(sqrt(A089241(n+1)))`
-/

namespace A123387.P9983344742048653581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A089241 (n + 1) : ℝ))

end

end A123387.P9983344742048653581

namespace A123387

/-- `round(sqrt(A089241(n+1)))` -/
def P9983344742048653581.Spec : Prop :=
  ∀ n, P9983344742048653581.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P3782500733628418569

`round(sqrt(A166496(n+1)))`
-/

namespace A123387.P3782500733628418569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A166496 (n + 1) : ℝ))

end

end A123387.P3782500733628418569

namespace A123387

/-- `round(sqrt(A166496(n+1)))` -/
def P3782500733628418569.Spec : Prop :=
  ∀ n, P3782500733628418569.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P3282567460230608159

`A057062(n+1)+char[1]`
-/

namespace A123387.P3282567460230608159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A123387.P3282567460230608159

namespace A123387

/-- `A057062(n+1)+char[1]` -/
def P3282567460230608159.Spec : Prop :=
  ∀ n, P3282567460230608159.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P16717210992044571243

`round(sqrt(A100484(n+1)+1))`
-/

namespace A123387.P16717210992044571243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A100484 (n + 1) + 1 : ℝ))

end

end A123387.P16717210992044571243

namespace A123387

/-- `round(sqrt(A100484(n+1)+1))` -/
def P16717210992044571243.Spec : Prop :=
  ∀ n, P16717210992044571243.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P7307416855603609256

`round(sqrt(2*A008864(n+1)))`
-/

namespace A123387.P7307416855603609256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A008864 (n + 1) : ℝ))

end

end A123387.P7307416855603609256

namespace A123387

/-- `round(sqrt(2*A008864(n+1)))` -/
def P7307416855603609256.Spec : Prop :=
  ∀ n, P7307416855603609256.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P2553145892911778666

`round(sqrt(sqrt(A069262(n+1))+1))`
-/

namespace A123387.P2553145892911778666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A069262 (n + 1) : ℝ) + 1))

end

end A123387.P2553145892911778666

namespace A123387

/-- `round(sqrt(sqrt(A069262(n+1))+1))` -/
def P2553145892911778666.Spec : Prop :=
  ∀ n, P2553145892911778666.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P11106703550988567786

`A020725(A317137(n+1))`
-/

namespace A123387.P11106703550988567786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A317137 (n + 1)).toNat

end

end A123387.P11106703550988567786

namespace A123387

/-- `A020725(A317137(n+1))` -/
def P11106703550988567786.Spec : Prop :=
  ∀ n, P11106703550988567786.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P8937706754984451959

`A057062(A348776(n+1))`
-/

namespace A123387.P8937706754984451959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (A348776 (n + 1)).toNat

end

end A123387.P8937706754984451959

namespace A123387

/-- `A057062(A348776(n+1))` -/
def P8937706754984451959.Spec : Prop :=
  ∀ n, P8937706754984451959.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P17656943891366231201

`A063524(n)+A057062(n+1)`
-/

namespace A123387.P17656943891366231201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A057062 (n + 1)

end

end A123387.P17656943891366231201

namespace A123387

/-- `A063524(n)+A057062(n+1)` -/
def P17656943891366231201.Spec : Prop :=
  ∀ n, P17656943891366231201.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P15944276876451551419

`A057062(n+1)-A060576(n)+1`
-/

namespace A123387.P15944276876451551419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (n + 1) - A060576 n + 1

end

end A123387.P15944276876451551419

namespace A123387

/-- `A057062(n+1)-A060576(n)+1` -/
def P15944276876451551419.Spec : Prop :=
  ∀ n, P15944276876451551419.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P7257780446687244229

`round(sqrt(A161344(n+2)))`
-/

namespace A123387.P7257780446687244229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A161344 (n + 2) : ℝ))

end

end A123387.P7257780446687244229

namespace A123387

/-- `round(sqrt(A161344(n+2)))` -/
def P7257780446687244229.Spec : Prop :=
  ∀ n, P7257780446687244229.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P9765421385323384822

`round(sqrt(A001747(n+2)+1))`
-/

namespace A123387.P9765421385323384822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001747 (n + 2) + 1 : ℝ))

end

end A123387.P9765421385323384822

namespace A123387

/-- `round(sqrt(A001747(n+2)+1))` -/
def P9765421385323384822.Spec : Prop :=
  ∀ n, P9765421385323384822.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P17760294255440888463

`round(sqrt(2*A093515(2*n+1)))`
-/

namespace A123387.P17760294255440888463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A093515 (2 * n + 1) : ℝ))

end

end A123387.P17760294255440888463

namespace A123387

/-- `round(sqrt(2*A093515(2*n+1)))` -/
def P17760294255440888463.Spec : Prop :=
  ∀ n, P17760294255440888463.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P1170008586045279851

`round(sqrt(2*(record[A000010(n+1)]+1)+1))`
-/

namespace A123387.P1170008586045279851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) + 1 : ℝ))

end

end A123387.P1170008586045279851

namespace A123387

/-- `round(sqrt(2*(record[A000010(n+1)]+1)+1))` -/
def P1170008586045279851.Spec : Prop :=
  ∀ n, P1170008586045279851.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P17983374947683062675

`round(sqrt(2*record[A006530(2*n+1)]+1))`
-/

namespace A123387.P17983374947683062675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℝ))

end

end A123387.P17983374947683062675

namespace A123387

/-- `round(sqrt(2*record[A006530(2*n+1)]+1))` -/
def P17983374947683062675.Spec : Prop :=
  ∀ n, P17983374947683062675.a n = A123387 (n + 1)

end A123387

/-! ## A123387.P8079762897975782225

`round(sqrt(record[(n+2)*(4-A000005(n+1)!)]))`
-/

namespace A123387.P8079762897975782225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (4 - (Nat.factorial (A000005 (n + 1)).toNat : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A123387.P8079762897975782225

namespace A123387

/-- `round(sqrt(record[(n+2)*(4-A000005(n+1)!)]))` -/
def P8079762897975782225.Spec : Prop :=
  ∀ n, P8079762897975782225.a n = A123387 (n + 1)

end A123387

/-!
# A123389: Ratio of each term of the primorial function to the corresponding term of the factorial function (rounded to nearest integer).

The programs for A123389, the canonical program `A123389.P3133180307451027921` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123389 has offset 1).

The definition of A123389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123389.P3686738672608090494

`round(∏[p?[comp[n²]]/(n+1)])`
-/

namespace A123389.P3686738672608090494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A123389.P3686738672608090494

namespace A123389

/-- `round(∏[p?[comp[n²]]/(n+1)])` -/
def P3686738672608090494.Spec : Prop :=
  ∀ n, P3686738672608090494.a n = A123389 (n + 1)

end A123389

/-! ## A123389.P3133180307451027921

`round(∏[A000040(n+1)/(n+1)])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123389

/-- `round(∏[A000040(n+1)/(n+1)])` -/
def P3133180307451027921.Spec : Prop :=
  ∀ n, P3133180307451027921.a n = A123389 (n + 1)

theorem P3133180307451027921.correct : P3133180307451027921.Spec := by
  intro n
  simp only [A123389, Nat.add_sub_cancel]

end A123389

/-! ## A123389.P6700194489719367031

`round(∏[(A008864(n+1)-1)/(n+1)])`
-/

namespace A123389.P6700194489719367031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A123389.P6700194489719367031

namespace A123389

/-- `round(∏[(A008864(n+1)-1)/(n+1)])` -/
def P6700194489719367031.Spec : Prop :=
  ∀ n, P6700194489719367031.a n = A123389 (n + 1)

end A123389

/-! ## A123389.P16070976131121756802

`round(A002110(n+1)/record[A047920(n)])`
-/

namespace A123389.P16070976131121756802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002110 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))

end

end A123389.P16070976131121756802

namespace A123389

/-- `round(A002110(n+1)/record[A047920(n)])` -/
def P16070976131121756802.Spec : Prop :=
  ∀ n, P16070976131121756802.a n = A123389 (n + 1)

end A123389

/-! ## A123389.P12142995735109656348

`round(A002110(n+1)/A000142(n+1))`
-/

namespace A123389.P12142995735109656348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002110 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ))

end

end A123389.P12142995735109656348

namespace A123389

/-- `round(A002110(n+1)/A000142(n+1))` -/
def P12142995735109656348.Spec : Prop :=
  ∀ n, P12142995735109656348.a n = A123389 (n + 1)

end A123389

/-!
# A123390: Triangle read by rows: n-th row starts with n and continues with half the previous value as long as that is even.

The programs for A123390, the canonical program `A123390.P6182464062084427688` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123390 has offset 1).

The definition of A123390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A108918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123390.P6182464062084427688

`A003602(A108918(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A123390

/-- `A003602(A108918(n+1))` -/
def P6182464062084427688.Spec : Prop :=
  ∀ n, P6182464062084427688.a n = A123390 (n + 1)

theorem P6182464062084427688.correct : P6182464062084427688.Spec := by
  intro n
  simp only [A123390, Nat.add_sub_cancel]

end A123390

/-! ## A123390.P7142873009816602707

`∑[A079559(n)]/A182105(n+1)`
-/

namespace A123390.P7142873009816602707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P7142873009816602707

namespace A123390

/-- `∑[A079559(n)]/A182105(n+1)` -/
def P7142873009816602707.Spec : Prop :=
  ∀ n, P7142873009816602707.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P5493794528476778223

`A339451(n)/A182105(n+1)+1`
-/

namespace A123390.P5493794528476778223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339451 n : ℚ) / (A182105 (n + 1) : ℚ) + 1

end

end A123390.P5493794528476778223

namespace A123390

/-- `A339451(n)/A182105(n+1)+1` -/
def P5493794528476778223.Spec : Prop :=
  ∀ n, P5493794528476778223.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P873187547488214656

`A046699(n+2)/A182105(n+1)`
-/

namespace A123390.P873187547488214656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046699 (n + 2) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P873187547488214656

namespace A123390

/-- `A046699(n+2)/A182105(n+1)` -/
def P873187547488214656.Spec : Prop :=
  ∀ n, P873187547488214656.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P9162684741950967762

`∑[1-A308187(n+1)]/A182105(n+1)`
-/

namespace A123390.P9162684741950967762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A308187 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P9162684741950967762

namespace A123390

/-- `∑[1-A308187(n+1)]/A182105(n+1)` -/
def P9162684741950967762.Spec : Prop :=
  ∀ n, P9162684741950967762.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P17130334491053887548

`∑[2-A308188(n+1)]/A182105(n+1)`
-/

namespace A123390.P17130334491053887548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A308188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P17130334491053887548

namespace A123390

/-- `∑[2-A308188(n+1)]/A182105(n+1)` -/
def P17130334491053887548.Spec : Prop :=
  ∀ n, P17130334491053887548.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P10211919786690296955

`∑[char[2*n-A000120(n)]]/A182105(n+1)`
-/

namespace A123390.P10211919786690296955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000120 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P10211919786690296955

namespace A123390

/-- `∑[char[2*n-A000120(n)]]/A182105(n+1)` -/
def P10211919786690296955.Spec : Prop :=
  ∀ n, P10211919786690296955.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P17541704095420950026

`∑[floor(2/(A082850(n+1)+1))]/A182105(n+1)`
-/

namespace A123390.P17541704095420950026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A082850 (n + 1) + 1 : ℚ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P17541704095420950026

namespace A123390

/-- `∑[floor(2/(A082850(n+1)+1))]/A182105(n+1)` -/
def P17541704095420950026.Spec : Prop :=
  ∀ n, P17541704095420950026.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P5781757357317278440

`∑[2-A001221(3*A182105(n+1))]/A182105(n+1)`
-/

namespace A123390.P5781757357317278440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001221 (3 * A182105 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P5781757357317278440

namespace A123390

/-- `∑[2-A001221(3*A182105(n+1))]/A182105(n+1)` -/
def P5781757357317278440.Spec : Prop :=
  ∀ n, P5781757357317278440.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P2944365705042226328

`A007843(n+1)/A101925(A182105(n+1))`
-/

namespace A123390.P2944365705042226328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007843 (n + 1) : ℚ) / (A101925 (A182105 (n + 1)).toNat : ℚ)

end

end A123390.P2944365705042226328

namespace A123390

/-- `A007843(n+1)/A101925(A182105(n+1))` -/
def P2944365705042226328.Spec : Prop :=
  ∀ n, P2944365705042226328.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P18433401852075090992

`(A045412(n+1)-(n+1))/A182105(A045412(n+1))`
-/

namespace A123390.P18433401852075090992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045412 (n + 1) - (n + 1 : ℤ) : ℚ) / (A182105 (A045412 (n + 1)).toNat : ℚ)

end

end A123390.P18433401852075090992

namespace A123390

/-- `(A045412(n+1)-(n+1))/A182105(A045412(n+1))` -/
def P18433401852075090992.Spec : Prop :=
  ∀ n, P18433401852075090992.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P15925118278845797941

`∑[∑[A159785(n+1)]%2]/A182105(n+1)`
-/

namespace A123390.P15925118278845797941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P15925118278845797941

namespace A123390

/-- `∑[∑[A159785(n+1)]%2]/A182105(n+1)` -/
def P15925118278845797941.Spec : Prop :=
  ∀ n, P15925118278845797941.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P13876743409913472122

`∑[A285345(A182105(n+1)²)]/A182105(n+1)`
-/

namespace A123390.P13876743409913472122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (A182105 (n + 1) ^ 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P13876743409913472122

namespace A123390

/-- `∑[A285345(A182105(n+1)²)]/A182105(n+1)` -/
def P13876743409913472122.Spec : Prop :=
  ∀ n, P13876743409913472122.a n = (A123390 (n + 1) : ℚ)

end A123390

/-! ## A123390.P15866114623880607394

`∑[A007814(A182105(n+1)²+1)]/A182105(n+1)`
-/

namespace A123390.P15866114623880607394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A182105 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P15866114623880607394

namespace A123390

/-- `∑[A007814(A182105(n+1)²+1)]/A182105(n+1)` -/
def P15866114623880607394.Spec : Prop :=
  ∀ n, P15866114623880607394.a n = (A123390 (n + 1) : ℚ)

end A123390

/-!
# A123391: a(n) = sum of exponents that are primes in the prime factorization of n.

The programs for A123391, the canonical program `A123391.P18124121775959414335` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123391 has offset 1).

The definition of A123391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123391.P18124121775959414335

`∑{e}[n+1, A061397(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123391

/-- `∑{e}[n+1, A061397(#)]` -/
def P18124121775959414335.Spec : Prop :=
  ∀ n, P18124121775959414335.a n = A123391 (n + 1)

theorem P18124121775959414335.correct : P18124121775959414335.Spec := by
  intro n
  simp only [A123391, Nat.add_sub_cancel]

end A123391

/-! ## A123391.P8266249765196722602

`∑{e}[n+1, A331044(#)]`
-/

namespace A123391.P8266249765196722602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A331044 (Nat.factorization (f1 n) p)

end

end A123391.P8266249765196722602

namespace A123391

/-- `∑{e}[n+1, A331044(#)]` -/
def P8266249765196722602.Spec : Prop :=
  ∀ n, P8266249765196722602.a n = A123391 (n + 1)

end A123391

/-! ## A123391.P16174438128433002237

`∑{e}[n+1, #%A014963(#)²]`
-/

namespace A123391.P16174438128433002237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (Nat.factorization (f1 n) p : ℤ) (A014963 (Nat.factorization (f1 n) p) ^ 2)

end

end A123391.P16174438128433002237

namespace A123391

/-- `∑{e}[n+1, #%A014963(#)²]` -/
def P16174438128433002237.Spec : Prop :=
  ∀ n, P16174438128433002237.a n = A123391 (n + 1)

end A123391

/-! ## A123391.P875348757123237748

`∑{e}[n+1, and(#, A000005(#)-3)]`
-/

namespace A123391.P875348757123237748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.land (Nat.factorization (f1 n) p : ℤ) (A000005 (Nat.factorization (f1 n) p) - 3)

end

end A123391.P875348757123237748

namespace A123391

/-- `∑{e}[n+1, and(#, A000005(#)-3)]` -/
def P875348757123237748.Spec : Prop :=
  ∀ n, P875348757123237748.a n = A123391 (n + 1)

end A123391

/-! ## A123391.P17629841837990952224

`A125030(A057521(n+1))`
-/

namespace A123391.P17629841837990952224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125030 (A057521 (n + 1)).toNat

end

end A123391.P17629841837990952224

namespace A123391

/-- `A125030(A057521(n+1))` -/
def P17629841837990952224.Spec : Prop :=
  ∀ n, P17629841837990952224.a n = A123391 (n + 1)

end A123391

/-! ## A123391.P13963282055501331834

`A125030(A212173(n+1))`
-/

namespace A123391.P13963282055501331834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125030 (A212173 (n + 1)).toNat

end

end A123391.P13963282055501331834

namespace A123391

/-- `A125030(A212173(n+1))` -/
def P13963282055501331834.Spec : Prop :=
  ∀ n, P13963282055501331834.a n = A123391 (n + 1)

end A123391

/-! ## A123391.P14869203429108142694

`A001222(n+1)-A125071(n+1)`
-/

namespace A123391.P14869203429108142694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A125071 (n + 1)

end

end A123391.P14869203429108142694

namespace A123391

/-- `A001222(n+1)-A125071(n+1)` -/
def P14869203429108142694.Spec : Prop :=
  ∀ n, P14869203429108142694.a n = A123391 (n + 1)

end A123391

/-! ## A123391.P5585313894032018929

`A125030(n+1)-A056169(n+1)`
-/

namespace A123391.P5585313894032018929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125030 (n + 1) - A056169 (n + 1)

end

end A123391.P5585313894032018929

namespace A123391

/-- `A125030(n+1)-A056169(n+1)` -/
def P5585313894032018929.Spec : Prop :=
  ∀ n, P5585313894032018929.a n = A123391 (n + 1)

end A123391

/-! ## A123391.P11456911857850246730

`∑{e}[A191558(n+1), #-A191558(#)]`
-/

namespace A123391.P11456911857850246730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - A191558 (Nat.factorization (f1 n).natAbs p))

end

end A123391.P11456911857850246730

namespace A123391

/-- `∑{e}[A191558(n+1), #-A191558(#)]` -/
def P11456911857850246730.Spec : Prop :=
  ∀ n, P11456911857850246730.a n = A123391 (n + 1)

end A123391

/-! ## A123391.P17816593615513767352

`A101436(n+1)+A125030(n+1)-A125029(n+1)`
-/

namespace A123391.P17816593615513767352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (n + 1) + (A125030 (n + 1) - A125029 (n + 1))

end

end A123391.P17816593615513767352

namespace A123391

/-- `A101436(n+1)+A125030(n+1)-A125029(n+1)` -/
def P17816593615513767352.Spec : Prop :=
  ∀ n, P17816593615513767352.a n = A123391 (n + 1)

end A123391

/-! ## A123391.P3263324477858763045

`A125030(n+1)-A125029((n+1)²)`
-/

namespace A123391.P3263324477858763045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125030 (n + 1) - A125029 ((n + 1) ^ 2)

end

end A123391.P3263324477858763045

namespace A123391

/-- `A125030(n+1)-A125029((n+1)²)` -/
def P3263324477858763045.Spec : Prop :=
  ∀ n, P3263324477858763045.a n = A123391 (n + 1)

end A123391

/-!
# A123392: a(-3) = a(-2) = a(-1) = 0, a(0) = 1, a(n) = a(n-1) + 2*a(n-2) + 2*a(n-3) + a(n-4), for n>0.

The programs for A123392, there is no canonical definition to state claims against.
-/

/-! ## A123392.P6812303015676726326

`a(n-1)+2*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123392.P6812303015676726326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A123392.P6812303015676726326

/-! ## A123392.P14883175353190582130

`ogf(-x^3/(-1+x+2x^2+2x^3+x^4))`
-/

namespace A123392.P14883175353190582130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -1, -2, -2, -1] n

end

end A123392.P14883175353190582130

/-! ## A123392.P4111430100621086052

`A210460(n+2)%record[Δ[A005908(n)]]`
-/

namespace A123392.P4111430100621086052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210460 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A123392.P4111430100621086052

/-! ## A123392.P575241262889110512

`Δ[Δ[A005913(n+2)]]%A210460(n+3)`
-/

namespace A123392.P575241262889110512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005913 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A210460 (n + 3))

end

end A123392.P575241262889110512

/-! ## A123392.P5813244447075406065

`A033182(A342600(n+1))`
-/

namespace A123392.P5813244447075406065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A342600 (n + 1)).toNat

end

end A123392.P5813244447075406065

/-!
# A123393: Values X satisfying the equation 7(X-Y)^4-2XY=0, where X>=Y.

The programs for A123393, there is no canonical definition to state claims against.
-/

/-! ## A123393.P16819794727023673527

`A123394(n)/2`
-/

namespace A123393.P16819794727023673527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123394 n : ℚ) / 2

end

end A123393.P16819794727023673527

/-! ## A123393.P14268799622300340890

`(A322709(n)+1)*A068204(n+1)`
-/

namespace A123393.P14268799622300340890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322709 n + 1) * A068204 (n + 1)

end

end A123393.P14268799622300340890

/-! ## A123393.P15346493420895992277

`(A068203(n)+1)*A068204(n+1)/2`
-/

namespace A123393.P15346493420895992277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A068203 n + 1) * A068204 (n + 1) : ℚ) / 2

end

end A123393.P15346493420895992277

/-!
# A123394: Values X satisfying the equation 7(X-Y)^4-8XY=0, where X>=Y.

The programs for A123394, there is no canonical definition to state claims against.
-/

/-! ## A123394.P2638321201812949049

`2*A123393(n)`
-/

namespace A123394.P2638321201812949049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123393 n

end

end A123394.P2638321201812949049

/-! ## A123394.P18060595307943539590

`(A068203(n)+1)*A068204(n+1)`
-/

namespace A123394.P18060595307943539590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068203 n + 1) * A068204 (n + 1)

end

end A123394.P18060595307943539590

/-! ## A123394.P4700402325273787183

`2*(A322709(n)+1)*A068204(n+1)`
-/

namespace A123394.P4700402325273787183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((A322709 n + 1) * A068204 (n + 1))

end

end A123394.P4700402325273787183

/-! ## A123394.P10725132600728312670

`A123393(A023443(n+1))+A123393(n)`
-/

namespace A123394.P10725132600728312670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123393 (A023443 (n + 1)).toNat + A123393 n

end

end A123394.P10725132600728312670

/-!
# A123395: Values X satisfying the equation 7(X-Y)^4-16XY=0, where X>=Y.

The programs for A123395, there is no canonical definition to state claims against.
-/

/-! ## A123395.P5837543107140899247

`(A001081(n)+1)*A001080(n)`
-/

namespace A123395.P5837543107140899247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001081 n + 1) * A001080 n

end

end A123395.P5837543107140899247

/-! ## A123395.P1629845110222344625

`(A001081(n)+1)*A204517(3*n+2)`
-/

namespace A123395.P1629845110222344625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001081 n + 1) * A204517 (3 * n + 2)

end

end A123395.P1629845110222344625

/-! ## A123395.P5943683354506669755

`A175672(n+1)+A175672(n+1)/A001081(n)`
-/

namespace A123395.P5943683354506669755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175672 (n + 1) : ℚ) + (A175672 (n + 1) : ℚ) / (A001081 n : ℚ)

end

end A123395.P5943683354506669755

/-! ## A123395.P1122394791739310493

`A175672(n+1)+A307173(n+1)-A159678(n+1)`
-/

namespace A123395.P1122394791739310493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175672 (n + 1) + (A307173 (n + 1) - A159678 (n + 1))

end

end A123395.P1122394791739310493

/-! ## A123395.P5123010539647822522

`(A001081(n)+1)*(∑[A266698(n+1)]-A266698(n+1))`
-/

namespace A123395.P5123010539647822522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001081 n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j - A266698 (n + 1))

end

end A123395.P5123010539647822522

/-!
# A123397: Values X satisfying the equation 9(X-Y)^4-2XY=0, where X>=Y.

The programs for A123397, there is no canonical definition to state claims against.
-/

/-! ## A123397.P13752295475016928247

`A123056(2*n)/3`
-/

namespace A123397.P13752295475016928247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123056 (2 * n) : ℚ) / 3

end

end A123397.P13752295475016928247

/-! ## A123397.P17120792522498184947

`A123057(2*n)/6`
-/

namespace A123397.P17120792522498184947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123057 (2 * n) : ℚ) / 6

end

end A123397.P17120792522498184947

/-!
# A123399: Orders of "Gray" fields.

The programs for A123399, there is no canonical definition to state claims against.
-/

/-! ## A123399.P3987872522982365196

`record[A053447(A360247(n+1))]`
-/

namespace A123399.P3987872522982365196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (A360247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123399.P3987872522982365196

/-! ## A123399.P12931882892633178341

`∩[A054639(n+1), A360247(n+1)]`
-/

namespace A123399.P12931882892633178341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123399.P12931882892633178341

/-! ## A123399.P11320807669720061897

`record[A003558(A236510(n+1))]`
-/

namespace A123399.P11320807669720061897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A236510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123399.P11320807669720061897

/-! ## A123399.P10955030202396038845

`∩[A054639(n+1), A236510(n+1)]`
-/

namespace A123399.P10955030202396038845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123399.P10955030202396038845

