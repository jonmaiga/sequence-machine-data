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
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A179102: A variation on A119505 that gives a limited digit set {2, 3, 4, 6, 7, 8, 9}.

The programs for A179102, there is no canonical definition to state claims against.
-/

/-! ## A179102.P16521093814690323588

`A000796(Δ[Δ[A227844(n+1)]]+11)`
-/

namespace A179102.P16521093814690323588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (n + 1) - f1 n + 11).toNat + 1)

end

end A179102.P16521093814690323588

/-! ## A179102.P17847245765139887313

`A000796(A187747(n)+A001113(n)+11)`
-/

namespace A179102.P17847245765139887313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A187747 n + A001113 (n + 1) + 11).toNat + 1)

end

end A179102.P17847245765139887313

/-! ## A179102.P13725344973296111423

`A000796(A073212(n)-A001113(n)+11)`
-/

namespace A179102.P13725344973296111423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A073212 n - A001113 (n + 1) + 11).toNat + 1)

end

end A179102.P13725344973296111423

/-! ## A179102.P10646884349883347202

`A000796(A054249(n+1)+A033999(n)+11)`
-/

namespace A179102.P10646884349883347202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A054249 (n + 1) + A033999 n + 11).toNat + 1)

end

end A179102.P10646884349883347202

/-! ## A179102.P14459484676518354130

`A000796((A187747(n)+A073212(n))/2+11)`
-/

namespace A179102.P14459484676518354130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((A187747 n + A073212 n : ℚ) / 2 + 11)).toNat + 1)

end

end A179102.P14459484676518354130

/-! ## A179102.P171458040074948567

`A000796(A062157(n+1)+A054249(n+1)+11)`
-/

namespace A179102.P171458040074948567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A062157 (n + 1) + A054249 (n + 1) + 11).toNat + 1)

end

end A179102.P171458040074948567

/-! ## A179102.P6410392308080578920

`A000796(A123153(n+1)/A000040(n+1)+11)`
-/

namespace A179102.P6410392308080578920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((A123153 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) + 11)).toNat + 1)

end

end A179102.P6410392308080578920

/-! ## A179102.P14564381969964999309

`A000796(Δ[A059582(n)]+11)`
-/

namespace A179102.P14564381969964999309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (n + 1) - f1 n + 11).toNat + 1)

end

end A179102.P14564381969964999309

/-! ## A179102.P13675307784958955944

`A000796(A059582(n+1)-A059582(n)+11)`
-/

namespace A179102.P13675307784958955944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A059582 (n + 1) - A059582 n + 11).toNat + 1)

end

end A179102.P13675307784958955944

/-! ## A179102.P3370718310361255050

`A000796(A165832(A213521(n+1))+A000796(n))`
-/

namespace A179102.P3370718310361255050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A165832 (A213521 (n + 1)).toNat + A000796 (n + 1)).toNat + 1)

end

end A179102.P3370718310361255050

/-!
# A179103: A variation on A119505 that gives a limited digit set {2, 3, 4, 6, 8}.

The programs for A179103, there is no canonical definition to state claims against.
-/

/-! ## A179103.P8379109801287212681

`A000796(A261197(n+1)^(1/3)+16)`
-/

namespace A179103.P8379109801287212681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((A261197 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) + 16)).toNat + 1)

end

end A179103.P8379109801287212681

/-! ## A179103.P1702458080673903822

`A000796(A187747(n)+A001113(n)+16)`
-/

namespace A179103.P1702458080673903822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A187747 n + A001113 (n + 1) + 16).toNat + 1)

end

end A179103.P1702458080673903822

/-! ## A179103.P13391785979231916190

`A000796(A073212(n)-A001113(n)+16)`
-/

namespace A179103.P13391785979231916190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A073212 n - A001113 (n + 1) + 16).toNat + 1)

end

end A179103.P13391785979231916190

/-! ## A179103.P17983078979312413419

`A000796(A000796(n)+a(A000038(n))²)` with `a(0)=4`
-/

namespace A179103.P17983078979312413419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A000796 ((A000796 (n + 1) + a (A000038 n).toNat ^ 2).toNat + 1)

end

end A179103.P17983078979312413419

/-! ## A179103.P11354981342826708393

`A000796(A054249(n+1)+A033999(n)+16)`
-/

namespace A179103.P11354981342826708393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A054249 (n + 1) + A033999 n + 16).toNat + 1)

end

end A179103.P11354981342826708393

/-! ## A179103.P374272019512072895

`A000796(A062157(n+1)+A054249(n+1)+16)`
-/

namespace A179103.P374272019512072895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A062157 (n + 1) + A054249 (n + 1) + 16).toNat + 1)

end

end A179103.P374272019512072895

/-! ## A179103.P3099339345473619482

`A000796(Δ[A059582(n)]+16)`
-/

namespace A179103.P3099339345473619482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (n + 1) - f1 n + 16).toNat + 1)

end

end A179103.P3099339345473619482

/-! ## A179103.P585879922739047637

`A000796(A000796(n)+A174571(A040976(n+2))²)`
-/

namespace A179103.P585879922739047637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A000796 (n + 1) + A174571 (A040976 (n + 2)).toNat ^ 2).toNat + 1)

end

end A179103.P585879922739047637

/-! ## A179103.P13400957760492778809

`A000796(A145154(A333747(n+1))+A000796(n))`
-/

namespace A179103.P13400957760492778809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A145154 (A333747 (n + 1)).toNat + A000796 (n + 1)).toNat + 1)

end

end A179103.P13400957760492778809

/-!
# A179104: A variation on A119505 that gives a limited digit set {2, 3, 4, 5, 6, 7, 8, 9}.

The programs for A179104, there is no canonical definition to state claims against.
-/

/-! ## A179104.P14270225030551687317

`A000796(Δ[Δ[A227844(n+1)]]+22)`
-/

namespace A179104.P14270225030551687317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (n + 1) - f1 n + 22).toNat + 1)

end

end A179104.P14270225030551687317

/-! ## A179104.P16843264746517649894

`A000796(A187747(n)+A001113(n)+22)`
-/

namespace A179104.P16843264746517649894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A187747 n + A001113 (n + 1) + 22).toNat + 1)

end

end A179104.P16843264746517649894

/-! ## A179104.P14818774713718216680

`A000796(A073212(n)-A001113(n)+22)`
-/

namespace A179104.P14818774713718216680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A073212 n - A001113 (n + 1) + 22).toNat + 1)

end

end A179104.P14818774713718216680

/-! ## A179104.P2024590139110426054

`A000796(A054249(n+1)+A033999(n)+22)`
-/

namespace A179104.P2024590139110426054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A054249 (n + 1) + A033999 n + 22).toNat + 1)

end

end A179104.P2024590139110426054

/-! ## A179104.P11727916266218783464

`A000796((A187747(n)+A073212(n))/2+22)`
-/

namespace A179104.P11727916266218783464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((A187747 n + A073212 n : ℚ) / 2 + 22)).toNat + 1)

end

end A179104.P11727916266218783464

/-! ## A179104.P3060011441370221748

`A000796(A123153(n+1)/A000040(n+1)+22)`
-/

namespace A179104.P3060011441370221748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((A123153 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) + 22)).toNat + 1)

end

end A179104.P3060011441370221748

/-! ## A179104.P13671843593695750176

`A000796(Δ[A059582(n)]+22)`
-/

namespace A179104.P13671843593695750176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (n + 1) - f1 n + 22).toNat + 1)

end

end A179104.P13671843593695750176

/-! ## A179104.P3369349493318406143

`A000796(A059582(n+1)-A059582(n)+22)`
-/

namespace A179104.P3369349493318406143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A059582 (n + 1) - A059582 n + 22).toNat + 1)

end

end A179104.P3369349493318406143

/-!
# A179105: Record values in A179066.

The programs for A179105, there is no canonical definition to state claims against.
-/

/-! ## A179105.P3929475310752382957

`record[A179066(n+1)]`
-/

namespace A179105.P3929475310752382957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179105.P3929475310752382957

/-! ## A179105.P1516916561228020835

`A179066(A179110(n+1))`
-/

namespace A179105.P1516916561228020835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179066 (A179110 (n + 1)).toNat

end

end A179105.P1516916561228020835

/-!
# A179107: Records of minima of positive distance d between a square cubefree integer y and a cube of positive and squarefree integer x and such d = y^2 - x^3.

The programs for A179107, there is no canonical definition to state claims against.
-/

/-! ## A179107.P14470071115395016451

`A179109(n+1)²%A179108(n+1)`
-/

namespace A179107.P14470071115395016451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179109 (n + 1) ^ 2) (A179108 (n + 1))

end

end A179107.P14470071115395016451

/-! ## A179107.P9703995445329363421

`A322382(A006512(2*n+1)+A000537(3*n))`
-/

namespace A179107.P9703995445329363421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A006512 (2 * n + 1) + A000537 (3 * n)).toNat

end

end A179107.P9703995445329363421

/-!
# A179108: Values x for records of minima of positive distance d between a square cubefree integer y and a cube of positive and squarefree integer x and such d = y^2 - x^3.

The programs for A179108, there is no canonical definition to state claims against.
-/

/-! ## A179108.P16497828700365498272

`round(root(A179109(n+1), 3)²)`
-/

namespace A179108.P16497828700365498272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A179109 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2)

end

end A179108.P16497828700365498272

/-! ## A179108.P2583128188057386453

`root(A179109(n+1)²-A179107(n+1), 3)`
-/

namespace A179108.P2583128188057386453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179109 (n + 1) ^ 2 - A179107 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A179108.P2583128188057386453

/-!
# A179109: Values y for records of minima of positive distance d between a square cubefree integer y and a cube of positive and squarefree integer x and such d = y^2 - x^3.

The programs for A179109, there is no canonical definition to state claims against.
-/

/-! ## A179109.P13978015757736111225

`ceil(sqrt(A179108(n+1))^3)`
-/

namespace A179109.P13978015757736111225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A179108 (n + 1) : ℝ) ^ 3⌉

end

end A179109.P13978015757736111225

/-!
# A179110: Indices of record values in A179066.

The programs for A179110, there is no canonical definition to state claims against.
-/

/-! ## A179110.P5775578993509927915

`A179066(A179105(n+1))`
-/

namespace A179110.P5775578993509927915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179066 (A179105 (n + 1)).toNat

end

end A179110.P5775578993509927915

/-! ## A179110.P14418671251670072045

`A179066(record[A179066(n+1)])`
-/

namespace A179110.P14418671251670072045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179066 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179110.P14418671251670072045

/-!
# A179111: Partial sums of round(Fibonacci(n)/11).

The programs for A179111, the canonical program `A179111.P8237191438738575176` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179111 has offset 0).

The definition of A179111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179111.P8237191438738575176

`a(n-10)+A000045(n-3)-1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=2, a(8)=4, a(9)=7`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179111

/-- `a(n-10)+A000045(n-3)-1` -/
def P8237191438738575176.Spec : Prop :=
  ∀ n, P8237191438738575176.a n = A179111 n

theorem P8237191438738575176.correct : P8237191438738575176.Spec := by
  intro n
  simp only [A179111]

end A179111

/-! ## A179111.P16976549483099557640

`floor(A000045(n+2)/11-n/10)`
-/

namespace A179111.P16976549483099557640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 2) : ℚ) / 11 - (n : ℚ) / 10⌋

end

end A179111.P16976549483099557640

namespace A179111

/-- `floor(A000045(n+2)/11-n/10)` -/
def P16976549483099557640.Spec : Prop :=
  ∀ n, P16976549483099557640.a n = A179111 n

end A179111

/-! ## A179111.P5800371512716543629

`∑[round(A000045(n)/11)]`
-/

namespace A179111.P5800371512716543629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 n : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179111.P5800371512716543629

namespace A179111

/-- `∑[round(A000045(n)/11)]` -/
def P5800371512716543629.Spec : Prop :=
  ∀ n, P5800371512716543629.a n = A179111 n

end A179111

/-! ## A179111.P15566580062364478391

`∑[round(A212804(n+1)/11)]`
-/

namespace A179111.P15566580062364478391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A212804 (n + 1) : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179111.P15566580062364478391

namespace A179111

/-- `∑[round(A212804(n+1)/11)]` -/
def P15566580062364478391.Spec : Prop :=
  ∀ n, P15566580062364478391.a n = A179111 n

end A179111

/-! ## A179111.P7541756673420603511

`∑[round((A157725(n)-2)/11)]`
-/

namespace A179111.P7541756673420603511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157725 n - 2 : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179111.P7541756673420603511

namespace A179111

/-- `∑[round((A157725(n)-2)/11)]` -/
def P7541756673420603511.Spec : Prop :=
  ∀ n, P7541756673420603511.a n = A179111 n

end A179111

/-! ## A179111.P12694429793430500345

`∑[round((A157726(n)-3)/11)]`
-/

namespace A179111.P12694429793430500345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157726 n - 3 : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179111.P12694429793430500345

namespace A179111

/-- `∑[round((A157726(n)-3)/11)]` -/
def P12694429793430500345.Spec : Prop :=
  ∀ n, P12694429793430500345.a n = A179111 n

end A179111

/-!
# A179113: Odd primes which can never divide 2^a+2^b+1.

The programs for A179113, there is no canonical definition to state claims against.
-/

/-! ## A179113.P6506910418995094012

`p?[lt[3, A086342(n)]]`
-/

namespace A179113.P6506910418995094012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179113.P6506910418995094012

/-! ## A179113.P15545926582545016408

`lt[A210442(n)+2, A086342(n)]`
-/

namespace A179113.P15545926582545016408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179113.P15545926582545016408

/-! ## A179113.P9069273163410115090

`lt[A210442(n), A004526(A086342(n))]`
-/

namespace A179113.P9069273163410115090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086342 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179113.P9069273163410115090

/-!
# A179114: G.f.: A(x) = exp( Sum_{n>=1} A179115(n)*x^n/n ), where A179115(n) = Sum_{d|n} phi(d^tau(d)).

The programs for A179114, there is no canonical definition to state claims against.
-/

/-! ## A179114.P2942982650474778768

`A002260(∑[11*a(n-1)-22*a(n-2)])` with `a(0)=7, a(1)=0, a(2)=1`
-/

namespace A179114.P2942982650474778768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 0, 1] fun n f1 =>
  11 * f1 (n - 1) - 22 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179114.P2942982650474778768

/-! ## A179114.P3780794497513496332

`A002262(∑[11*a(n-1)-22*a(n-2)])` with `a(0)=7, a(1)=0, a(2)=1`
-/

namespace A179114.P3780794497513496332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 0, 1] fun n f1 =>
  11 * f1 (n - 1) - 22 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179114.P3780794497513496332

/-! ## A179114.P9551312532896467744

`A309797(A000041(∑[lcm(2, n)]))`
-/

namespace A179114.P9551312532896467744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309797 (A000041 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A179114.P9551312532896467744

/-!
# A179115: a(n) = Sum_{d|n} phi(d^tau(d)).

The programs for A179115, there is no canonical definition to state claims against.
-/

/-! ## A179115.P13437796334059090473

`∑{d}[n+1, A002618(A007955(#))]`
-/

namespace A179115.P13437796334059090473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 (A007955 d).toNat

end

end A179115.P13437796334059090473

/-! ## A179115.P3423739304165464544

`∑{d}[n+1, A000010(A062758(#))]`
-/

namespace A179115.P3423739304165464544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A062758 d).toNat

end

end A179115.P3423739304165464544

/-!
# A179116: G.f.: A(x) = exp( Sum_{n>=1} 2*A179117(n)*x^n/n ), where A179117(n) = Sum_{d|n} phi(d^phi(d)).

The programs for A179116, there is no canonical definition to state claims against.
-/

/-! ## A179116.P3348655135895813608

`record[A200272(A261082(n))]`
-/

namespace A179116.P3348655135895813608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A261082 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179116.P3348655135895813608

/-! ## A179116.P17693653804141708895

`A110304(A104431(n+1))`
-/

namespace A179116.P17693653804141708895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110304 (A104431 (n + 1)).toNat

end

end A179116.P17693653804141708895

/-!
# A179117: a(n) = Sum_{d|n} phi(d^phi(d)).

The programs for A179117, there is no canonical definition to state claims against.
-/

/-! ## A179117.P2186613078830237845

`A100038(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=7, a(3)=10`
-/

namespace A179117.P2186613078830237845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 10] fun n a =>
  A100038 (a (n - 1) + a (n - 2) - a (n - 3)).toNat

end

end A179117.P2186613078830237845

/-!
# A179118: Number of Collatz steps to reach 1 starting with 2^n + 1.

The programs for A179118, there is no canonical definition to state claims against.
-/

/-! ## A179118.P4049165830956682371

`A006577(2^n+1)`
-/

namespace A179118.P4049165830956682371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 ^ n + 1)

end

end A179118.P4049165830956682371

/-! ## A179118.P5958765306366457420

`A352890(3*p?[round(8*n/7)]-A000007(n))-1`
-/

namespace A179118.P5958765306366457420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n).toNat - 1

end

end A179118.P5958765306366457420

/-! ## A179118.P11114593535964749028

`A352890(3*A000040(n+1)-A000007(n))-1`
-/

namespace A179118.P11114593535964749028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (3 * A000040 (n + 1) - A000007 n).toNat - 1

end

end A179118.P11114593535964749028

/-! ## A179118.P6293228135510230817

`A153330(2^n)+n`
-/

namespace A179118.P6293228135510230817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153330 (2 ^ n) + (n : ℤ)

end

end A179118.P6293228135510230817

/-! ## A179118.P1252174001676319526

`A008908(2^n+1)-1`
-/

namespace A179118.P1252174001676319526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (2 ^ n + 1) - 1

end

end A179118.P1252174001676319526

/-!
# A179120: Sums of the squares of the coefficients in the complete Bell polynomials.

The programs for A179120, there is no canonical definition to state claims against.
-/

/-! ## A179120.P9866924480573574444

`A065382(3*(n^n+1))`
-/

namespace A179120.P9866924480573574444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (3 * (n ^ n + 1))

end

end A179120.P9866924480573574444

/-! ## A179120.P15361638086288022897

`A173269(A148406(n))`
-/

namespace A179120.P15361638086288022897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173269 (A148406 n).toNat

end

end A179120.P15361638086288022897

/-!
# A179121: 

The programs for A179121, there is no canonical definition to state claims against.
-/

/-! ## A179121.P13262676364942111830

`a(n-1)+(1-a(n-1))²` with `a(0)=18`
-/

namespace A179121.P13262676364942111830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A179121.P13262676364942111830

/-! ## A179121.P14623923165618129923

`(a(n-1)-1)*a(n-1)+1` with `a(0)=18`
-/

namespace A179121.P14623923165618129923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  (a (n - 1) - 1) * a (n - 1) + 1

end

end A179121.P14623923165618129923

/-! ## A179121.P13647947301068408855

`1-(1-a(n-1))*a(n-1)` with `a(0)=18`
-/

namespace A179121.P13647947301068408855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  1 - (1 - a (n - 1)) * a (n - 1)

end

end A179121.P13647947301068408855

/-!
# A179123: a(n) is the number of red balls in an urn such that if the urn contains b(n)=A105045(n) blue balls, the probability of drawing 6 red balls without replacement is the same as drawing 4 red and 2 blue balls without replacement; that is, binomial(a(n),6) = binomial(a(n),4) * binomial(b(n),2).

The programs for A179123, the canonical program `A179123.P7822365054972538355` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179123 has offset 1).

The definition of A179123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179123.P7822365054972538355

`a(n-1)+8*a(n-2)-8*a(n-3)-a(n-4)+a(n-5)` with `a(0)=5, a(1)=10, a(2)=14, a(3)=49, a(4)=80`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179123

/-- `a(n-1)+8*a(n-2)-8*a(n-3)-a(n-4)+a(n-5)` -/
def P7822365054972538355.Spec : Prop :=
  ∀ n, P7822365054972538355.a n = A179123 (n + 1)

theorem P7822365054972538355.correct : P7822365054972538355.Spec := by
  intro n
  simp only [A179123, Nat.add_sub_cancel]

end A179123

/-! ## A179123.P11646116967382799686

`(A199338(n+1)+9)/2`
-/

namespace A179123.P11646116967382799686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199338 (n + 1) + 9 : ℚ) / 2

end

end A179123.P11646116967382799686

namespace A179123

/-- `(A199338(n+1)+9)/2` -/
def P11646116967382799686.Spec : Prop :=
  ∀ n, P11646116967382799686.a n = (A179123 (n + 1) : ℚ)

end A179123

/-! ## A179123.P12706169030867305700

`A014682(A199338(n+1)+9)`
-/

namespace A179123.P12706169030867305700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A199338 (n + 1) + 9).toNat

end

end A179123.P12706169030867305700

namespace A179123

/-- `A014682(A199338(n+1)+9)` -/
def P12706169030867305700.Spec : Prop :=
  ∀ n, P12706169030867305700.a n = A179123 (n + 1)

end A179123

/-! ## A179123.P6906979565588674592

`A273943(A199338(n+1)+9)`
-/

namespace A179123.P6906979565588674592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A199338 (n + 1) + 9).toNat

end

end A179123.P6906979565588674592

namespace A179123

/-- `A273943(A199338(n+1)+9)` -/
def P6906979565588674592.Spec : Prop :=
  ∀ n, P6906979565588674592.a n = A179123 (n + 1)

end A179123

/-! ## A179123.P14542778611309645098

`A305438(A199338(n+1)+9)`
-/

namespace A179123.P14542778611309645098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305438 (A199338 (n + 1) + 9).toNat

end

end A179123.P14542778611309645098

namespace A179123

/-- `A305438(A199338(n+1)+9)` -/
def P14542778611309645098.Spec : Prop :=
  ∀ n, P14542778611309645098.a n = A179123 (n + 1)

end A179123

/-!
# A179125: a(n) = A000037(n)^3.

The programs for A179125, the canonical program `A179125.P9568614675191718862` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179125 has offset 1).

The definition of A179125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179125.P7170235519401950443

`(n+1+floor(1/2+sqrt(n+1)))^3`
-/

namespace A179125.P7170235519401950443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + ⌊((1 : ℚ) / 2 : ℝ) + Real.sqrt (n + 1 : ℝ)⌋) ^ 3

end

end A179125.P7170235519401950443

namespace A179125

/-- `(n+1+floor(1/2+sqrt(n+1)))^3` -/
def P7170235519401950443.Spec : Prop :=
  ∀ n, P7170235519401950443.a n = A179125 (n + 1)

end A179125

/-! ## A179125.P9568614675191718862

`A000037(n+1)^3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179125

/-- `A000037(n+1)^3` -/
def P9568614675191718862.Spec : Prop :=
  ∀ n, P9568614675191718862.a n = A179125 (n + 1)

theorem P9568614675191718862.correct : P9568614675191718862.Spec := by
  intro n
  simp only [A179125, Nat.add_sub_cancel]

end A179125

/-! ## A179125.P13918253746142492409

`sqrt(A030140(n+1)^3)`
-/

namespace A179125.P13918253746142492409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030140 (n + 1) ^ 3 : ℝ)

end

end A179125.P13918253746142492409

namespace A179125

/-- `sqrt(A030140(n+1)^3)` -/
def P13918253746142492409.Spec : Prop :=
  ∀ n, P13918253746142492409.a n = (A179125 (n + 1) : ℝ)

end A179125

/-! ## A179125.P7440927868886881153

`comp[A000290(n)]²*comp[n²]`
-/

namespace A179125.P7440927868886881153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A179125.P7440927868886881153

namespace A179125

/-- `comp[A000290(n)]²*comp[n²]` -/
def P7440927868886881153.Spec : Prop :=
  ∀ n, (P7440927868886881153.a n : ℤ) = A179125 (n + 1)

end A179125

/-! ## A179125.P7356052832872211819

`abs((comp[A005563(n)]+1)^3-1)+1`
-/

namespace A179125.P7356052832872211819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 3 : ℤ) - 1| + 1

end

end A179125.P7356052832872211819

namespace A179125

/-- `abs((comp[A005563(n)]+1)^3-1)+1` -/
def P7356052832872211819.Spec : Prop :=
  ∀ n, P7356052832872211819.a n = A179125 (n + 1)

end A179125

/-! ## A179125.P17558657260541357757

`comp[A008794(n)]²*comp[A008794(n)]`
-/

namespace A179125.P17558657260541357757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A179125.P17558657260541357757

namespace A179125

/-- `comp[A008794(n)]²*comp[A008794(n)]` -/
def P17558657260541357757.Spec : Prop :=
  ∀ n, (P17558657260541357757.a n : ℤ) = A179125 (n + 1)

end A179125

/-! ## A179125.P4397522778792999358

`comp[A018796(n)]²*comp[A018796(n)]`
-/

namespace A179125.P4397522778792999358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A179125.P4397522778792999358

namespace A179125

/-- `comp[A018796(n)]²*comp[A018796(n)]` -/
def P4397522778792999358.Spec : Prop :=
  ∀ n, (P4397522778792999358.a n : ℤ) = A179125 (n + 1)

end A179125

/-! ## A179125.P7788083208778945965

`comp[A181318(n)]²*comp[A181318(n)]`
-/

namespace A179125.P7788083208778945965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A179125.P7788083208778945965

namespace A179125

/-- `comp[A181318(n)]²*comp[A181318(n)]` -/
def P7788083208778945965.Spec : Prop :=
  ∀ n, (P7788083208778945965.a n : ℤ) = A179125 (n + 1)

end A179125

/-! ## A179125.P8548016171284828606

`A000037(n+1)*A030140(n+1)`
-/

namespace A179125.P8548016171284828606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) * A030140 (n + 1)

end

end A179125.P8548016171284828606

namespace A179125

/-- `A000037(n+1)*A030140(n+1)` -/
def P8548016171284828606.Spec : Prop :=
  ∀ n, P8548016171284828606.a n = A179125 (n + 1)

theorem P8548016171284828606.correct : P8548016171284828606.Spec := by
  intro n
  simp only [A179125, Nat.add_sub_cancel, A179125.P8548016171284828606.a, A179125.P9568614675191718862.a, A000037, A000037.P3199287792184117507.a, A030140, A030140.P325291231154129228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A179125

/-! ## A179125.P16322058834256128191

`comp[A173536(n+1)]²*comp[A173536(n+1)]`
-/

namespace A179125.P16322058834256128191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A179125.P16322058834256128191

namespace A179125

/-- `comp[A173536(n+1)]²*comp[A173536(n+1)]` -/
def P16322058834256128191.Spec : Prop :=
  ∀ n, (P16322058834256128191.a n : ℤ) = A179125 (n + 1)

end A179125

/-! ## A179125.P16364761475715285160

`A164514(n+2)²*A164514(n+2)`
-/

namespace A179125.P16364761475715285160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 2) ^ 2 * A164514 (n + 2)

end

end A179125.P16364761475715285160

namespace A179125

/-- `A164514(n+2)²*A164514(n+2)` -/
def P16364761475715285160.Spec : Prop :=
  ∀ n, P16364761475715285160.a n = A179125 (n + 1)

end A179125

/-! ## A179125.P1351810514296003542

`A000037(n+1)*A000037(n+1)*A164514(n+2)`
-/

namespace A179125.P1351810514296003542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) * A000037 (n + 1) * A164514 (n + 2)

end

end A179125.P1351810514296003542

namespace A179125

/-- `A000037(n+1)*A000037(n+1)*A164514(n+2)` -/
def P1351810514296003542.Spec : Prop :=
  ∀ n, P1351810514296003542.a n = A179125 (n + 1)

end A179125

/-! ## A179125.P8196184874503269918

`A000578(comp[n²])`
-/

namespace A179125.P8196184874503269918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A179125.P8196184874503269918

namespace A179125

/-- `A000578(comp[n²])` -/
def P8196184874503269918.Spec : Prop :=
  ∀ n, P8196184874503269918.a n = A179125 (n + 1)

end A179125

/-! ## A179125.P14688164690369752355

`A184628(comp[n²])`
-/

namespace A179125.P14688164690369752355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A179125.P14688164690369752355

namespace A179125

/-- `A184628(comp[n²])` -/
def P14688164690369752355.Spec : Prop :=
  ∀ n, P14688164690369752355.a n = A179125 (n + 1)

end A179125

/-! ## A179125.P15111431110935021251

`comp[A048760(n)]²*comp[A048760(n)]`
-/

namespace A179125.P15111431110935021251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A179125.P15111431110935021251

namespace A179125

/-- `comp[A048760(n)]²*comp[A048760(n)]` -/
def P15111431110935021251.Spec : Prop :=
  ∀ n, (P15111431110935021251.a n : ℤ) = A179125 (n + 1)

end A179125

/-! ## A179125.P6053042763727832558

`comp[A048761(n)]²*comp[A048761(n)]`
-/

namespace A179125.P6053042763727832558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A179125.P6053042763727832558

namespace A179125

/-- `comp[A048761(n)]²*comp[A048761(n)]` -/
def P6053042763727832558.Spec : Prop :=
  ∀ n, (P6053042763727832558.a n : ℤ) = A179125 (n + 1)

end A179125

/-! ## A179125.P12923076660219339722

`comp[A053187(n)]²*comp[A053187(n)]`
-/

namespace A179125.P12923076660219339722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A179125.P12923076660219339722

namespace A179125

/-- `comp[A053187(n)]²*comp[A053187(n)]` -/
def P12923076660219339722.Spec : Prop :=
  ∀ n, (P12923076660219339722.a n : ℤ) = A179125 (n + 1)

end A179125

/-! ## A179125.P7868491889287733881

`comp[A095831(n+1)]²*comp[A095831(n+1)]`
-/

namespace A179125.P7868491889287733881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A179125.P7868491889287733881

namespace A179125

/-- `comp[A095831(n+1)]²*comp[A095831(n+1)]` -/
def P7868491889287733881.Spec : Prop :=
  ∀ n, (P7868491889287733881.a n : ℤ) = A179125 (n + 1)

end A179125

/-! ## A179125.P15966164720516764355

`∩[A000578(n), A097054(n+1)]`
-/

namespace A179125.P15966164720516764355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179125.P15966164720516764355

namespace A179125

/-- `∩[A000578(n), A097054(n+1)]` -/
def P15966164720516764355.Spec : Prop :=
  ∀ n, (P15966164720516764355.a n : ℤ) = A179125 (n + 1)

end A179125

/-!
# A179126: Positive integers m for which the torsion subgroup of the elliptic curve y^2 = x^3 + m has order 3.

The programs for A179126, the canonical program `A179126.P17825207703947104967` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179126 has offset 1).

The definition of A179126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179126.P18430141464611735439

`comp[n^3]²`
-/

namespace A179126.P18430141464611735439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A179126.P18430141464611735439

namespace A179126

/-- `comp[n^3]²` -/
def P18430141464611735439.Spec : Prop :=
  ∀ n, (P18430141464611735439.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P6574489647590335889

`comp[∑{digits}[n, #]^3]^2`
-/

namespace A179126.P6574489647590335889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A179126.P6574489647590335889

namespace A179126

/-- `comp[∑{digits}[n, #]^3]^2` -/
def P6574489647590335889.Spec : Prop :=
  ∀ n, (P6574489647590335889.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P11724136784154404564

`comp[gcd(n, ∑[n])^3]^2`
-/

namespace A179126.P11724136784154404564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A179126.P11724136784154404564

namespace A179126

/-- `comp[gcd(n, ∑[n])^3]^2` -/
def P11724136784154404564.Spec : Prop :=
  ∀ n, (P11724136784154404564.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P14650236282885810534

`or(comp[n*n²]², char[1])`
-/

namespace A179126.P14650236282885810534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) (if ∃ j, f2 j = n then 1 else 0)

end

end A179126.P14650236282885810534

namespace A179126

/-- `or(comp[n*n²]², char[1])` -/
def P14650236282885810534.Spec : Prop :=
  ∀ n, (P14650236282885810534.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P748265419085635250

`comp[A000578(n)]^2`
-/

namespace A179126.P748265419085635250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A179126.P748265419085635250

namespace A179126

/-- `comp[A000578(n)]^2` -/
def P748265419085635250.Spec : Prop :=
  ∀ n, (P748265419085635250.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P17825207703947104967

`A007412(n+1)^2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179126

/-- `A007412(n+1)^2` -/
def P17825207703947104967.Spec : Prop :=
  ∀ n, P17825207703947104967.a n = A179126 (n + 1)

theorem P17825207703947104967.correct : P17825207703947104967.Spec := by
  intro n
  simp only [A179126, Nat.add_sub_cancel]

end A179126

/-! ## A179126.P17877352658134194617

`A007412(n+1)²%A001235(n+1)`
-/

namespace A179126.P17877352658134194617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007412 (n + 1) ^ 2) (A001235 (n + 1))

end

end A179126.P17877352658134194617

namespace A179126

/-- `A007412(n+1)²%A001235(n+1)` -/
def P17877352658134194617.Spec : Prop :=
  ∀ n, P17877352658134194617.a n = A179126 (n + 1)

end A179126

/-! ## A179126.P11918553515003229565

`C(n, A000203(n+1))+A007412(n+1)²`
-/

namespace A179126.P11918553515003229565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A000203 (n + 1)).toNat : ℤ) + A007412 (n + 1) ^ 2

end

end A179126.P11918553515003229565

namespace A179126

/-- `C(n, A000203(n+1))+A007412(n+1)²` -/
def P11918553515003229565.Spec : Prop :=
  ∀ n, P11918553515003229565.a n = A179126 (n + 1)

end A179126

/-! ## A179126.P4050098536024825589

`A000290(comp[n*n²])`
-/

namespace A179126.P4050098536024825589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A179126.P4050098536024825589

namespace A179126

/-- `A000290(comp[n*n²])` -/
def P4050098536024825589.Spec : Prop :=
  ∀ n, P4050098536024825589.a n = A179126 (n + 1)

end A179126

/-! ## A179126.P3614575010899101247

`A253909(comp[n*n²])`
-/

namespace A179126.P3614575010899101247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A179126.P3614575010899101247

namespace A179126

/-- `A253909(comp[n*n²])` -/
def P3614575010899101247.Spec : Prop :=
  ∀ n, P3614575010899101247.a n = A179126 (n + 1)

end A179126

/-! ## A179126.P16755846597997583607

`∩[A340585(n+1), n²]`
-/

namespace A179126.P16755846597997583607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A179126.P16755846597997583607

namespace A179126

/-- `∩[A340585(n+1), n²]` -/
def P16755846597997583607.Spec : Prop :=
  ∀ n, (P16755846597997583607.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P2899639946576283219

`∩[A000290(n), A340585(n+1)]`
-/

namespace A179126.P2899639946576283219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179126.P2899639946576283219

namespace A179126

/-- `∩[A000290(n), A340585(n+1)]` -/
def P2899639946576283219.Spec : Prop :=
  ∀ n, (P2899639946576283219.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P18214054967935560476

`∩[A002760(n+1), A340585(n+1)]`
-/

namespace A179126.P18214054967935560476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179126.P18214054967935560476

namespace A179126

/-- `∩[A002760(n+1), A340585(n+1)]` -/
def P18214054967935560476.Spec : Prop :=
  ∀ n, (P18214054967935560476.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P14731900882749097827

`record[Δ[A374754(n+2)]]`
-/

namespace A179126.P14731900882749097827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374754 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179126.P14731900882749097827

namespace A179126

/-- `record[Δ[A374754(n+2)]]` -/
def P14731900882749097827.Spec : Prop :=
  ∀ n, P14731900882749097827.a n = A179126 (n + 1)

end A179126

/-! ## A179126.P15004033612962092312

`record[A007412(A117358(n+1))²]`
-/

namespace A179126.P15004033612962092312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (A117358 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179126.P15004033612962092312

namespace A179126

/-- `record[A007412(A117358(n+1))²]` -/
def P15004033612962092312.Spec : Prop :=
  ∀ n, P15004033612962092312.a n = A179126 (n + 1)

end A179126

/-! ## A179126.P49644089989261455

`∩[A034793(n+1), A340585(n+1)]`
-/

namespace A179126.P49644089989261455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179126.P49644089989261455

namespace A179126

/-- `∩[A034793(n+1), A340585(n+1)]` -/
def P49644089989261455.Spec : Prop :=
  ∀ n, (P49644089989261455.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P16740058661704971224

`∩[A272266(n+1), A340585(n+1)]`
-/

namespace A179126.P16740058661704971224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179126.P16740058661704971224

namespace A179126

/-- `∩[A272266(n+1), A340585(n+1)]` -/
def P16740058661704971224.Spec : Prop :=
  ∀ n, (P16740058661704971224.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P5847610579818283063

`∩[A135276(n), A340585(n+1)]`
-/

namespace A179126.P5847610579818283063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179126.P5847610579818283063

namespace A179126

/-- `∩[A135276(n), A340585(n+1)]` -/
def P5847610579818283063.Spec : Prop :=
  ∀ n, (P5847610579818283063.a n : ℤ) = A179126 (n + 1)

end A179126

/-! ## A179126.P11423403303632005134

`∩[A181385(n), A340585(n+1)]`
-/

namespace A179126.P11423403303632005134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179126.P11423403303632005134

namespace A179126

/-- `∩[A181385(n), A340585(n+1)]` -/
def P11423403303632005134.Spec : Prop :=
  ∀ n, (P11423403303632005134.a n : ℤ) = A179126 (n + 1)

end A179126

/-!
# A179131: Numerators of A178381(4*n+1)/A178381(4*n).

The programs for A179131, the canonical program `A179131.P11622270746716703898` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179131 has offset 0).

The definition of A179131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179131.P11481595133631945816

`A033042(A055934(2*n+1))*A167808(2*n+1)`
-/

namespace A179131.P11481595133631945816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A055934 (2 * n + 1)).toNat * A167808 (2 * n + 1)

end

end A179131.P11481595133631945816

namespace A179131

/-- `A033042(A055934(2*n+1))*A167808(2*n+1)` -/
def P11481595133631945816.Spec : Prop :=
  ∀ n, P11481595133631945816.a n = A179131 n

end A179131

/-! ## A179131.P11622270746716703898

`lcm(8, Δ[A219233(n)])/8`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A179131

/-- `lcm(8, Δ[A219233(n)])/8` -/
def P11622270746716703898.Spec : Prop :=
  ∀ n, P11622270746716703898.a n = (A179131 n : ℚ)

end A179131

/-! ## A179131.P7263849604163483018

`(5*A167808(2*n+1))%A060645(n+1)`
-/

namespace A179131.P7263849604163483018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A167808 (2 * n + 1)) (A060645 (n + 1))

end

end A179131.P7263849604163483018

namespace A179131

/-- `(5*A167808(2*n+1))%A060645(n+1)` -/
def P7263849604163483018.Spec : Prop :=
  ∀ n, P7263849604163483018.a n = A179131 n

end A179131

/-! ## A179131.P6250690114216021403

`A000265(abs(Δ[round((-ϕ²)^n)]))`
-/

namespace A179131.P6250690114216021403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((-(Real.goldenRatio ^ 2)) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 |f1 (n + 1) - f1 n|.toNat

end

end A179131.P6250690114216021403

namespace A179131

/-- `A000265(abs(Δ[round((-ϕ²)^n)]))` -/
def P6250690114216021403.Spec : Prop :=
  ∀ n, P6250690114216021403.a n = A179131 n

end A179131

/-! ## A179131.P1933180220432228444

`A171435(A106729(n))`
-/

namespace A179131.P1933180220432228444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A106729 n).toNat

end

end A179131.P1933180220432228444

namespace A179131

/-- `A171435(A106729(n))` -/
def P1933180220432228444.Spec : Prop :=
  ∀ n, P1933180220432228444.a n = A179131 n

end A179131

/-!
# A179132: Denominators of A178381(4*n+1)/A178381(4*n).

The programs for A179132, the canonical program `A179132.P14741045176481198719` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179132 has offset 0).

The definition of A179132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179132.P14741045176481198719

`18*a(n-3)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=14, a(3)=36, a(4)=47, a(5)=246, a(6)=644`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179132

/-- `18*a(n-3)-a(n-6)` -/
def P14741045176481198719.Spec : Prop :=
  ∀ n, P14741045176481198719.a n = A179132 n

theorem P14741045176481198719.correct : P14741045176481198719.Spec := by
  intro n
  simp only [A179132]

end A179132

/-! ## A179132.P3565481860588934698

`floor((lcm(2, A000032(2*n+1))+1)/ϕ)`
-/

namespace A179132.P3565481860588934698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm 2 (A000032 (2 * n + 1)) + 1 : ℝ) / Real.goldenRatio⌋

end

end A179132.P3565481860588934698

namespace A179132

/-- `floor((lcm(2, A000032(2*n+1))+1)/ϕ)` -/
def P3565481860588934698.Spec : Prop :=
  ∀ n, P3565481860588934698.a n = A179132 n

end A179132

/-! ## A179132.P11582354196203406439

`and(2, a(n-1))!*A000032(2*n)` with `a(0)=1`
-/

namespace A179132.P11582354196203406439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial (Int.land 2 (a (n - 1))).toNat : ℤ) * A000032 (2 * n)

end

end A179132.P11582354196203406439

namespace A179132

/-- `and(2, a(n-1))!*A000032(2*n)` -/
def P11582354196203406439.Spec : Prop :=
  ∀ n, P11582354196203406439.a n = A179132 n

end A179132

/-! ## A179132.P4076450184381444500

`A000108(and(2, a(n-1)))*A005248(n)` with `a(0)=1`
-/

namespace A179132.P4076450184381444500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 (Int.land 2 (a (n - 1))).toNat * A005248 n

end

end A179132.P4076450184381444500

namespace A179132

/-- `A000108(and(2, a(n-1)))*A005248(n)` -/
def P4076450184381444500.Spec : Prop :=
  ∀ n, P4076450184381444500.a n = A179132 n

end A179132

/-! ## A179132.P3049570970591699873

`A000041(and(2, a(n-1)))*A000032(2*n)` with `a(0)=1`
-/

namespace A179132.P3049570970591699873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000041 (Int.land 2 (a (n - 1))).toNat * A000032 (2 * n)

end

end A179132.P3049570970591699873

namespace A179132

/-- `A000041(and(2, a(n-1)))*A000032(2*n)` -/
def P3049570970591699873.Spec : Prop :=
  ∀ n, P3049570970591699873.a n = A179132 n

end A179132

/-! ## A179132.P14079140850314189973

`A007318(and(2, a(n-1))²)*A000032(2*n)` with `a(0)=1`
-/

namespace A179132.P14079140850314189973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (Int.land 2 (a (n - 1)) ^ 2).toNat * A000032 (2 * n)

end

end A179132.P14079140850314189973

namespace A179132

/-- `A007318(and(2, a(n-1))²)*A000032(2*n)` -/
def P14079140850314189973.Spec : Prop :=
  ∀ n, P14079140850314189973.a n = A179132 n

end A179132

/-!
# A179133: Denominators of A178381(4*n+3)/A178381(4*n+2).

The programs for A179133, the canonical program `A179133.P10238165365576784136` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179133 has offset 0).

The definition of A179133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179133.P10238165365576784136

`18*a(n-3)-a(n-6)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=26, a(4)=68, a(5)=89`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179133

/-- `18*a(n-3)-a(n-6)` -/
def P10238165365576784136.Spec : Prop :=
  ∀ n, P10238165365576784136.a n = A179133 n

theorem P10238165365576784136.correct : P10238165365576784136.Spec := by
  intro n
  simp only [A179133]

end A179133

/-! ## A179133.P13462950337455210419

`A179134(n)*A153727(n+1)/2`
-/

namespace A179133.P13462950337455210419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179134 n * A153727 (n + 1) : ℚ) / 2

end

end A179133.P13462950337455210419

namespace A179133

/-- `A179134(n)*A153727(n+1)/2` -/
def P13462950337455210419.Spec : Prop :=
  ∀ n, P13462950337455210419.a n = (A179133 n : ℚ)

end A179133

/-! ## A179133.P14769710378437336952

`lcm(2^((n+1)%3), Δ[A001906(n)])`
-/

namespace A179133.P14769710378437336952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ ((n + 1) % 3) : ℤ) (f1 (n + 1) - f1 n)

end

end A179133.P14769710378437336952

namespace A179133

/-- `lcm(2^((n+1)%3), Δ[A001906(n)])` -/
def P14769710378437336952.Spec : Prop :=
  ∀ n, (P14769710378437336952.a n : ℤ) = A179133 n

end A179133

/-! ## A179133.P6364527518039275494

`gcd(2, (n+2)%3)*A000045(2*n+1)`
-/

namespace A179133.P6364527518039275494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 ((n + 2) % 3) : ℤ) * A000045 (2 * n + 1)

end

end A179133.P6364527518039275494

namespace A179133

/-- `gcd(2, (n+2)%3)*A000045(2*n+1)` -/
def P6364527518039275494.Spec : Prop :=
  ∀ n, P6364527518039275494.a n = A179133 n

end A179133

/-! ## A179133.P16119382091402501873

`A122367(n)*A130196(n+1)`
-/

namespace A179133.P16119382091402501873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n * A130196 (n + 1)

end

end A179133.P16119382091402501873

namespace A179133

/-- `A122367(n)*A130196(n+1)` -/
def P16119382091402501873.Spec : Prop :=
  ∀ n, P16119382091402501873.a n = A179133 n

end A179133

/-! ## A179133.P12509314380380424956

`A000045(Δ[n²])*A130196(n+1)`
-/

namespace A179133.P12509314380380424956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A130196 (n + 1)

end

end A179133.P12509314380380424956

namespace A179133

/-- `A000045(Δ[n²])*A130196(n+1)` -/
def P12509314380380424956.Spec : Prop :=
  ∀ n, P12509314380380424956.a n = A179133 n

end A179133

/-! ## A179133.P9182735307827380744

`Δ[A000045(2*n)]*A130196(n+1)`
-/

namespace A179133.P9182735307827380744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130196 (n + 1)

end

end A179133.P9182735307827380744

namespace A179133

/-- `Δ[A000045(2*n)]*A130196(n+1)` -/
def P9182735307827380744.Spec : Prop :=
  ∀ n, P9182735307827380744.a n = A179133 n

end A179133

/-! ## A179133.P17187672288625410757

`A130196(n+1)*A167816(2*n+1)`
-/

namespace A179133.P17187672288625410757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (n + 1) * A167816 (2 * n + 1)

end

end A179133.P17187672288625410757

namespace A179133

/-- `A130196(n+1)*A167816(2*n+1)` -/
def P17187672288625410757.Spec : Prop :=
  ∀ n, P17187672288625410757.a n = A179133 n

end A179133

/-! ## A179133.P8286140161996927889

`(3-A063726(2*n))*A001519(n+1)`
-/

namespace A179133.P8286140161996927889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A063726 (2 * n)) * A001519 (n + 1)

end

end A179133.P8286140161996927889

namespace A179133

/-- `(3-A063726(2*n))*A001519(n+1)` -/
def P8286140161996927889.Spec : Prop :=
  ∀ n, P8286140161996927889.a n = A179133 n

end A179133

/-! ## A179133.P12224165263674731849

`lcm(A000045(2*n+1), Δ[A047277(n+1)])`
-/

namespace A179133.P12224165263674731849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000045 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A179133.P12224165263674731849

namespace A179133

/-- `lcm(A000045(2*n+1), Δ[A047277(n+1)])` -/
def P12224165263674731849.Spec : Prop :=
  ∀ n, (P12224165263674731849.a n : ℤ) = A179133 n

end A179133

/-! ## A179133.P10289803522281567908

`sqrt(A061347(n+1)+3)*A000045(Δ[n²])`
-/

namespace A179133.P10289803522281567908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061347 (n + 1) + 3 : ℝ) * (A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A179133.P10289803522281567908

namespace A179133

/-- `sqrt(A061347(n+1)+3)*A000045(Δ[n²])` -/
def P10289803522281567908.Spec : Prop :=
  ∀ n, P10289803522281567908.a n = (A179133 n : ℝ)

end A179133

/-! ## A179133.P2439027252544885532

`(A011655(n+1)+1)*A000045(2*n+1)`
-/

namespace A179133.P2439027252544885532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011655 (n + 1) + 1) * A000045 (2 * n + 1)

end

end A179133.P2439027252544885532

namespace A179133

/-- `(A011655(n+1)+1)*A000045(2*n+1)` -/
def P2439027252544885532.Spec : Prop :=
  ∀ n, P2439027252544885532.a n = A179133 n

end A179133

/-! ## A179133.P10647556334443520087

`(A267208(n+1)+1)*A000045(2*n+1)`
-/

namespace A179133.P10647556334443520087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267208 (n + 1) + 1) * A000045 (2 * n + 1)

end

end A179133.P10647556334443520087

namespace A179133

/-- `(A267208(n+1)+1)*A000045(2*n+1)` -/
def P10647556334443520087.Spec : Prop :=
  ∀ n, P10647556334443520087.a n = A179133 n

end A179133

/-! ## A179133.P11528829531047843871

`(A001611(2*n+1)-1)*A130196(n+1)`
-/

namespace A179133.P11528829531047843871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n + 1) - 1) * A130196 (n + 1)

end

end A179133.P11528829531047843871

namespace A179133

/-- `(A001611(2*n+1)-1)*A130196(n+1)` -/
def P11528829531047843871.Spec : Prop :=
  ∀ n, P11528829531047843871.a n = A179133 n

end A179133

/-! ## A179133.P10290431065721939561

`(2-A079978(n+1))*A000045(2*n+1)`
-/

namespace A179133.P10290431065721939561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A079978 (n + 1)) * A000045 (2 * n + 1)

end

end A179133.P10290431065721939561

namespace A179133

/-- `(2-A079978(n+1))*A000045(2*n+1)` -/
def P10290431065721939561.Spec : Prop :=
  ∀ n, P10290431065721939561.a n = A179133 n

end A179133

/-! ## A179133.P17208343542285702829

`A000045(2*n+1)*A115311(2*(n+1))`
-/

namespace A179133.P17208343542285702829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A115311 (2 * (n + 1))

end

end A179133.P17208343542285702829

namespace A179133

/-- `A000045(2*n+1)*A115311(2*(n+1))` -/
def P17208343542285702829.Spec : Prop :=
  ∀ n, P17208343542285702829.a n = A179133 n

end A179133

/-! ## A179133.P12243761252156993318

`A000045(2*n+1)*A115312(2*(n+1))`
-/

namespace A179133.P12243761252156993318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A115312 (2 * (n + 1))

end

end A179133.P12243761252156993318

namespace A179133

/-- `A000045(2*n+1)*A115312(2*(n+1))` -/
def P12243761252156993318.Spec : Prop :=
  ∀ n, P12243761252156993318.a n = A179133 n

end A179133

/-! ## A179133.P5850037287960190030

`A000045(2*n+1)*A267068(2*n+1)`
-/

namespace A179133.P5850037287960190030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A267068 (2 * n + 1)

end

end A179133.P5850037287960190030

namespace A179133

/-- `A000045(2*n+1)*A267068(2*n+1)` -/
def P5850037287960190030.Spec : Prop :=
  ∀ n, P5850037287960190030.a n = A179133 n

end A179133

/-! ## A179133.P15631476420283067106

`2*A000045(2*n+1)/A100063(n+1)`
-/

namespace A179133.P15631476420283067106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000045 (2 * n + 1) : ℚ) / (A100063 (n + 1) : ℚ))

end

end A179133.P15631476420283067106

namespace A179133

/-- `2*A000045(2*n+1)/A100063(n+1)` -/
def P15631476420283067106.Spec : Prop :=
  ∀ n, P15631476420283067106.a n = (A179133 n : ℚ)

end A179133

/-! ## A179133.P10866097852844352067

`2*A000045(2*n+1)/A101825(n+3)`
-/

namespace A179133.P10866097852844352067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000045 (2 * n + 1) : ℚ) / (A101825 (n + 3) : ℚ))

end

end A179133.P10866097852844352067

namespace A179133

/-- `2*A000045(2*n+1)/A101825(n+3)` -/
def P10866097852844352067.Spec : Prop :=
  ∀ n, P10866097852844352067.a n = (A179133 n : ℚ)

end A179133

/-!
# A179134: a(n) = (F(2*n-1) + F(2*n+2)) * (5/6 - cos(2*Pi*n/3)/3), where F(n) = Fibonacci(n).

The programs for A179134, the canonical program `A179134.P7847244132411558568` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179134 has offset 0).

The definition of A179134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179134.P7847244132411558568

`18*a(n-3)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=13, a(4)=68, a(5)=178`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179134

/-- `18*a(n-3)-a(n-6)` -/
def P7847244132411558568.Spec : Prop :=
  ∀ n, P7847244132411558568.a n = A179134 n

theorem P7847244132411558568.correct : P7847244132411558568.Spec := by
  intro n
  simp only [A179134]

end A179134

/-! ## A179134.P10766398727613456816

`(n²+1)%3*A000045(Δ[n²])`
-/

namespace A179134.P10766398727613456816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1) % 3 : ℕ) : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A179134.P10766398727613456816

namespace A179134

/-- `(n²+1)%3*A000045(Δ[n²])` -/
def P10766398727613456816.Spec : Prop :=
  ∀ n, P10766398727613456816.a n = A179134 n

end A179134

/-! ## A179134.P9412710932354118587

`A099496(n)*A131714(n)`
-/

namespace A179134.P9412710932354118587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n * A131714 n

end

end A179134.P9412710932354118587

namespace A179134

/-- `A099496(n)*A131714(n)` -/
def P9412710932354118587.Spec : Prop :=
  ∀ n, P9412710932354118587.a n = A179134 n

end A179134

/-! ## A179134.P12114098466425971437

`A122367(n)*A130196(n)`
-/

namespace A179134.P12114098466425971437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n * A130196 n

end

end A179134.P12114098466425971437

namespace A179134

/-- `A122367(n)*A130196(n)` -/
def P12114098466425971437.Spec : Prop :=
  ∀ n, P12114098466425971437.a n = A179134 n

end A179134

/-! ## A179134.P13311311103503361315

`A126358(n)/A100063(n)`
-/

namespace A179134.P13311311103503361315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126358 n : ℚ) / (A100063 n : ℚ)

end

end A179134.P13311311103503361315

namespace A179134

/-- `A126358(n)/A100063(n)` -/
def P13311311103503361315.Spec : Prop :=
  ∀ n, P13311311103503361315.a n = (A179134 n : ℚ)

end A179134

/-! ## A179134.P9192178724144003197

`lcm(A099496(n), A153727(n))`
-/

namespace A179134.P9192178724144003197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099496 n) (A153727 n)

end

end A179134.P9192178724144003197

namespace A179134

/-- `lcm(A099496(n), A153727(n))` -/
def P9192178724144003197.Spec : Prop :=
  ∀ n, (P9192178724144003197.a n : ℤ) = A179134 n

end A179134

/-! ## A179134.P15772085689153461662

`A167808(2*n)+A128052(n)`
-/

namespace A179134.P15772085689153461662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (2 * n) + A128052 n

end

end A179134.P15772085689153461662

namespace A179134

/-- `A167808(2*n)+A128052(n)` -/
def P15772085689153461662.Spec : Prop :=
  ∀ n, P15772085689153461662.a n = A179134 n

end A179134

/-! ## A179134.P18379410442552804925

`A069705(n)/2*A179133(n)`
-/

namespace A179134.P18379410442552804925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069705 n : ℚ) / 2 * (A179133 n : ℚ)

end

end A179134.P18379410442552804925

namespace A179134

/-- `A069705(n)/2*A179133(n)` -/
def P18379410442552804925.Spec : Prop :=
  ∀ n, P18379410442552804925.a n = (A179134 n : ℚ)

end A179134

/-! ## A179134.P5843581207292766611

`A000045(Δ[n²])*A130196(n)`
-/

namespace A179134.P5843581207292766611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A130196 n

end

end A179134.P5843581207292766611

namespace A179134

/-- `A000045(Δ[n²])*A130196(n)` -/
def P5843581207292766611.Spec : Prop :=
  ∀ n, P5843581207292766611.a n = A179134 n

end A179134

/-! ## A179134.P4456943501646062436

`Δ[A000045(2*n)]*A130196(n)`
-/

namespace A179134.P4456943501646062436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130196 n

end

end A179134.P4456943501646062436

namespace A179134

/-- `Δ[A000045(2*n)]*A130196(n)` -/
def P4456943501646062436.Spec : Prop :=
  ∀ n, P4456943501646062436.a n = A179134 n

end A179134

/-! ## A179134.P4381511584546440909

`A195549(n+1)-A167808(2*n)`
-/

namespace A179134.P4381511584546440909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195549 (n + 1) - A167808 (2 * n)

end

end A179134.P4381511584546440909

namespace A179134

/-- `A195549(n+1)-A167808(2*n)` -/
def P4381511584546440909.Spec : Prop :=
  ∀ n, P4381511584546440909.a n = A179134 n

end A179134

/-! ## A179134.P14979522745036834166

`A130196(n)*A167816(2*n+1)`
-/

namespace A179134.P14979522745036834166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 n * A167816 (2 * n + 1)

end

end A179134.P14979522745036834166

namespace A179134

/-- `A130196(n)*A167816(2*n+1)` -/
def P14979522745036834166.Spec : Prop :=
  ∀ n, P14979522745036834166.a n = A179134 n

end A179134

/-! ## A179134.P18266549790721903555

`A153727(n)*A167808(2*n+1)`
-/

namespace A179134.P18266549790721903555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 n * A167808 (2 * n + 1)

end

end A179134.P18266549790721903555

namespace A179134

/-- `A153727(n)*A167808(2*n+1)` -/
def P18266549790721903555.Spec : Prop :=
  ∀ n, P18266549790721903555.a n = A179134 n

end A179134

/-! ## A179134.P14729222570983609130

`A128588(2*n+1)/A100063(n)`
-/

namespace A179134.P14729222570983609130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128588 (2 * n + 1) : ℚ) / (A100063 n : ℚ)

end

end A179134.P14729222570983609130

namespace A179134

/-- `A128588(2*n+1)/A100063(n)` -/
def P14729222570983609130.Spec : Prop :=
  ∀ n, P14729222570983609130.a n = (A179134 n : ℚ)

end A179134

/-! ## A179134.P15110525697812780776

`(A011655(n)+1)*A000045(2*n+1)`
-/

namespace A179134.P15110525697812780776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011655 n + 1) * A000045 (2 * n + 1)

end

end A179134.P15110525697812780776

namespace A179134

/-- `(A011655(n)+1)*A000045(2*n+1)` -/
def P15110525697812780776.Spec : Prop :=
  ∀ n, P15110525697812780776.a n = A179134 n

end A179134

/-! ## A179134.P10930443272329809393

`A055389(2*n+1)/A131534(n+1)`
-/

namespace A179134.P10930443272329809393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055389 (2 * n + 1) : ℚ) / (A131534 (n + 1) : ℚ)

end

end A179134.P10930443272329809393

namespace A179134

/-- `A055389(2*n+1)/A131534(n+1)` -/
def P10930443272329809393.Spec : Prop :=
  ∀ n, P10930443272329809393.a n = (A179134 n : ℚ)

end A179134

/-! ## A179134.P16232423553651995064

`(2-A079978(n))*A000045(2*n+1)`
-/

namespace A179134.P16232423553651995064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A079978 n) * A000045 (2 * n + 1)

end

end A179134.P16232423553651995064

namespace A179134

/-- `(2-A079978(n))*A000045(2*n+1)` -/
def P16232423553651995064.Spec : Prop :=
  ∀ n, P16232423553651995064.a n = A179134 n

end A179134

/-! ## A179134.P75040373989547369

`A000045(2*n+1)*A131718(2*n)`
-/

namespace A179134.P75040373989547369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A131718 (2 * n)

end

end A179134.P75040373989547369

namespace A179134

/-- `A000045(2*n+1)*A131718(2*n)` -/
def P75040373989547369.Spec : Prop :=
  ∀ n, P75040373989547369.a n = A179134 n

end A179134

/-! ## A179134.P1146428619964744374

`(2-A093719(2*n))*A000045(2*n+1)`
-/

namespace A179134.P1146428619964744374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A093719 (2 * n)) * A000045 (2 * n + 1)

end

end A179134.P1146428619964744374

namespace A179134

/-- `(2-A093719(2*n))*A000045(2*n+1)` -/
def P1146428619964744374.Spec : Prop :=
  ∀ n, P1146428619964744374.a n = A179134 n

end A179134

/-! ## A179134.P6482671563532052383

`gcd(2, A000045(n)+1)*A000045(2*n+1)`
-/

namespace A179134.P6482671563532052383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000045 n + 1) : ℤ) * A000045 (2 * n + 1)

end

end A179134.P6482671563532052383

namespace A179134

/-- `gcd(2, A000045(n)+1)*A000045(2*n+1)` -/
def P6482671563532052383.Spec : Prop :=
  ∀ n, P6482671563532052383.a n = A179134 n

end A179134

/-!
# A179135: a(n) = (3-sqrt(5))*((3+sqrt(5))/10)^(-n)/2 + (3+sqrt(5))*((3-sqrt(5))/10)^(-n)/2.

The programs for A179135, the canonical program `A179135.P12389729081759109058` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179135 has offset 0).

The definition of A179135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179135.P12389729081759109058

`A178381(4*n+3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179135

/-- `A178381(4*n+3)` -/
def P12389729081759109058.Spec : Prop :=
  ∀ n, P12389729081759109058.a n = A179135 n

theorem P12389729081759109058.correct : P12389729081759109058.Spec := by
  intro n
  simp only [A179135]

end A179135

/-! ## A179135.P14492261234529271646

`5^n*A000032(2*(n+1))`
-/

namespace A179135.P14492261234529271646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000032 (2 * (n + 1))

end

end A179135.P14492261234529271646

namespace A179135

/-- `5^n*A000032(2*(n+1))` -/
def P14492261234529271646.Spec : Prop :=
  ∀ n, P14492261234529271646.a n = A179135 n

end A179135

/-! ## A179135.P7459397055922485287

`ogf((3-10x)/(1-15x+25x^2))`
-/

namespace A179135.P7459397055922485287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10] [1, -15, 25] n

end

end A179135.P7459397055922485287

namespace A179135

/-- `ogf((3-10x)/(1-15x+25x^2))` -/
def P7459397055922485287.Spec : Prop :=
  ∀ n, P7459397055922485287.a n = A179135 n

end A179135

/-! ## A179135.P16019722266537615674

`A081567(Δ[n²])`
-/

namespace A179135.P16019722266537615674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A179135.P16019722266537615674

namespace A179135

/-- `A081567(Δ[n²])` -/
def P16019722266537615674.Spec : Prop :=
  ∀ n, P16019722266537615674.a n = A179135 n

end A179135

/-! ## A179135.P15091791319677827572

`5^n*A005248(n+1)`
-/

namespace A179135.P15091791319677827572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A005248 (n + 1)

end

end A179135.P15091791319677827572

namespace A179135

/-- `5^n*A005248(n+1)` -/
def P15091791319677827572.Spec : Prop :=
  ∀ n, P15091791319677827572.a n = A179135 n

end A179135

/-! ## A179135.P18194811173592137941

`lcm(5^n, A000032(n+2+n))`
-/

namespace A179135.P18194811173592137941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (5 ^ n : ℤ) (A000032 (n + 2 + n))

end

end A179135.P18194811173592137941

namespace A179135

/-- `lcm(5^n, A000032(n+2+n))` -/
def P18194811173592137941.Spec : Prop :=
  ∀ n, (P18194811173592137941.a n : ℤ) = A179135 n

end A179135

/-! ## A179135.P10011283356722585663

`record[A081567(A065190(n+1))]`
-/

namespace A179135.P10011283356722585663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179135.P10011283356722585663

namespace A179135

/-- `record[A081567(A065190(n+1))]` -/
def P10011283356722585663.Spec : Prop :=
  ∀ n, P10011283356722585663.a n = A179135 n

end A179135

/-! ## A179135.P10599980953763519893

`A000204(2*(n+1))*A000351(n)`
-/

namespace A179135.P10599980953763519893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) * A000351 n

end

end A179135.P10599980953763519893

namespace A179135

/-- `A000204(2*(n+1))*A000351(n)` -/
def P10599980953763519893.Spec : Prop :=
  ∀ n, P10599980953763519893.a n = A179135 n

end A179135

/-! ## A179135.P5214376973811121282

`A030191(2*n)+A020876(2*n)`
-/

namespace A179135.P5214376973811121282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030191 (2 * n) + A020876 (2 * n)

end

end A179135.P5214376973811121282

namespace A179135

/-- `A030191(2*n)+A020876(2*n)` -/
def P5214376973811121282.Spec : Prop :=
  ∀ n, P5214376973811121282.a n = A179135 n

end A179135

/-! ## A179135.P2288255292759318219

`A081567(2*n+1)+A000007(n+1)`
-/

namespace A179135.P2288255292759318219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (2 * n + 1) + A000007 (n + 1)

end

end A179135.P2288255292759318219

namespace A179135

/-- `A081567(2*n+1)+A000007(n+1)` -/
def P2288255292759318219.Spec : Prop :=
  ∀ n, P2288255292759318219.a n = A179135 n

end A179135

/-!
# A179136: Parameters n for which the elliptic curve y^2=x^3-n has rank 3.

The programs for A179136, there is no canonical definition to state claims against.
-/

/-! ## A179136.P12988948669660675077

`eq[3, A060951(A028310(n))]`
-/

namespace A179136.P12988948669660675077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179136.P12988948669660675077

/-!
# A179145: Numbers k such that Mordell's equation y^2 = x^3 + k has exactly 1 integral solution.

The programs for A179145, there is no canonical definition to state claims against.
-/

/-! ## A179145.P361511710577782363

`A356709(n+1)^3`
-/

namespace A179145.P361511710577782363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356709 (n + 1) ^ 3

end

end A179145.P361511710577782363

/-! ## A179145.P10940186537481622339

`comp[∪[A356720(n+1), n²]]^3`
-/

namespace A179145.P10940186537481622339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 3

end

end A179145.P10940186537481622339

/-! ## A179145.P1507881447676886647

`A000578(A356709(n+1))`
-/

namespace A179145.P1507881447676886647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A356709 (n + 1)).toNat

end

end A179145.P1507881447676886647

/-! ## A179145.P9652536329788089465

`A034828(2*A356709(n+1))`
-/

namespace A179145.P9652536329788089465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A356709 (n + 1)).toNat

end

end A179145.P9652536329788089465

/-! ## A179145.P5972111812101921716

`A109588(3*A356709(n+1))`
-/

namespace A179145.P5972111812101921716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (3 * A356709 (n + 1)).toNat

end

end A179145.P5972111812101921716

/-! ## A179145.P3105321974763206639

`A000578(comp[∪[A356720(n+1), n²]])`
-/

namespace A179145.P3105321974763206639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A179145.P3105321974763206639

/-! ## A179145.P2280842935132922356

`A000578(comp[A356720(floor(n/2)+1)-1]+1)`
-/

namespace A179145.P2280842935132922356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (⌊(n : ℚ) / 2⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A179145.P2280842935132922356

/-! ## A179145.P17614483970511917818

`A356709(n+1)²*comp[∪[A356720(n+1), n²]]`
-/

namespace A179145.P17614483970511917818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356709 (n + 1) ^ 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A179145.P17614483970511917818

/-!
# A179146: Numbers k such that Mordell's equation y^2 = x^3 + k has exactly 2 integral solutions.

The programs for A179146, there is no canonical definition to state claims against.
-/

/-! ## A179146.P11341447901386392981

`eq[2, A081119(n+1)]+1`
-/

namespace A179146.P11341447901386392981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179146.P11341447901386392981

/-! ## A179146.P6551610349152939874

`eq[2, A081119(n^floor(atan(n)))]`
-/

namespace A179146.P6551610349152939874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179146.P6551610349152939874

/-! ## A179146.P251771325936777319

`eq[2, A081119(floor(2/acot(n))-n)]`
-/

namespace A179146.P251771325936777319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179146.P251771325936777319

/-! ## A179146.P10815911145903788205

`eq[2, A081119(A028310(n))]`
-/

namespace A179146.P10815911145903788205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179146.P10815911145903788205

/-! ## A179146.P5425205565118291219

`A020725(eq[2, A081119(n+1)])`
-/

namespace A179146.P5425205565118291219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179146.P5425205565118291219

/-! ## A179146.P13480334196004663416

`eq[2, A081119(A123108(2*n))]`
-/

namespace A179146.P13480334196004663416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179146.P13480334196004663416

/-! ## A179146.P5288481362937199197

`eq[2, A081119(A000007(n)+n)]`
-/

namespace A179146.P5288481362937199197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179146.P5288481362937199197

/-! ## A179146.P12382418252864527614

`∩[A007412(n+1), A134220(n+1)]`
-/

namespace A179146.P12382418252864527614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179146.P12382418252864527614

/-! ## A179146.P11144840736947872346

`∩[A072497(n+1), A134220(n+1)]`
-/

namespace A179146.P11144840736947872346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179146.P11144840736947872346

/-! ## A179146.P6022480282810025607

`eq[2, A081119(A007318(A000124(n)))]`
-/

namespace A179146.P6022480282810025607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179146.P6022480282810025607

/-!
# A179147: Numbers k such that Mordell's equation y^2 = x^3 + k has exactly 3 integral solutions.

The programs for A179147, there is no canonical definition to state claims against.
-/

/-! ## A179147.P16987087233261242107

`A356710(n+1)^3`
-/

namespace A179147.P16987087233261242107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356710 (n + 1) ^ 3

end

end A179147.P16987087233261242107

/-! ## A179147.P9638854975995598464

`A000578(A356710(n+1))`
-/

namespace A179147.P9638854975995598464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A356710 (n + 1)).toNat

end

end A179147.P9638854975995598464

/-! ## A179147.P5994680261968020028

`A110650(4*A356710(n+1))`
-/

namespace A179147.P5994680261968020028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (4 * A356710 (n + 1)).toNat

end

end A179147.P5994680261968020028

/-! ## A179147.P614843073005729284

`A008496(5*A356710(n+1))`
-/

namespace A179147.P614843073005729284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 (5 * A356710 (n + 1)).toNat

end

end A179147.P614843073005729284

/-! ## A179147.P8817593306000361167

`(eq[2, A356708(n+1)]+1)^3`
-/

namespace A179147.P8817593306000361167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 3

end

end A179147.P8817593306000361167

/-!
# A179148: Numbers k such that Mordell's equation y^2 = x^3 + k has exactly 4 integral solutions.

The programs for A179148, there is no canonical definition to state claims against.
-/

/-! ## A179148.P4654913082106839806

`eq[4, A081119(n^floor(atan(n)))]`
-/

namespace A179148.P4654913082106839806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179148.P4654913082106839806

/-! ## A179148.P9337851313646349494

`eq[4, A081119(A028310(n))]`
-/

namespace A179148.P9337851313646349494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179148.P9337851313646349494

/-! ## A179148.P16777214621495283354

`A020725(eq[4, A081119(n+1)])`
-/

namespace A179148.P16777214621495283354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179148.P16777214621495283354

/-! ## A179148.P18110162502658650928

`eq[4, A081119(A233583(n+1))]`
-/

namespace A179148.P18110162502658650928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179148.P18110162502658650928

/-! ## A179148.P2166200018960470542

`A065475(eq[2, A081119(n+1)-2])`
-/

namespace A179148.P2166200018960470542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179148.P2166200018960470542

/-! ## A179148.P2122848006533094146

`A065475(eq[2, A081119(n+1)/2])`
-/

namespace A179148.P2122848006533094146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081119 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A179148.P2122848006533094146

/-!
# A179149: Numbers k such that Mordell's equation y^2 = x^3 + k has exactly 5 integral solutions.

The programs for A179149, there is no canonical definition to state claims against.
-/

/-! ## A179149.P5087036383182121851

`A356711(n+1)^3`
-/

namespace A179149.P5087036383182121851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356711 (n + 1) ^ 3

end

end A179149.P5087036383182121851

/-! ## A179149.P827060531914177263

`A000578(A356711(n+1))`
-/

namespace A179149.P827060531914177263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A356711 (n + 1)).toNat

end

end A179149.P827060531914177263

/-! ## A179149.P2268451340969334946

`∑{d}[A356711(n+1), A059376(#)]`
-/

namespace A179149.P2268451340969334946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059376 d

end

end A179149.P2268451340969334946

/-! ## A179149.P6548638706508094238

`(eq[3, A356708(n+1)]+1)^3`
-/

namespace A179149.P6548638706508094238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 3

end

end A179149.P6548638706508094238

/-! ## A179149.P16435206534603362089

`(eq[5, A356706(n+1)]+1)^3`
-/

namespace A179149.P16435206534603362089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 3

end

end A179149.P16435206534603362089

/-!
# A179150: Numbers k such that Mordell's equation y^2 = x^3 + k has exactly 6 integral solutions.

The programs for A179150, there is no canonical definition to state claims against.
-/

/-! ## A179150.P13979100779529048633

`eq[6, A081119(n+1)]+1`
-/

namespace A179150.P13979100779529048633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179150.P13979100779529048633

/-! ## A179150.P9649239641937474272

`eq[6, A081119(n^floor(atan(n)))]`
-/

namespace A179150.P9649239641937474272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179150.P9649239641937474272

/-! ## A179150.P3412362165935085779

`eq[6, A081119(A028310(n))]`
-/

namespace A179150.P3412362165935085779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179150.P3412362165935085779

/-! ## A179150.P16498974758680963743

`A020725(eq[6, A081119(n+1)])`
-/

namespace A179150.P16498974758680963743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179150.P16498974758680963743

/-! ## A179150.P11701203053671842507

`A065475(eq[6, A081119(n+1)])`
-/

namespace A179150.P11701203053671842507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179150.P11701203053671842507

/-!
# A179151: Numbers k such that Mordell's equation y^2 = x^3 + k has exactly 7 integral solutions.

The programs for A179151, there is no canonical definition to state claims against.
-/

/-! ## A179151.P4202388978778003859

`A356712(n+1)^3`
-/

namespace A179151.P4202388978778003859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356712 (n + 1) ^ 3

end

end A179151.P4202388978778003859

/-! ## A179151.P8206868485627613919

`A000578(A356712(n+1))`
-/

namespace A179151.P8206868485627613919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A356712 (n + 1)).toNat

end

end A179151.P8206868485627613919

/-! ## A179151.P214683910115463611

`A110650(4*A356712(n+1))`
-/

namespace A179151.P214683910115463611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (4 * A356712 (n + 1)).toNat

end

end A179151.P214683910115463611

/-!
# A179152: Numbers n such that Mordell's equation y^2 = x^3 + n has exactly 8 integral solutions.

The programs for A179152, there is no canonical definition to state claims against.
-/

/-! ## A179152.P2595025415574724465

`A020725(eq[8, A081119(n+1)])`
-/

namespace A179152.P2595025415574724465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179152.P2595025415574724465

/-! ## A179152.P8358219239493438097

`A134223(n+2)`
-/

namespace A179152.P8358219239493438097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134223 (n + 2)

end

end A179152.P8358219239493438097

/-! ## A179152.P858875373248499995

`record[A134223(A028920(A004442(n)))]`
-/

namespace A179152.P858875373248499995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134223 (A028920 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179152.P858875373248499995

/-! ## A179152.P2364384556592244146

`record[A134223(A080513(A028242(n)))]`
-/

namespace A179152.P2364384556592244146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134223 (A080513 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179152.P2364384556592244146

/-! ## A179152.P15503874964227074142

`record[A134223(A116939(A016789(n)))]`
-/

namespace A179152.P15503874964227074142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134223 (A116939 (A016789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179152.P15503874964227074142

/-!
# A179153: Numbers n such that Mordell's equation y^2 = x^3 + n has exactly 10 integral solutions.

The programs for A179153, there is no canonical definition to state claims against.
-/

/-! ## A179153.P10806197419797769078

`eq[10, A081119(A233583(n+1))]`
-/

namespace A179153.P10806197419797769078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179153.P10806197419797769078

/-!
# A179156: G.f. satisfies: A(x) = B(x*A(x)) where B(x) = Sum_{n>=0} x^n/n!^2 and A(x) = Sum_{n>=0} a(n)*x^n/n!^2.

The programs for A179156, there is no canonical definition to state claims against.
-/

/-! ## A179156.P11295281580621383074

`A287316(A056220(n+1))/(n+1)`
-/

namespace A179156.P11295281580621383074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287316 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A179156.P11295281580621383074

/-! ## A179156.P11690614752137411054

`A287316(A074148(2*n+1))/(n+1)`
-/

namespace A179156.P11690614752137411054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287316 (A074148 (2 * n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A179156.P11690614752137411054

/-!
# A179163: Numbers k such that Mordell's equation y^2 = x^3 - k has exactly 1 integral solution.

The programs for A179163, there is no canonical definition to state claims against.
-/

/-! ## A179163.P9852714410950402327

`A356713(n+1)^3`
-/

namespace A179163.P9852714410950402327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1) ^ 3

end

end A179163.P9852714410950402327

/-! ## A179163.P9655338964629297840

`(comp[A228948(n+1)-1]+1)^3`
-/

namespace A179163.P9655338964629297840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228948 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 3

end

end A179163.P9655338964629297840

/-! ## A179163.P11327935674263019201

`A000578(A356713(n+1))`
-/

namespace A179163.P11327935674263019201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A356713 (n + 1)).toNat

end

end A179163.P11327935674263019201

/-! ## A179163.P10118813051616496853

`A000578(comp[A228948(n+1)-1]+1)`
-/

namespace A179163.P10118813051616496853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228948 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A179163.P10118813051616496853

/-! ## A179163.P5025172880472317472

`∑[A270419(∑[A070759(n+1)])]^3`
-/

namespace A179163.P5025172880472317472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070759 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A179163.P5025172880472317472

/-!
# A179164: Numbers k such that Mordell's equation y^2 = x^3 - k has exactly 2 integral solutions.

The programs for A179164, there is no canonical definition to state claims against.
-/

/-! ## A179164.P12834723761120114573

`eq[2, A081120(n+1)]+1`
-/

namespace A179164.P12834723761120114573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179164.P12834723761120114573

/-! ## A179164.P13260020452515963615

`eq[2, A081120(n^floor(atan(n)))]`
-/

namespace A179164.P13260020452515963615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179164.P13260020452515963615

/-! ## A179164.P11254481128217562909

`eq[2, A081120(A028310(n))]`
-/

namespace A179164.P11254481128217562909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179164.P11254481128217562909

/-! ## A179164.P17208070835678874945

`A020725(eq[2, A081120(n+1)])`
-/

namespace A179164.P17208070835678874945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179164.P17208070835678874945

/-! ## A179164.P5020827257762997242

`eq[2, A081120(A065033(2*n))]`
-/

namespace A179164.P5020827257762997242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179164.P5020827257762997242

/-! ## A179164.P17811450957489123679

`eq[2, A081120(A123108(2*n))]`
-/

namespace A179164.P17811450957489123679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179164.P17811450957489123679

/-! ## A179164.P11127379059058878314

`eq[2, A081120(A000007(n)+n)]`
-/

namespace A179164.P11127379059058878314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179164.P11127379059058878314

/-! ## A179164.P5201379706845207649

`eq[2, A081120(A004277(n)-n)]`
-/

namespace A179164.P5201379706845207649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179164.P5201379706845207649

/-!
# A179165: Numbers k such that Mordell's equation y^2 = x^3 - k has exactly 4 integral solutions.

The programs for A179165, there is no canonical definition to state claims against.
-/

/-! ## A179165.P9196781590576511624

`eq[2, A134109(A055456(n+1))]`
-/

namespace A179165.P9196781590576511624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179165.P9196781590576511624

/-! ## A179165.P1424805694666899167

`eq[4, A081120(A105438(C(n, 2)))]`
-/

namespace A179165.P1424805694666899167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A105438 (Nat.choose n 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179165.P1424805694666899167

/-! ## A179165.P17623895996132919307

`eq[2, A134109(A000267(n²)-n)]`
-/

namespace A179165.P17623895996132919307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (A000267 (n ^ 2) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179165.P17623895996132919307

/-! ## A179165.P17342043785336885380

`lt[A258928(3*n+4), A143047(A081120(n+1))]+1`
-/

namespace A179165.P17342043785336885380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258928 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143047 (A081120 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A179165.P17342043785336885380

/-!
# A179166: Numbers k such that Mordell's equation y^2 = x^3 - k has exactly 6 integral solutions.

The programs for A179166, there is no canonical definition to state claims against.
-/

/-! ## A179166.P13269268364588927588

`eq[A010696(A167794(n+1)), A081120(n+1)]+1`
-/

namespace A179166.P13269268364588927588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 (A167794 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179166.P13269268364588927588

/-! ## A179166.P278060492389342523

`eq[1, A320736(a(A134109(n))+1)]` with `a(0)=2, a(1)=6, a(2)=21, a(3)=0, a(4)=2`
-/

namespace A179166.P278060492389342523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 21, 0, 2] fun n f2 =>
  A320736 (f2 (A134109 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179166.P278060492389342523

/-! ## A179166.P16301810112166794638

`eq[3, A134109(A055456(n+1))]`
-/

namespace A179166.P16301810112166794638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179166.P16301810112166794638

/-! ## A179166.P7152138594620516379

`eq[6, A081120(A055456(n+1))]*A344970(n+1)`
-/

namespace A179166.P7152138594620516379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A055456 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A344970 (n + 1)

end

end A179166.P7152138594620516379

/-!
# A179167: a(n) is the number of red balls in an urn such that if the urn contains b(n)=A101265(n) blue balls, the probability of drawing 3 red balls without replacement is the same as drawing 1 red and 2 blue balls without replacement; that is, binomial(a(n),3) = binomial(a(n),1) * binomial(b(n),2).

The programs for A179167, the canonical program `A179167.P1202822188209569363` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179167 has offset 1).

The definition of A179167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179167.P1202822188209569363

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=3, a(1)=4, a(2)=11, a(3)=37`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179167

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P1202822188209569363.Spec : Prop :=
  ∀ n, P1202822188209569363.a n = A179167 (n + 1)

theorem P1202822188209569363.correct : P1202822188209569363.Spec := by
  intro n
  simp only [A179167, Nat.add_sub_cancel]

end A179167

/-! ## A179167.P5127625195695874314

`∑[floor((sqrt(3)+2)*a(n-1))]` with `a(0)=3, a(1)=1, a(2)=7`
-/

namespace A179167.P5127625195695874314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 7] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179167.P5127625195695874314

namespace A179167

/-- `∑[floor((sqrt(3)+2)*a(n-1))]` -/
def P5127625195695874314.Spec : Prop :=
  ∀ n, P5127625195695874314.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P6034659027103340013

`ceil(A102871(n)+acot(n))`
-/

namespace A179167.P6034659027103340013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102871 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉

end

end A179167.P6034659027103340013

namespace A179167

/-- `ceil(A102871(n)+acot(n))` -/
def P6034659027103340013.Spec : Prop :=
  ∀ n, P6034659027103340013.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P15887087731846195053

`∑[A001075(n)]+ceil(acot(n))`
-/

namespace A179167.P15887087731846195053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A179167.P15887087731846195053

namespace A179167

/-- `∑[A001075(n)]+ceil(acot(n))` -/
def P15887087731846195053.Spec : Prop :=
  ∀ n, P15887087731846195053.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P2176348524811670980

`round(sqrt(n²+1))+∑[A092184(n)]+2`
-/

namespace A179167.P2176348524811670980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A179167.P2176348524811670980

namespace A179167

/-- `round(sqrt(n²+1))+∑[A092184(n)]+2` -/
def P2176348524811670980.Spec : Prop :=
  ∀ n, P2176348524811670980.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P17852416824888550751

`A102871(n)+A054977(n)`
-/

namespace A179167.P17852416824888550751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n + A054977 n

end

end A179167.P17852416824888550751

namespace A179167

/-- `A102871(n)+A054977(n)` -/
def P17852416824888550751.Spec : Prop :=
  ∀ n, P17852416824888550751.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P16135445644925150976

`A102871(n)+A000038(n)!`
-/

namespace A179167.P16135445644925150976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n + (Nat.factorial (A000038 n).toNat : ℤ)

end

end A179167.P16135445644925150976

namespace A179167

/-- `A102871(n)+A000038(n)!` -/
def P16135445644925150976.Spec : Prop :=
  ∀ n, P16135445644925150976.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P15591396372445579425

`A054977(n)+∑[A001075(n)]`
-/

namespace A179167.P15591396372445579425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179167.P15591396372445579425

namespace A179167

/-- `A054977(n)+∑[A001075(n)]` -/
def P15591396372445579425.Spec : Prop :=
  ∀ n, P15591396372445579425.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P13888117350554563557

`∑[A001075(n)]+A000038(n)!`
-/

namespace A179167.P13888117350554563557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial (A000038 n).toNat : ℤ)

end

end A179167.P13888117350554563557

namespace A179167

/-- `∑[A001075(n)]+A000038(n)!` -/
def P13888117350554563557.Spec : Prop :=
  ∀ n, P13888117350554563557.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P3690698002906955406

`A000007(n)+∑[A001075(n)]+1`
-/

namespace A179167.P3690698002906955406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A179167.P3690698002906955406

namespace A179167

/-- `A000007(n)+∑[A001075(n)]+1` -/
def P3690698002906955406.Spec : Prop :=
  ∀ n, P3690698002906955406.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P3944398720205029690

`∑[A002531(2*n)]+A000038(n)!`
-/

namespace A179167.P3944398720205029690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial (A000038 n).toNat : ℤ)

end

end A179167.P3944398720205029690

namespace A179167

/-- `∑[A002531(2*n)]+A000038(n)!` -/
def P3944398720205029690.Spec : Prop :=
  ∀ n, P3944398720205029690.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P14888681326657864088

`∑[A001075(n)]+A014963(4*n+2)`
-/

namespace A179167.P14888681326657864088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A014963 (4 * n + 2)

end

end A179167.P14888681326657864088

namespace A179167

/-- `∑[A001075(n)]+A014963(4*n+2)` -/
def P14888681326657864088.Spec : Prop :=
  ∀ n, P14888681326657864088.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P7872641123101464659

`∑[A001075(n)]+A014442(n+1)%4`
-/

namespace A179167.P7872641123101464659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A014442 (n + 1)) 4

end

end A179167.P7872641123101464659

namespace A179167

/-- `∑[A001075(n)]+A014442(n+1)%4` -/
def P7872641123101464659.Spec : Prop :=
  ∀ n, P7872641123101464659.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P1834678403658211956

`A000079(floor(1/(n+1)))+∑[A001075(n)]`
-/

namespace A179167.P1834678403658211956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌊1 / (n + 1 : ℚ)⌋.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179167.P1834678403658211956

namespace A179167

/-- `A000079(floor(1/(n+1)))+∑[A001075(n)]` -/
def P1834678403658211956.Spec : Prop :=
  ∀ n, P1834678403658211956.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P4748799886668709980

`A001075(floor(1/(n+1)))+∑[A001075(n)]`
-/

namespace A179167.P4748799886668709980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 ⌊1 / (n + 1 : ℚ)⌋.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179167.P4748799886668709980

namespace A179167

/-- `A001075(floor(1/(n+1)))+∑[A001075(n)]` -/
def P4748799886668709980.Spec : Prop :=
  ∀ n, P4748799886668709980.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P4384550771141246947

`A020639(A008864(n+1))+A001571(n)`
-/

namespace A179167.P4384550771141246947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008864 (n + 1)).toNat + A001571 n

end

end A179167.P4384550771141246947

namespace A179167

/-- `A020639(A008864(n+1))+A001571(n)` -/
def P4384550771141246947.Spec : Prop :=
  ∀ n, P4384550771141246947.a n = A179167 (n + 1)

end A179167

/-! ## A179167.P6890469523250310995

`A343180(A004277(2*n))+A102871(n)`
-/

namespace A179167.P6890469523250310995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (A004277 (2 * n)).toNat + A102871 n

end

end A179167.P6890469523250310995

namespace A179167

/-- `A343180(A004277(2*n))+A102871(n)` -/
def P6890469523250310995.Spec : Prop :=
  ∀ n, P6890469523250310995.a n = A179167 (n + 1)

end A179167

/-!
# A179168: Numbers k such that Mordell's equation y^2 = x^3 - k has exactly 8 integral solutions.

The programs for A179168, there is no canonical definition to state claims against.
-/

/-! ## A179168.P3022286685506606320

`eq[8, A081120(A233583(n+1))]`
-/

namespace A179168.P3022286685506606320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179168.P3022286685506606320

/-!
# A179170: Numbers n such that Mordell's equation y^2 = x^3 - n has exactly 12 integral solutions.

The programs for A179170, there is no canonical definition to state claims against.
-/

/-! ## A179170.P14911757591298316666

`eq[12, A081120(A028310(n))]`
-/

namespace A179170.P14911757591298316666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179170.P14911757591298316666

/-! ## A179170.P684046026911617347

`A020725(eq[12, A081120(n+1)])`
-/

namespace A179170.P684046026911617347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179170.P684046026911617347

/-!
# A179176: Number of vertices with even distance from the root in "0-1-2" Motzkin trees on n edges.

The programs for A179176, there is no canonical definition to state claims against.
-/

/-! ## A179176.P898694668245861005

`A261585(ceil(sqrt(A232332(n+1))))`
-/

namespace A179176.P898694668245861005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 ⌈Real.sqrt (A232332 (n + 1) : ℝ)⌉.toNat

end

end A179176.P898694668245861005

/-! ## A179176.P10289301080566176043

`A210713(n)+A062108(A071356(n))`
-/

namespace A179176.P10289301080566176043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 n + A062108 (A071356 n).toNat

end

end A179176.P10289301080566176043

/-! ## A179176.P11187619549514403238

`or(A062108(A071356(n)), A185116(n))`
-/

namespace A179176.P11187619549514403238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062108 (A071356 n).toNat) (A185116 n)

end

end A179176.P11187619549514403238

/-!
# A179178: The number of equal-sized equilateral triangles visible (when viewed from above) in successive Genealodrons formed from 2^n -1 same size equilateral triangles.

The programs for A179178, the canonical program `A179178.P17431606214982428463` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179178 has offset 1).

The definition of A179178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179178.P17431606214982428463

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=14, a(4)=25, a(5)=40, a(6)=57, a(7)=77`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179178

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17431606214982428463.Spec : Prop :=
  ∀ n, P17431606214982428463.a n = A179178 (n + 1)

theorem P17431606214982428463.correct : P17431606214982428463.Spec := by
  intro n
  simp only [A179178, Nat.add_sub_cancel]

end A179178

/-! ## A179178.P2767708141550579353

`A214295(A136548(n+1))+A005449(n)`
-/

namespace A179178.P2767708141550579353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (A136548 (n + 1)).toNat + A005449 n

end

end A179178.P2767708141550579353

namespace A179178

/-- `A214295(A136548(n+1))+A005449(n)` -/
def P2767708141550579353.Spec : Prop :=
  ∀ n, P2767708141550579353.a n = A179178 (n + 1)

end A179178

/-! ## A179178.P2625949901435713892

`A005449(n)-A010815(A235868(n+1))`
-/

namespace A179178.P2625949901435713892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A010815 (A235868 (n + 1)).toNat

end

end A179178.P2625949901435713892

namespace A179178

/-- `A005449(n)-A010815(A235868(n+1))` -/
def P2625949901435713892.Spec : Prop :=
  ∀ n, P2625949901435713892.a n = A179178 (n + 1)

end A179178

/-! ## A179178.P322805816104305694

`A005449(n)-A010815(A324050(n+1))`
-/

namespace A179178.P322805816104305694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A010815 (A324050 (n + 1)).toNat

end

end A179178.P322805816104305694

namespace A179178

/-- `A005449(n)-A010815(A324050(n+1))` -/
def P322805816104305694.Spec : Prop :=
  ∀ n, P322805816104305694.a n = A179178 (n + 1)

end A179178

/-! ## A179178.P5639876756730612024

`A257628(A008578(n+1))+A005449(n)`
-/

namespace A179178.P5639876756730612024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (A008578 (n + 1)).toNat + A005449 n

end

end A179178.P5639876756730612024

namespace A179178

/-- `A257628(A008578(n+1))+A005449(n)` -/
def P5639876756730612024.Spec : Prop :=
  ∀ n, P5639876756730612024.a n = A179178 (n + 1)

end A179178

/-! ## A179178.P17014016723978532038

`A001318(A005843(n))-A010815(A008578(n+1))`
-/

namespace A179178.P17014016723978532038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A005843 n).toNat - A010815 (A008578 (n + 1)).toNat

end

end A179178.P17014016723978532038

namespace A179178

/-- `A001318(A005843(n))-A010815(A008578(n+1))` -/
def P17014016723978532038.Spec : Prop :=
  ∀ n, P17014016723978532038.a n = A179178 (n + 1)

end A179178

/-! ## A179178.P12444360770644202859

`A001318(2*n)-A010815(A143390(n+1))`
-/

namespace A179178.P12444360770644202859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n) - A010815 (A143390 (n + 1)).toNat

end

end A179178.P12444360770644202859

namespace A179178

/-- `A001318(2*n)-A010815(A143390(n+1))` -/
def P12444360770644202859.Spec : Prop :=
  ∀ n, P12444360770644202859.a n = A179178 (n + 1)

end A179178

/-!
# A179179: a(n) = phi(n) - omega(n) = A000010(n) - A001221(n).

The programs for A179179, the canonical program `A179179.P432816049346132752` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179179 has offset 1).

The definition of A179179 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179179.P432816049346132752

`A000010(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A179179

/-- `A000010(n+1)-A001221(n+1)` -/
def P432816049346132752.Spec : Prop :=
  ∀ n, P432816049346132752.a n = A179179 (n + 1)

theorem P432816049346132752.correct : P432816049346132752.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel]

end A179179

/-! ## A179179.P6519065161353371362

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-∑{p}[n+1, gcd(n, #)]`
-/

namespace A179179.P6519065161353371362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.gcd n p : ℕ) : ℚ)

end

end A179179.P6519065161353371362

namespace A179179

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-∑{p}[n+1, gcd(n, #)]` -/
def P6519065161353371362.Spec : Prop :=
  ∀ n, P6519065161353371362.a n = (A179179 (n + 1) : ℚ)

end A179179

/-! ## A179179.P4066493791922134773

`Δ[A002088(n)]-A001221(n+1)`
-/

namespace A179179.P4066493791922134773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001221 (n + 1)

end

end A179179.P4066493791922134773

namespace A179179

/-- `Δ[A002088(n)]-A001221(n+1)` -/
def P4066493791922134773.Spec : Prop :=
  ∀ n, P4066493791922134773.a n = A179179 (n + 1)

end A179179

/-! ## A179179.P1639981319892939861

`Δ[A005728(n)]-A001221(n+1)`
-/

namespace A179179.P1639981319892939861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001221 (n + 1)

end

end A179179.P1639981319892939861

namespace A179179

/-- `Δ[A005728(n)]-A001221(n+1)` -/
def P1639981319892939861.Spec : Prop :=
  ∀ n, P1639981319892939861.a n = A179179 (n + 1)

end A179179

/-! ## A179179.P3504010568817150871

`A048865(n+1)+A037228(n+1)`
-/

namespace A179179.P3504010568817150871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A037228 (n + 1)

end

end A179179.P3504010568817150871

namespace A179179

/-- `A048865(n+1)+A037228(n+1)` -/
def P3504010568817150871.Spec : Prop :=
  ∀ n, P3504010568817150871.a n = A179179 (n + 1)

theorem P3504010568817150871.correct : P3504010568817150871.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P3504010568817150871.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A037228, A037228.P4220557198165153324.a, A048865, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P3272323048517459797

`A063070(n+1)+A033273(n+1)`
-/

namespace A179179.P3272323048517459797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1) + A033273 (n + 1)

end

end A179179.P3272323048517459797

namespace A179179

/-- `A063070(n+1)+A033273(n+1)` -/
def P3272323048517459797.Spec : Prop :=
  ∀ n, P3272323048517459797.a n = A179179 (n + 1)

theorem P3272323048517459797.correct : P3272323048517459797.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P3272323048517459797.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A033273, A033273.P18420659424697249895.a, A063070, A063070.P5416196495209204381.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P11994367045395035576

`A083254(n+1)+A057860(n+1)`
-/

namespace A179179.P11994367045395035576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + A057860 (n + 1)

end

end A179179.P11994367045395035576

namespace A179179

/-- `A083254(n+1)+A057860(n+1)` -/
def P11994367045395035576.Spec : Prop :=
  ∀ n, P11994367045395035576.a n = A179179 (n + 1)

theorem P11994367045395035576.correct : P11994367045395035576.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P11994367045395035576.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A057860, A057860.P15781516878484293447.a, A083254, A083254.P7544960031424623367.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A051953, A051953.P11179276897610979764.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P9041990115210315597

`A039649(n+1)-A083399(n+1)`
-/

namespace A179179.P9041990115210315597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A083399 (n + 1)

end

end A179179.P9041990115210315597

namespace A179179

/-- `A039649(n+1)-A083399(n+1)` -/
def P9041990115210315597.Spec : Prop :=
  ∀ n, P9041990115210315597.a n = A179179 (n + 1)

theorem P9041990115210315597.correct : P9041990115210315597.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P9041990115210315597.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A039649, A039649.P16717312505280968063.a, A083399, A083399.P16148020281325742632.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A055212, A055212.P14412881054625885538.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P4739258355935967212

`A061468(n+1)-A163523(n+1)`
-/

namespace A179179.P4739258355935967212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A163523 (n + 1)

end

end A179179.P4739258355935967212

namespace A179179

/-- `A061468(n+1)-A163523(n+1)` -/
def P4739258355935967212.Spec : Prop :=
  ∀ n, P4739258355935967212.a n = A179179 (n + 1)

theorem P4739258355935967212.correct : P4739258355935967212.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P4739258355935967212.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A061468, A061468.P5735709615131522244.a, A163523, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P9673625880726695843

`A121048(n+1)-A229109(n+1)`
-/

namespace A179179.P9673625880726695843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A229109 (n + 1)

end

end A179179.P9673625880726695843

namespace A179179

/-- `A121048(n+1)-A229109(n+1)` -/
def P9673625880726695843.Spec : Prop :=
  ∀ n, P9673625880726695843.a n = A179179 (n + 1)

theorem P9673625880726695843.correct : P9673625880726695843.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P9673625880726695843.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A121048, A121048.P10222907602682812102.a, A229109, A229109.P7396241872602068631.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P5204310121464894719

`A378993(n+1)-A051953(n+1)`
-/

namespace A179179.P5204310121464894719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378993 (n + 1) - A051953 (n + 1)

end

end A179179.P5204310121464894719

namespace A179179

/-- `A378993(n+1)-A051953(n+1)` -/
def P5204310121464894719.Spec : Prop :=
  ∀ n, P5204310121464894719.a n = A179179 (n + 1)

theorem P5204310121464894719.correct : P5204310121464894719.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P5204310121464894719.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A051953, A051953.P11179276897610979764.a, A378993, A378993.P12473165963195423861.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P870251310710431302

`A065387(n+1)-A380457(n+1)`
-/

namespace A179179.P870251310710431302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A380457 (n + 1)

end

end A179179.P870251310710431302

namespace A179179

/-- `A065387(n+1)-A380457(n+1)` -/
def P870251310710431302.Spec : Prop :=
  ∀ n, P870251310710431302.a n = A179179 (n + 1)

theorem P870251310710431302.correct : P870251310710431302.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P870251310710431302.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A065387, A065387.P11284875715279330998.a, A380457, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P3492005785832872797

`A039649(n+1)-(A001221(n+1)+1)`
-/

namespace A179179.P3492005785832872797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A001221 (n + 1) + 1)

end

end A179179.P3492005785832872797

namespace A179179

/-- `A039649(n+1)-(A001221(n+1)+1)` -/
def P3492005785832872797.Spec : Prop :=
  ∀ n, P3492005785832872797.a n = A179179 (n + 1)

theorem P3492005785832872797.correct : P3492005785832872797.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P3492005785832872797.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P8823011874103026890

`A000010(n+1)+1-A083399(n+1)`
-/

namespace A179179.P8823011874103026890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (1 - A083399 (n + 1))

end

end A179179.P8823011874103026890

namespace A179179

/-- `A000010(n+1)+1-A083399(n+1)` -/
def P8823011874103026890.Spec : Prop :=
  ∀ n, P8823011874103026890.a n = A179179 (n + 1)

theorem P8823011874103026890.correct : P8823011874103026890.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P8823011874103026890.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A083399, A083399.P16148020281325742632.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A055212, A055212.P14412881054625885538.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P5892752746869455450

`A109606(n+1)+1-A001221(n+1)`
-/

namespace A179179.P5892752746869455450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A001221 (n + 1))

end

end A179179.P5892752746869455450

namespace A179179

/-- `A109606(n+1)+1-A001221(n+1)` -/
def P5892752746869455450.Spec : Prop :=
  ∀ n, P5892752746869455450.a n = A179179 (n + 1)

theorem P5892752746869455450.correct : P5892752746869455450.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P5892752746869455450.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P10673416677358331091

`A109606(n+1)+2-A083399(n+1)`
-/

namespace A179179.P10673416677358331091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (2 - A083399 (n + 1))

end

end A179179.P10673416677358331091

namespace A179179

/-- `A109606(n+1)+2-A083399(n+1)` -/
def P10673416677358331091.Spec : Prop :=
  ∀ n, P10673416677358331091.a n = A179179 (n + 1)

theorem P10673416677358331091.correct : P10673416677358331091.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P10673416677358331091.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A083399, A083399.P16148020281325742632.a, A109606, A109606.P2415810041766612210.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A055212, A055212.P14412881054625885538.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P6966754626910667840

`A057859(n+1)-2*A001221(n+1)`
-/

namespace A179179.P6966754626910667840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) - 2 * A001221 (n + 1)

end

end A179179.P6966754626910667840

namespace A179179

/-- `A057859(n+1)-2*A001221(n+1)` -/
def P6966754626910667840.Spec : Prop :=
  ∀ n, P6966754626910667840.a n = A179179 (n + 1)

theorem P6966754626910667840.correct : P6966754626910667840.Spec := by
  intro n
  simp only [A179179, Nat.add_sub_cancel, A179179.P6966754626910667840.a, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A057859, A057859.P5441024818850006693.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179179

/-! ## A179179.P2974408727772577113

`A000010(n+1)-∑{p}[n+1, A001222(#)]`
-/

namespace A179179.P2974408727772577113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A179179.P2974408727772577113

namespace A179179

/-- `A000010(n+1)-∑{p}[n+1, A001222(#)]` -/
def P2974408727772577113.Spec : Prop :=
  ∀ n, P2974408727772577113.a n = A179179 (n + 1)

end A179179

/-! ## A179179.P12008774099606725288

`A000010(n+1)-A001222(∏{p}[n+1, #])`
-/

namespace A179179.P12008774099606725288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A179179.P12008774099606725288

namespace A179179

/-- `A000010(n+1)-A001222(∏{p}[n+1, #])` -/
def P12008774099606725288.Spec : Prop :=
  ∀ n, P12008774099606725288.a n = A179179 (n + 1)

end A179179

/-! ## A179179.P10867523552436013987

`∏{e}[A034444(n+1), A000010(n+1)-#]`
-/

namespace A179179.P10867523552436013987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000010 (n + 1) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A179179.P10867523552436013987

namespace A179179

/-- `∏{e}[A034444(n+1), A000010(n+1)-#]` -/
def P10867523552436013987.Spec : Prop :=
  ∀ n, P10867523552436013987.a n = A179179 (n + 1)

end A179179

/-!
# A179180: Partial sums of A007895.

The programs for A179180, the canonical program `A179180.P10718591488616343433` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179180 has offset 0).

The definition of A179180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179180.P9366304922553530680

`∑[A007895(n)]`
-/

namespace A179180.P9366304922553530680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P9366304922553530680

namespace A179180

/-- `∑[A007895(n)]` -/
def P9366304922553530680.Spec : Prop :=
  ∀ n, P9366304922553530680.a n = A179180 n

end A179180

/-! ## A179180.P8477433442851062265

`∑[dr(A014417(n))]`
-/

namespace A179180.P8477433442851062265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P8477433442851062265

namespace A179180

/-- `∑[dr(A014417(n))]` -/
def P8477433442851062265.Spec : Prop :=
  ∀ n, (P8477433442851062265.a n : ℤ) = A179180 n

end A179180

/-! ## A179180.P4642578493165526511

`∑[n-A219641(n)]`
-/

namespace A179180.P4642578493165526511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P4642578493165526511

namespace A179180

/-- `∑[n-A219641(n)]` -/
def P4642578493165526511.Spec : Prop :=
  ∀ n, P4642578493165526511.a n = A179180 n

end A179180

/-! ## A179180.P10718591488616343433

`∑[A143299(n+1)-1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A179180

/-- `∑[A143299(n+1)-1]` -/
def P10718591488616343433.Spec : Prop :=
  ∀ n, P10718591488616343433.a n = A179180 n

theorem P10718591488616343433.correct : P10718591488616343433.Spec := by
  intro n
  simp only [A179180]

end A179180

/-! ## A179180.P2261858701466578606

`∑[2*(n+1)-A288625(n+1)]`
-/

namespace A179180.P2261858701466578606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A288625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P2261858701466578606

namespace A179180

/-- `∑[2*(n+1)-A288625(n+1)]` -/
def P2261858701466578606.Spec : Prop :=
  ∀ n, P2261858701466578606.a n = A179180 n

end A179180

/-! ## A179180.P9854253979576151641

`∑[A213911(n)+A003849(n)]`
-/

namespace A179180.P9854253979576151641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P9854253979576151641

namespace A179180

/-- `∑[A213911(n)+A003849(n)]` -/
def P9854253979576151641.Spec : Prop :=
  ∀ n, P9854253979576151641.a n = A179180 n

end A179180

/-! ## A179180.P5505097139029587305

`∑[A070939(n)-A023416(n)-A220115(n)]`
-/

namespace A179180.P5505097139029587305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A023416 n - A220115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P5505097139029587305

namespace A179180

/-- `∑[A070939(n)-A023416(n)-A220115(n)]` -/
def P5505097139029587305.Spec : Prop :=
  ∀ n, P5505097139029587305.a n = A179180 n

end A179180

/-! ## A179180.P14552528982242354455

`A214977(n+1)+A214979(n+1)-A007895(n+1)`
-/

namespace A179180.P14552528982242354455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214977 (n + 1) + (A214979 (n + 1) - A007895 (n + 1))

end

end A179180.P14552528982242354455

namespace A179180

/-- `A214977(n+1)+A214979(n+1)-A007895(n+1)` -/
def P14552528982242354455.Spec : Prop :=
  ∀ n, P14552528982242354455.a n = A179180 n

end A179180

/-! ## A179180.P10692197372723143189

`∑[dr(record[A130310(n)])]`
-/

namespace A179180.P10692197372723143189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P10692197372723143189

namespace A179180

/-- `∑[dr(record[A130310(n)])]` -/
def P10692197372723143189.Spec : Prop :=
  ∀ n, (P10692197372723143189.a n : ℤ) = A179180 n

end A179180

/-! ## A179180.P6967278180657382694

`∑[A213911(A004956(n))]`
-/

namespace A179180.P6967278180657382694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004956 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P6967278180657382694

namespace A179180

/-- `∑[A213911(A004956(n))]` -/
def P6967278180657382694.Spec : Prop :=
  ∀ n, P6967278180657382694.a n = A179180 n

end A179180

/-! ## A179180.P17302011665133873309

`∑[A213911(A026351(n))]`
-/

namespace A179180.P17302011665133873309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P17302011665133873309

namespace A179180

/-- `∑[A213911(A026351(n))]` -/
def P17302011665133873309.Spec : Prop :=
  ∀ n, P17302011665133873309.a n = A179180 n

end A179180

/-! ## A179180.P298105409639067955

`∑[A213911(A004957(n)-n)]`
-/

namespace A179180.P298105409639067955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004957 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P298105409639067955

namespace A179180

/-- `∑[A213911(A004957(n)-n)]` -/
def P298105409639067955.Spec : Prop :=
  ∀ n, P298105409639067955.a n = A179180 n

end A179180

/-! ## A179180.P9998064389915668150

`∑[A213911(A000201(n+1)-1)]`
-/

namespace A179180.P9998064389915668150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A000201 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P9998064389915668150

namespace A179180

/-- `∑[A213911(A000201(n+1)-1)]` -/
def P9998064389915668150.Spec : Prop :=
  ∀ n, P9998064389915668150.a n = A179180 n

end A179180

/-! ## A179180.P16127780768549309646

`∑[A213911(A004957(n))]`
-/

namespace A179180.P16127780768549309646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P16127780768549309646

namespace A179180

/-- `∑[A213911(A004957(n))]` -/
def P16127780768549309646.Spec : Prop :=
  ∀ n, P16127780768549309646.a n = A179180 n

end A179180

/-! ## A179180.P5046161764403656162

`∑[A213911(A003622(n+1))]`
-/

namespace A179180.P5046161764403656162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A003622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P5046161764403656162

namespace A179180

/-- `∑[A213911(A003622(n+1))]` -/
def P5046161764403656162.Spec : Prop :=
  ∀ n, P5046161764403656162.a n = A179180 n

end A179180

/-! ## A179180.P7139644223051747155

`∑[A213911(A000201(A000201(n+1)))]`
-/

namespace A179180.P7139644223051747155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A000201 (A000201 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P7139644223051747155

namespace A179180

/-- `∑[A213911(A000201(A000201(n+1)))]` -/
def P7139644223051747155.Spec : Prop :=
  ∀ n, P7139644223051747155.a n = A179180 n

end A179180

/-! ## A179180.P12103936479443510861

`∑[A213911(A004958(n))]`
-/

namespace A179180.P12103936479443510861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P12103936479443510861

namespace A179180

/-- `∑[A213911(A004958(n))]` -/
def P12103936479443510861.Spec : Prop :=
  ∀ n, P12103936479443510861.a n = A179180 n

end A179180

/-! ## A179180.P9595299056428434102

`∑[dr(A007088(A003714(n)))]`
-/

namespace A179180.P9595299056428434102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 (A003714 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P9595299056428434102

namespace A179180

/-- `∑[dr(A007088(A003714(n)))]` -/
def P9595299056428434102.Spec : Prop :=
  ∀ n, (P9595299056428434102.a n : ℤ) = A179180 n

end A179180

/-! ## A179180.P752121182301663696

`∑[A000120(A048679(n))]`
-/

namespace A179180.P752121182301663696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048679 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P752121182301663696

namespace A179180

/-- `∑[A000120(A048679(n))]` -/
def P752121182301663696.Spec : Prop :=
  ∀ n, P752121182301663696.a n = A179180 n

end A179180

/-! ## A179180.P6060300885289045926

`∑[A000120(A003714(n))]`
-/

namespace A179180.P6060300885289045926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P6060300885289045926

namespace A179180

/-- `∑[A000120(A003714(n))]` -/
def P6060300885289045926.Spec : Prop :=
  ∀ n, P6060300885289045926.a n = A179180 n

end A179180

/-!
# A179181: 'PE(n,k)' triangle read by rows. PE(n,k) is the number of k-palindromes of n up to cyclic equivalence.

The programs for A179181, there is no canonical definition to state claims against.
-/

/-! ## A179181.P17030887919419877787

`A022187(n)%A322348(n)`
-/

namespace A179181.P17030887919419877787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022187 n) (A322348 n)

end

end A179181.P17030887919419877787

/-! ## A179181.P11088835238462026379

`A051159(A011738(A347615(n))+n)`
-/

namespace A179181.P11088835238462026379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A011738 (A347615 n).toNat + (n : ℤ)).toNat

end

end A179181.P11088835238462026379

/-! ## A179181.P7641247358719233626

`A051159(n)-A011738(A347615(n))`
-/

namespace A179181.P7641247358719233626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n - A011738 (A347615 n).toNat

end

end A179181.P7641247358719233626

/-! ## A179181.P5464399145505656804

`A051159(n)^A105243(A009999(n))`
-/

namespace A179181.P5464399145505656804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051159 n : ℚ) ^ (A105243 (A009999 n).toNat : ℤ)

end

end A179181.P5464399145505656804

/-! ## A179181.P3972591483971346103

`A051159(gcd(n, A037213(A048794(n))))`
-/

namespace A179181.P3972591483971346103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (Int.gcd (n : ℤ) (A037213 (A048794 n).toNat))

end

end A179181.P3972591483971346103

/-!
# A179182: Natural numbers n such that n+1 or 2n+1 is prime.

The programs for A179182, there is no canonical definition to state claims against.
-/

/-! ## A179182.P4330771866911627959

`record[A204995(n+1)]`
-/

namespace A179182.P4330771866911627959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179182.P4330771866911627959

/-! ## A179182.P7648257334760116836

`record[sqrt(A204997(n+1))]`
-/

namespace A179182.P7648257334760116836
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204997 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179182.P7648257334760116836

/-! ## A179182.P3154495082340083395

`comp[A138666(n+1)-1]`
-/

namespace A179182.P3154495082340083395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138666 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179182.P3154495082340083395

/-! ## A179182.P16899485677983192969

`lt[A040076(n+1), 2]+1`
-/

namespace A179182.P16899485677983192969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A179182.P16899485677983192969

/-!
# A179184: Number of connected 2-regular simple graphs with n vertices.

The programs for A179184, the canonical program `A179184.P12578716248272361583` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179184 has offset 0).

The definition of A179184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179184.P12578716248272361583

`ceil(cos(C(3, n)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179184

/-- `ceil(cos(C(3, n)))` -/
def P12578716248272361583.Spec : Prop :=
  ∀ n, P12578716248272361583.a n = A179184 n

theorem P12578716248272361583.correct : P12578716248272361583.Spec := by
  intro n
  simp only [A179184]

end A179184

/-!
# A179185: Rank transform of the sequence floor(n*sqrt(2)); complement of A186543.

The programs for A179185, there is no canonical definition to state claims against.
-/

/-! ## A179185.P15564069563682324395

`comp[A186543(n+1)-1]+1`
-/

namespace A179185.P15564069563682324395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186543 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A179185.P15564069563682324395

/-! ## A179185.P7718755052239897345

`eq[char[A186543(n+1)], A000007(n)]`
-/

namespace A179185.P7718755052239897345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186543 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A179185.P7718755052239897345

/-! ## A179185.P12371526520111005250

`eq[char[A186543(n+1)], A000038(n)]`
-/

namespace A179185.P12371526520111005250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186543 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A179185.P12371526520111005250

/-! ## A179185.P7128193767488369587

`eq[char[A186543(n+1)], A151933(n)]`
-/

namespace A179185.P7128193767488369587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186543 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A179185.P7128193767488369587

/-! ## A179185.P8364639844223527457

`A187345(n+1)-A014183(A002148(n))`
-/

namespace A179185.P8364639844223527457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187345 (n + 1) - A014183 (A002148 n).toNat

end

end A179185.P8364639844223527457

/-!
# A179186: Numbers k such that phi(k) = phi(k+4), with Euler's totient function phi = A000010.

The programs for A179186, there is no canonical definition to state claims against.
-/

/-! ## A179186.P2345194823066061719

`A192221(n+1)-2`
-/

namespace A179186.P2345194823066061719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192221 (n + 1) - 2

end

end A179186.P2345194823066061719

/-! ## A179186.P441336312230694302

`record[A273943(A179202(n+2))]`
-/

namespace A179186.P441336312230694302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A179202 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179186.P441336312230694302

/-! ## A179186.P3593947252727603906

`record[A318518(A179202(abs(1-n)+1))]`
-/

namespace A179186.P3593947252727603906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179202 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179186.P3593947252727603906

/-! ## A179186.P4582120338107127156

`record[A318518(A179202(floor(n/2)+2))+2]-2`
-/

namespace A179186.P4582120338107127156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179202 (⌊(n : ℚ) / 2⌋ + 2).toNat).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A179186.P4582120338107127156

/-! ## A179186.P9593207568409505014

`record[A318518(A179202(n+2))+A159075(n)]`
-/

namespace A179186.P9593207568409505014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179202 (n + 2)).toNat + A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179186.P9593207568409505014

/-! ## A179186.P16053821994977648147

`A000038(n+1)+record[A318518(A179202(n+2))]`
-/

namespace A179186.P16053821994977648147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179202 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179186.P16053821994977648147

/-! ## A179186.P550480214770439241

`record[A318518(A179202(n+2))%A020396(n+1)]`
-/

namespace A179186.P550480214770439241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318518 (A179202 (n + 2)).toNat) (A020396 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179186.P550480214770439241

/-! ## A179186.P9908233042568342968

`record[A318518(A179202(n+2))]%A195268(n+1)`
-/

namespace A179186.P9908233042568342968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179202 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A195268 (n + 1))

end

end A179186.P9908233042568342968

/-! ## A179186.P1493382825311383900

`record[A002061(n)%2*A318518(A179202(n+2))]`
-/

namespace A179186.P1493382825311383900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 n) 2 * A318518 (A179202 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179186.P1493382825311383900

/-! ## A179186.P6888824178807658016

`A014963(6*(n+1))*record[A318518(A179202(n+2))+2]-2`
-/

namespace A179186.P6888824178807658016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179202 (n + 2)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A179186.P6888824178807658016

/-!
# A179188: Numbers n such that phi(n) = phi(n+6), with Euler's totient function phi=A000010.

The programs for A179188, the canonical program `A179188.P9691688414308048865` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179188 has offset 1).

The definition of A179188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179188.P10692194954958415905

`record[A217139(n+1)/A020639(A217139(n+1))]`
-/

namespace A179188.P10692194954958415905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217139 (n + 1) : ℚ) / (A020639 (A217139 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P10692194954958415905

namespace A179188

/-- `record[A217139(n+1)/A020639(A217139(n+1))]` -/
def P10692194954958415905.Spec : Prop :=
  ∀ n, P10692194954958415905.a n = (A179188 (n + 1) : ℚ)

end A179188

/-! ## A179188.P8578135604456917419

`record[A318518(A217139(n+1))]`
-/

namespace A179188.P8578135604456917419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A217139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P8578135604456917419

namespace A179188

/-- `record[A318518(A217139(n+1))]` -/
def P8578135604456917419.Spec : Prop :=
  ∀ n, P8578135604456917419.a n = A179188 (n + 1)

end A179188

/-! ## A179188.P9691688414308048865

`record[A103391(A217139(n+1)-2)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179188

/-- `record[A103391(A217139(n+1)-2)]` -/
def P9691688414308048865.Spec : Prop :=
  ∀ n, P9691688414308048865.a n = A179188 (n + 1)

theorem P9691688414308048865.correct : P9691688414308048865.Spec := by
  intro n
  simp only [A179188, Nat.add_sub_cancel]

end A179188

/-! ## A179188.P4052517692171257357

`record[A325563(A217139(A325563(n+1)))]`
-/

namespace A179188.P4052517692171257357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A217139 (A325563 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P4052517692171257357

namespace A179188

/-- `record[A325563(A217139(A325563(n+1)))]` -/
def P4052517692171257357.Spec : Prop :=
  ∀ n, P4052517692171257357.a n = A179188 (n + 1)

end A179188

/-! ## A179188.P17909775702790985733

`record[A032742(A217139(A038568(n)))]`
-/

namespace A179188.P17909775702790985733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A217139 (A038568 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P17909775702790985733

namespace A179188

/-- `record[A032742(A217139(A038568(n)))]` -/
def P17909775702790985733.Spec : Prop :=
  ∀ n, P17909775702790985733.a n = A179188 (n + 1)

end A179188

/-! ## A179188.P5662941485117951794

`record[A025480(A217139(A117910(n)))]`
-/

namespace A179188.P5662941485117951794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A217139 (A117910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P5662941485117951794

namespace A179188

/-- `record[A025480(A217139(A117910(n)))]` -/
def P5662941485117951794.Spec : Prop :=
  ∀ n, P5662941485117951794.a n = A179188 (n + 1)

end A179188

/-! ## A179188.P15976571425039055573

`record[A025480(A217139(A263275(n)))]`
-/

namespace A179188.P15976571425039055573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A217139 (A263275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P15976571425039055573

namespace A179188

/-- `record[A025480(A217139(A263275(n)))]` -/
def P15976571425039055573.Spec : Prop :=
  ∀ n, P15976571425039055573.a n = A179188 (n + 1)

end A179188

/-! ## A179188.P16648657501008808176

`record[A025480(A217139(A328399(n)))]`
-/

namespace A179188.P16648657501008808176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A217139 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P16648657501008808176

namespace A179188

/-- `record[A025480(A217139(A328399(n)))]` -/
def P16648657501008808176.Spec : Prop :=
  ∀ n, P16648657501008808176.a n = A179188 (n + 1)

end A179188

/-! ## A179188.P9248425126145039904

`record[A032742(A217139(A032742(n+1)))]`
-/

namespace A179188.P9248425126145039904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A217139 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P9248425126145039904

namespace A179188

/-- `record[A032742(A217139(A032742(n+1)))]` -/
def P9248425126145039904.Spec : Prop :=
  ∀ n, P9248425126145039904.a n = A179188 (n + 1)

end A179188

/-!
# A179189: Numbers n such that phi(n) = phi(n+7), with Euler's totient function phi = A000010.

The programs for A179189, there is no canonical definition to state claims against.
-/

/-! ## A179189.P6315982862887530953

`eq[A000010(n+8), A000010(n+1)]+1`
-/

namespace A179189.P6315982862887530953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179189.P6315982862887530953

/-! ## A179189.P2487241545505956521

`eq[A000010(n+7), A000010(A028310(n))]`
-/

namespace A179189.P2487241545505956521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179189.P2487241545505956521

/-! ## A179189.P4103709593465443041

`eq[A000010(n+7), A000010(A000007(n)+n)]`
-/

namespace A179189.P4103709593465443041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179189.P4103709593465443041

/-! ## A179189.P48423819393069493

`eq[A000010(A123108(2*n)), A000010(n+7)]`
-/

namespace A179189.P48423819393069493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179189.P48423819393069493

/-! ## A179189.P4482704650905878166

`eq[A000010(A233583(n+1)), A000010(n+7)]`
-/

namespace A179189.P4482704650905878166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179189.P4482704650905878166

/-!
# A179190: Coefficient [x^n] of the Maclaurin series for 2 - sqrt(1 - 4*x - 4*x^2).

The programs for A179190, there is no canonical definition to state claims against.
-/

/-! ## A179190.P8665383947717794379

`A000007(n)+2*A025227(n)`
-/

namespace A179190.P8665383947717794379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A025227 n

end

end A179190.P8665383947717794379

/-! ## A179190.P16908135465626253991

`A025227(n)+A025227(A028310(n))`
-/

namespace A179190.P16908135465626253991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 n + A025227 (A028310 n).toNat

end

end A179190.P16908135465626253991

/-! ## A179190.P9423014742944813448

`A025227(A000007(n)+n)+A025227(n)`
-/

namespace A179190.P9423014742944813448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (A000007 n + (n : ℤ)).toNat + A025227 n

end

end A179190.P9423014742944813448

/-! ## A179190.P16977732561267298065

`A025227(A004277(n)-n)+A025227(n)`
-/

namespace A179190.P16977732561267298065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (A004277 n - (n : ℤ)).toNat + A025227 n

end

end A179190.P16977732561267298065

/-! ## A179190.P5821925507204317560

`A025227(n)+A025227(n)+A019590(n+2)`
-/

namespace A179190.P5821925507204317560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 n + (A025227 n + A019590 (n + 2))

end

end A179190.P5821925507204317560

/-! ## A179190.P18224119113709823862

`A020639(A320151(n))*A025227(A028310(n))`
-/

namespace A179190.P18224119113709823862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A320151 n).toNat * A025227 (A028310 n).toNat

end

end A179190.P18224119113709823862

/-!
# A179191: Expansion of o.g.f. (1/2)*(-1 + 1/sqrt(1 - 4*x - 4*x^2)).

The programs for A179191, there is no canonical definition to state claims against.
-/

/-! ## A179191.P16024666772140103123

`floor(A006139(n)/2)`
-/

namespace A179191.P16024666772140103123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006139 n : ℚ) / 2⌋

end

end A179191.P16024666772140103123

/-! ## A179191.P8581828093588734431

`(A006139(n)-A000007(n))/2`
-/

namespace A179191.P8581828093588734431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n - A000007 n : ℚ) / 2

end

end A179191.P8581828093588734431

/-! ## A179191.P1766529121486092354

`A006139(n)%A103821(n)/2`
-/

namespace A179191.P1766529121486092354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A006139 n) (A103821 n) : ℚ) / 2

end

end A179191.P1766529121486092354

/-! ## A179191.P7833428734304253478

`and(A001489(n), A006139(n))/2`
-/

namespace A179191.P7833428734304253478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A001489 n) (A006139 n) : ℚ) / 2

end

end A179191.P7833428734304253478

/-! ## A179191.P17705548571759402194

`and(A006139(n), A057428(n))/2`
-/

namespace A179191.P17705548571759402194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A006139 n) (A057428 n) : ℚ) / 2

end

end A179191.P17705548571759402194

/-! ## A179191.P12034658016659584764

`n/A004277(n)*A006139(n)`
-/

namespace A179191.P12034658016659584764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004277 n : ℚ) * (A006139 n : ℚ)

end

end A179191.P12034658016659584764

/-! ## A179191.P9410916695732766077

`A006139(n)/A179190(n)*A025227(n)`
-/

namespace A179191.P9410916695732766077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n : ℚ) / (A179190 n : ℚ) * (A025227 n : ℚ)

end

end A179191.P9410916695732766077

/-!
# A179192: Numbers n, not relatively prime to 10, such that the decimal form of the period of 1/n is prime.

The programs for A179192, there is no canonical definition to state claims against.
-/

/-! ## A179192.P4495942800905642293

`filter[A061564(n+1), A296210(#)]`
-/

namespace A179192.P4495942800905642293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A179192.P4495942800905642293

/-! ## A179192.P11688081943963863747

`∩[A061564(n+1), A065502(n+1)]`
-/

namespace A179192.P11688081943963863747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179192.P11688081943963863747

/-! ## A179192.P15727737022869517983

`∩[A061564(n+1), A093509(n+1)]`
-/

namespace A179192.P15727737022869517983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179192.P15727737022869517983

/-! ## A179192.P10072630568905709213

`∩[A061564(n+1), A104210(n+1)]`
-/

namespace A179192.P10072630568905709213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179192.P10072630568905709213

/-! ## A179192.P14740628169064570520

`∩[A061564(n+1), A105115(n+1)]`
-/

namespace A179192.P14740628169064570520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179192.P14740628169064570520

/-!
# A179194: Bases n in which 1/(n-2) is non-terminating and has period n-3.

The programs for A179194, there is no canonical definition to state claims against.
-/

/-! ## A179194.P6016278997694675636

`A217948(n+1)+1`
-/

namespace A179194.P6016278997694675636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217948 (n + 1) + 1

end

end A179194.P6016278997694675636

/-! ## A179194.P7058684051198360552

`A001122(n+1)+2`
-/

namespace A179194.P7058684051198360552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1) + 2

end

end A179194.P7058684051198360552

/-! ## A179194.P11214328795691937752

`A050229(n+3)+2`
-/

namespace A179194.P11214328795691937752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 3) + 2

end

end A179194.P11214328795691937752

/-! ## A179194.P16583449049066503796

`A071642(n+3)+3`
-/

namespace A179194.P16583449049066503796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 3) + 3

end

end A179194.P16583449049066503796

/-! ## A179194.P9678565937784373260

`p?[A139099(n+1)]+2`
-/

namespace A179194.P9678565937784373260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A179194.P9678565937784373260

/-! ## A179194.P5539664892152720938

`p?[A167791(n+1)]+2`
-/

namespace A179194.P5539664892152720938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A179194.P5539664892152720938

/-! ## A179194.P5451184987655770226

`2*A051733(n+1)+1`
-/

namespace A179194.P5451184987655770226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051733 (n + 1) + 1

end

end A179194.P5451184987655770226

/-! ## A179194.P1014524098973072845

`A241040(n)+a(n-1)` with `a(0)=5`
-/

namespace A179194.P1014524098973072845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A241040 n + a (n - 1)

end

end A179194.P1014524098973072845

/-! ## A179194.P1906354673429796146

`∩[A003629(n+1), A007885(n+1)]+2`
-/

namespace A179194.P1906354673429796146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A179194.P1906354673429796146

/-! ## A179194.P7548084111191097527

`∩[A007885(n+1), A014662(n+1)]+2`
-/

namespace A179194.P7548084111191097527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A179194.P7548084111191097527

/-! ## A179194.P7474149720970328246

`∩[A007885(n+1), A040100(n+1)]+2`
-/

namespace A179194.P7474149720970328246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A179194.P7474149720970328246

/-! ## A179194.P17914512347368088480

`∩[A007885(n+1), A045316(n+1)]+2`
-/

namespace A179194.P17914512347368088480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A179194.P17914512347368088480

/-! ## A179194.P15304038303509662756

`∩[A007885(n+1), A045403(n+1)]+2`
-/

namespace A179194.P15304038303509662756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A179194.P15304038303509662756

/-! ## A179194.P17311002005347511722

`record[A014664(n+2)+3]`
-/

namespace A179194.P17311002005347511722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179194.P17311002005347511722

/-! ## A179194.P13133836814062970832

`A052147(A072190(n+1))`
-/

namespace A179194.P13133836814062970832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (A072190 (n + 1)).toNat

end

end A179194.P13133836814062970832

/-! ## A179194.P7795985782005710286

`∩[A007885(n+1)+2, A047550(n+1)]`
-/

namespace A179194.P7795985782005710286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179194.P7795985782005710286

/-! ## A179194.P17000434458643333888

`p?[A319009(n+1)]+2`
-/

namespace A179194.P17000434458643333888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A179194.P17000434458643333888

/-! ## A179194.P2683083826413747752

`∩[A007885(n+1)+2, A047477(n+1)]`
-/

namespace A179194.P2683083826413747752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179194.P2683083826413747752

/-! ## A179194.P253648982890754009

`A005408(A051733(n+1))`
-/

namespace A179194.P253648982890754009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A051733 (n + 1)).toNat

end

end A179194.P253648982890754009

/-! ## A179194.P7934554033528799456

`p?[A216846(n+1)]+2`
-/

namespace A179194.P7934554033528799456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A179194.P7934554033528799456

/-!
# A179195: Triangle array: row n lists the number of repeating digits of 1/2 through 1/(n-1) in base n, or 0 if it terminates.

The programs for A179195, there is no canonical definition to state claims against.
-/

/-! ## A179195.P6607449118583391586

`A301344(A306186(n+1)+4)`
-/

namespace A179195.P6607449118583391586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301344 (A306186 (n + 1) + 4).toNat

end

end A179195.P6607449118583391586

/-! ## A179195.P17949225106370814909

`A345236(A329855(n+1)+A110180(n))`
-/

namespace A179195.P17949225106370814909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345236 (A329855 (n + 1) + A110180 n).toNat

end

end A179195.P17949225106370814909

/-! ## A179195.P2039216911013038065

`A000005(A089504(n+1))%A222027(n+1)`
-/

namespace A179195.P2039216911013038065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A089504 (n + 1)).toNat) (A222027 (n + 1))

end

end A179195.P2039216911013038065

/-! ## A179195.P6659781853714241252

`and(A208777(n+1), A318016(A143670(n+1)))`
-/

namespace A179195.P6659781853714241252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A208777 (n + 1)) (A318016 (A143670 (n + 1)).toNat)

end

end A179195.P6659781853714241252

/-!
# A179196: Number of primes up to the n-th Ramanujan prime: A000720(A104272(n)).

The programs for A179196, there is no canonical definition to state claims against.
-/

/-! ## A179196.P10346030486892544167

`A000720(A168421(n+1))+n+1-1`
-/

namespace A179196.P10346030486892544167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168421 (n + 1)).toNat + (n + 1 : ℤ) - 1

end

end A179196.P10346030486892544167

/-! ## A179196.P3887530166751456500

`A000720(A104272(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179196.P3887530166751456500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104272 (n + 1)).toNat

end

end A179196.P3887530166751456500

/-! ## A179196.P3686744361146637732

`A190874(n)+a(n-1)` with `a(0)=1`
-/

namespace A179196.P3686744361146637732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A190874 n + a (n - 1)

end

end A179196.P3686744361146637732

/-! ## A179196.P17338605132046737154

`a(n-1)+A236452(n)+1` with `a(0)=1`
-/

namespace A179196.P17338605132046737154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A236452 n + 1)

end

end A179196.P17338605132046737154

/-! ## A179196.P17023713709127338386

`∑[A190874(n+1)]+1-A190874(n+1)`
-/

namespace A179196.P17023713709127338386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A190874 (n + 1))

end

end A179196.P17023713709127338386

/-! ## A179196.P6910451557084997087

`A000720(A168421(n+1))+n`
-/

namespace A179196.P6910451557084997087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168421 (n + 1)).toNat + (n : ℤ)

end

end A179196.P6910451557084997087

/-! ## A179196.P17407811816800368911

`A000720(A168425(n+1)-1)`
-/

namespace A179196.P17407811816800368911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168425 (n + 1) - 1).toNat

end

end A179196.P17407811816800368911

/-! ## A179196.P6241893110007306850

`A000720(A000010(A168425(n+1)))`
-/

namespace A179196.P6241893110007306850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (A168425 (n + 1)).toNat).toNat

end

end A179196.P6241893110007306850

/-! ## A179196.P17983387032167232749

`A000720(A194217(n+1)+A080359(n+1))`
-/

namespace A179196.P17983387032167232749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A194217 (n + 1) + A080359 (n + 1)).toNat

end

end A179196.P17983387032167232749

/-! ## A179196.P5118250035151884987

`A391765(A084139(n))`
-/

namespace A179196.P5118250035151884987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A084139 n).toNat

end

end A179196.P5118250035151884987

/-! ## A179196.P18282463977874101630

`A000720(A162996(n+1)-A163160(n+1))`
-/

namespace A179196.P18282463977874101630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A162996 (n + 1) - A163160 (n + 1)).toNat

end

end A179196.P18282463977874101630

/-! ## A179196.P17079317496994555858

`A033270(A168425(n+1))`
-/

namespace A179196.P17079317496994555858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A168425 (n + 1)).toNat

end

end A179196.P17079317496994555858

/-! ## A179196.P12196498582758970643

`∑{d}[A104272(n+1), A335603(#)]`
-/

namespace A179196.P12196498582758970643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A335603 d

end

end A179196.P12196498582758970643

/-! ## A179196.P9425463501719764830

`A230980(A104272(n+1)-1)+1`
-/

namespace A179196.P9425463501719764830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A104272 (n + 1) - 1).toNat + 1

end

end A179196.P9425463501719764830

/-! ## A179196.P11220845917432359527

`A056172(A104272(n+1))+A028310(n+1)`
-/

namespace A179196.P11220845917432359527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A104272 (n + 1)).toNat + A028310 (n + 1)

end

end A179196.P11220845917432359527

/-! ## A179196.P10790947362106979571

`A230980(A104272(n+1))%A309248(n+5)`
-/

namespace A179196.P10790947362106979571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (A104272 (n + 1)).toNat) (A309248 (n + 5))

end

end A179196.P10790947362106979571

/-! ## A179196.P3609594060286795043

`A335603(2*A104272(n+1)-A104272(n+1))`
-/

namespace A179196.P3609594060286795043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (2 * A104272 (n + 1) - A104272 (n + 1)).toNat

end

end A179196.P3609594060286795043

/-! ## A179196.P3593977939960288702

`A056172(2*A104272(n+1))`
-/

namespace A179196.P3593977939960288702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A104272 (n + 1)).toNat

end

end A179196.P3593977939960288702

/-! ## A179196.P10352208107598615045

`A056172(A104272(n+1)+A104272(n+1))`
-/

namespace A179196.P10352208107598615045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A104272 (n + 1) + A104272 (n + 1)).toNat

end

end A179196.P10352208107598615045

/-! ## A179196.P12948068436264971648

`A055679(2*A104272(n+1))`
-/

namespace A179196.P12948068436264971648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * A104272 (n + 1)).toNat

end

end A179196.P12948068436264971648

/-!
# A179197: Numbers k such that there exists no multiple of k whose digits are a permutation of all the digits of all the divisors of k.

The programs for A179197, there is no canonical definition to state claims against.
-/

/-! ## A179197.P13855821190805647068

`eq[0, A077351(n+1)]+1`
-/

namespace A179197.P13855821190805647068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077351 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179197.P13855821190805647068

/-! ## A179197.P5009521343981815644

`record[n+3-A077351(n+3)]`
-/

namespace A179197.P5009521343981815644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A077351 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179197.P5009521343981815644

/-! ## A179197.P5907227270534060280

`eq[0, A077351(A028310(n))]`
-/

namespace A179197.P5907227270534060280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077351 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179197.P5907227270534060280

/-! ## A179197.P14346074715733338486

`A065475(eq[0, A077351(n+1)])`
-/

namespace A179197.P14346074715733338486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179197.P14346074715733338486

/-! ## A179197.P913148183275115150

`eq[0, A077351(A233583(n+1))]`
-/

namespace A179197.P913148183275115150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077351 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179197.P913148183275115150

/-!
# A179198: Matrix log of triangle A030528, where A030528(n,k) = C(k,n-k).

The programs for A179198, there is no canonical definition to state claims against.
-/

/-! ## A179198.P15553911504878635390

`A002260(n+1)*A179199(A025581(n))`
-/

namespace A179198.P15553911504878635390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A179199 (A025581 n).toNat

end

end A179198.P15553911504878635390

/-! ## A179198.P2532849991299588382

`A002262(n+1)*A179199(A025581(n))`
-/

namespace A179198.P2532849991299588382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) * A179199 (A025581 n).toNat

end

end A179198.P2532849991299588382

/-! ## A179198.P12622448488764675130

`A048151(n+1)*A179199(A025581(n))`
-/

namespace A179198.P12622448488764675130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1) * A179199 (A025581 n).toNat

end

end A179198.P12622448488764675130

/-! ## A179198.P17916761187515281446

`A144328(n+2)*A179199(A025581(n))`
-/

namespace A179198.P17916761187515281446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 2) * A179199 (A025581 n).toNat

end

end A179198.P17916761187515281446

/-! ## A179198.P4375362559013039089

`A179199(A025581(n))*A284600(A077320(n+1))`
-/

namespace A179198.P4375362559013039089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179199 (A025581 n).toNat * A284600 (A077320 (n + 1)).toNat

end

end A179198.P4375362559013039089

/-! ## A179198.P209170650397725863

`A179199(A025581(n))*A265331(A265345(n+1))`
-/

namespace A179198.P209170650397725863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179199 (A025581 n).toNat * A265331 (A265345 (n + 1)).toNat

end

end A179198.P209170650397725863

/-!
# A179199: E.g.f. satisfies: A(x) = (1+x)/(1+2*x)*A(x+x^2) with A(0)=0.

The programs for A179199, there is no canonical definition to state claims against.
-/

/-! ## A179199.P1759204608551734635

`A179198(∑[n])`
-/

namespace A179199.P1759204608551734635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179198 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179199.P1759204608551734635

/-! ## A179199.P16718644281485632065

`A179198(A000217(n))+char[10]`
-/

namespace A179199.P16718644281485632065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179198 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179199.P16718644281485632065

/-! ## A179199.P7791012894872875094

`A179198(A000217(n))*A218027(n)`
-/

namespace A179199.P7791012894872875094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179198 (A000217 n).toNat * A218027 n

end

end A179199.P7791012894872875094

/-! ## A179199.P15034848412446975427

`A179198(A000217(n))%A016905(n)`
-/

namespace A179199.P15034848412446975427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179198 (A000217 n).toNat) (A016905 n)

end

end A179199.P15034848412446975427

/-! ## A179199.P3647126446037351218

`A217152(n+1)+A179198(A000217(n))`
-/

namespace A179199.P3647126446037351218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217152 (n + 1) + A179198 (A000217 n).toNat

end

end A179199.P3647126446037351218

