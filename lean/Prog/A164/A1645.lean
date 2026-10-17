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
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A164500: Number of binary strings of length n with no substrings equal to 0010 1001 or 1010.

The programs for A164500, the canonical program `A164500.P6050288250861714650` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164500 has offset 4).

The definition of A164500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164500.P6050288250861714650

`Δ[Δ[A120400(n+4)+A120400(n+7)]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164500

/-- `Δ[Δ[A120400(n+4)+A120400(n+7)]]` -/
def P6050288250861714650.Spec : Prop :=
  ∀ n, P6050288250861714650.a n = A164500 (n + 4)

theorem P6050288250861714650.correct : P6050288250861714650.Spec := by
  intro n
  simp only [A164500, Nat.add_sub_cancel]

end A164500

/-! ## A164500.P5815160228861418460

`A119661(A202414(n+1))`
-/

namespace A164500.P5815160228861418460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119661 (A202414 (n + 1)).toNat

end

end A164500.P5815160228861418460

namespace A164500

/-- `A119661(A202414(n+1))` -/
def P5815160228861418460.Spec : Prop :=
  ∀ n, P5815160228861418460.a n = A164500 (n + 4)

end A164500

/-!
# A164501: Number of binary strings of length n with no substrings equal to 0010 1001 or 1100.

The programs for A164501, there is no canonical definition to state claims against.
-/

/-! ## A164501.P3394501755405949858

`A164495(n+4)-A151755(A164509(n))`
-/

namespace A164501.P3394501755405949858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164495 (n + 4) - A151755 (A164509 n).toNat

end

end A164501.P3394501755405949858

/-! ## A164501.P16439168231483265436

`A164423(n+4)+A001222(A319481(n+1))`
-/

namespace A164501.P16439168231483265436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164423 (n + 4) + A001222 (A319481 (n + 1)).toNat

end

end A164501.P16439168231483265436

/-! ## A164501.P8224758731145670368

`A164423(n+4)+lt[A082513(n+1), 1]-A343630(n)`
-/

namespace A164501.P8224758731145670368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164423 (n + 4) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - A343630 n

end

end A164501.P8224758731145670368

/-!
# A164502: Number of binary strings of length n with no substrings equal to 0010 1011 or 1100.

The programs for A164502, there is no canonical definition to state claims against.
-/

/-! ## A164502.P5866558046516905123

`A001462(A224232(n)+A007283(n+4))`
-/

namespace A164502.P5866558046516905123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A224232 n + A007283 (n + 4)).toNat

end

end A164502.P5866558046516905123

/-! ## A164502.P6321032064674523194

`A001462(A181565(n+4)+A136751(n))`
-/

namespace A164502.P6321032064674523194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A181565 (n + 4) + A136751 n).toNat

end

end A164502.P6321032064674523194

/-! ## A164502.P16074045908030832220

`A001462(A295148(n+4)+A005252(2*n))`
-/

namespace A164502.P16074045908030832220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A295148 (n + 4) + A005252 (2 * n)).toNat

end

end A164502.P16074045908030832220

/-!
# A164503: Number of binary strings of length n with no substrings equal to 0011 0101 or 0110.

The programs for A164503, the canonical program `A164503.P13287873994081283143` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164503 has offset 4).

The definition of A164503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164503.P13287873994081283143

`A000930(n+11)-(A003269(n+5)+A003269(n+13))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164503

/-- `A000930(n+11)-(A003269(n+5)+A003269(n+13))` -/
def P13287873994081283143.Spec : Prop :=
  ∀ n, P13287873994081283143.a n = A164503 (n + 4)

theorem P13287873994081283143.correct : P13287873994081283143.Spec := by
  intro n
  simp only [A164503, Nat.add_sub_cancel]

end A164503

/-! ## A164503.P15021491590690221576

`A326846(A006125(n))+A164436(n+4)`
-/

namespace A164503.P15021491590690221576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A006125 n).toNat + A164436 (n + 4)

end

end A164503.P15021491590690221576

namespace A164503

/-- `A326846(A006125(n))+A164436(n+4)` -/
def P15021491590690221576.Spec : Prop :=
  ∀ n, P15021491590690221576.a n = A164503 (n + 4)

end A164503

/-!
# A164504: Number of binary strings of length n with no substrings equal to 0011 0101 or 1010.

The programs for A164504, there is no canonical definition to state claims against.
-/

/-! ## A164504.P17408384928028595123

`A010922(n)-A001222(A006862(n))`
-/

namespace A164504.P17408384928028595123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010922 n - A001222 (A006862 n).toNat

end

end A164504.P17408384928028595123

/-! ## A164504.P11875685451707612444

`A010922(n)-A000002(A030019(n))`
-/

namespace A164504.P11875685451707612444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010922 n - A000002 (A030019 n).toNat

end

end A164504.P11875685451707612444

/-!
# A164505: Number of binary strings of length n with no substrings equal to 0011 0101 or 1100.

The programs for A164505, there is no canonical definition to state claims against.
-/

/-! ## A164505.P8035543108924256027

`Δ[Δ[A164504(n+6)]]`
-/

namespace A164505.P8035543108924256027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164504 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164505.P8035543108924256027

/-! ## A164505.P2695308832487813892

`A164484(n+4)-A025469(A006131(n))`
-/

namespace A164505.P2695308832487813892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164484 (n + 4) - A025469 (A006131 n).toNat

end

end A164505.P2695308832487813892

/-! ## A164505.P12727539373381468560

`A164484(n+4)-A185284(A014374(n))`
-/

namespace A164505.P12727539373381468560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164484 (n + 4) - A185284 (A014374 n).toNat

end

end A164505.P12727539373381468560

/-! ## A164505.P4721114375567861351

`A164484(n+4)-A235145(A000105(n))`
-/

namespace A164505.P4721114375567861351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164484 (n + 4) - A235145 (A000105 n).toNat

end

end A164505.P4721114375567861351

/-! ## A164505.P18167046842589888807

`A164484(n+4)-A185284(A002229(n+1))`
-/

namespace A164505.P18167046842589888807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164484 (n + 4) - A185284 (A002229 (n + 1)).toNat

end

end A164505.P18167046842589888807

/-!
# A164506: Number of binary strings of length n with no substrings equal to 0011 0110 or 1001.

The programs for A164506, there is no canonical definition to state claims against.
-/

/-! ## A164506.P3790072290641065292

`A164440(n+4)-A034331(A034332(n))`
-/

namespace A164506.P3790072290641065292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164440 (n + 4) - A034331 (A034332 n).toNat

end

end A164506.P3790072290641065292

/-! ## A164506.P17645766840728547950

`A164440(n+4)-A055641(A059145(n))`
-/

namespace A164506.P17645766840728547950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164440 (n + 4) - A055641 (A059145 n).toNat

end

end A164506.P17645766840728547950

/-! ## A164506.P5380289179570448446

`A164440(n+4)-A125005(A164507(n))`
-/

namespace A164506.P5380289179570448446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164440 (n + 4) - A125005 (A164507 n).toNat

end

end A164506.P5380289179570448446

/-! ## A164506.P14859485699003583211

`A164440(n+4)-A184974(A190168(n))`
-/

namespace A164506.P14859485699003583211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164440 (n + 4) - A184974 (A190168 n).toNat

end

end A164506.P14859485699003583211

/-!
# A164507: Number of binary strings of length n with no substrings equal to 0011, 0110, or 1100.

The programs for A164507, there is no canonical definition to state claims against.
-/

/-! ## A164507.P5547845358415487622

`A001462(A080039(n)+A000225(n))`
-/

namespace A164507.P5547845358415487622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A080039 n + A000225 n).toNat

end

end A164507.P5547845358415487622

/-! ## A164507.P16893714341908102753

`A001462(A100227(n)+A000225(n))`
-/

namespace A164507.P16893714341908102753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A100227 n + A000225 n).toNat

end

end A164507.P16893714341908102753

/-! ## A164507.P8827868386254328773

`A055086(∑[A160999(n)])`
-/

namespace A164507.P8827868386254328773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164507.P8827868386254328773

/-! ## A164507.P4111913603151576187

`A321578(A143017(n+2))`
-/

namespace A164507.P4111913603151576187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A143017 (n + 2)).toNat

end

end A164507.P4111913603151576187

/-! ## A164507.P9619744967805742928

`A276581(or(1, A225034(n)))`
-/

namespace A164507.P9619744967805742928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (Int.lor 1 (A225034 n)).toNat

end

end A164507.P9619744967805742928

/-!
# A164508: Number of binary strings of length n with no substrings equal to 0101, 0110, or 1001.

The programs for A164508, there is no canonical definition to state claims against.
-/

/-! ## A164508.P15035450236281347528

`A194319(A018044(n)+n)`
-/

namespace A164508.P15035450236281347528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194319 (A018044 n + (n : ℤ)).toNat

end

end A164508.P15035450236281347528

/-! ## A164508.P11975638424192191911

`∑[A094802(ceil(A023596(n+1)/ϕ))]`
-/

namespace A164508.P11975638424192191911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 ⌈(A023596 (n + 1) : ℝ) / Real.goldenRatio⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164508.P11975638424192191911

/-! ## A164508.P1119919526677392795

`A352226(n+1)+A003056(A027098(n))`
-/

namespace A164508.P1119919526677392795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (n + 1) + A003056 (A027098 n).toNat

end

end A164508.P1119919526677392795

/-! ## A164508.P15058369688381591490

`A107750(A120118(n)^A120194(n+1))`
-/

namespace A164508.P15058369688381591490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (SequenceMachineLib.roundAway ((A120118 n : ℚ) ^ (A120194 (n + 1) : ℤ))).toNat

end

end A164508.P15058369688381591490

/-! ## A164508.P12129970192736536566

`A003056(xor(A000045(2*n+3), A007632(n+1)))`
-/

namespace A164508.P12129970192736536566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (A000045 (2 * n + 3)) (A007632 (n + 1))).toNat

end

end A164508.P12129970192736536566

/-!
# A164509: Number of binary strings of length n with no substrings equal to 0101, 0110, or 1010.

The programs for A164509, there is no canonical definition to state claims against.
-/

/-! ## A164509.P7506971645856458520

`A226190(A164402(n+1))-char[10]`
-/

namespace A164509.P7506971645856458520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A164402 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164509.P7506971645856458520

/-! ## A164509.P15670178381108923221

`A164415(n)-A151755(A002522(n))`
-/

namespace A164509.P15670178381108923221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164415 n - A151755 (A002522 n).toNat

end

end A164509.P15670178381108923221

/-! ## A164509.P12833455964663643347

`A164415(n)-A078926(A078918(n+1))`
-/

namespace A164509.P12833455964663643347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164415 n - A078926 (A078918 (n + 1)).toNat

end

end A164509.P12833455964663643347

/-! ## A164509.P11549075606783606875

`A164415(n)-A185284(A056503(n+1))`
-/

namespace A164509.P11549075606783606875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164415 n - A185284 (A056503 (n + 1)).toNat

end

end A164509.P11549075606783606875

/-! ## A164509.P11803199201107172535

`A164415(n)-A185284(A151532(n+1))`
-/

namespace A164509.P11803199201107172535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164415 n - A185284 (A151532 (n + 1)).toNat

end

end A164509.P11803199201107172535

/-!
# A164510: First differences of A071904 (Odd composite numbers).

The programs for A164510, the canonical program `A164510.P7896605024817402798` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164510 has offset 1).

The definition of A164510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164510.P7896605024817402798

`A186193(n+1)-A309355(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A164510

/-- `A186193(n+1)-A309355(n+1)` -/
def P7896605024817402798.Spec : Prop :=
  ∀ n, P7896605024817402798.a n = A164510 (n + 1)

theorem P7896605024817402798.correct : P7896605024817402798.Spec := by
  intro n
  simp only [A164510, Nat.add_sub_cancel]

end A164510

/-! ## A164510.P14169181888225028141

`A067970(n+2)`
-/

namespace A164510.P14169181888225028141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067970 (n + 2)

end

end A164510.P14169181888225028141

namespace A164510

/-- `A067970(n+2)` -/
def P14169181888225028141.Spec : Prop :=
  ∀ n, P14169181888225028141.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P15346990174112283071

`Δ[A007921(n+1)]`
-/

namespace A164510.P15346990174112283071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P15346990174112283071

namespace A164510

/-- `Δ[A007921(n+1)]` -/
def P15346990174112283071.Spec : Prop :=
  ∀ n, P15346990174112283071.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P18024049521190145780

`Δ[A071904(n+1)]`
-/

namespace A164510.P18024049521190145780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P18024049521190145780

namespace A164510

/-- `Δ[A071904(n+1)]` -/
def P18024049521190145780.Spec : Prop :=
  ∀ n, P18024049521190145780.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P17929886566262369981

`Δ[A146538(n+1)]`
-/

namespace A164510.P17929886566262369981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P17929886566262369981

namespace A164510

/-- `Δ[A146538(n+1)]` -/
def P17929886566262369981.Spec : Prop :=
  ∀ n, P17929886566262369981.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P15907209304555578836

`Δ[A309355(n+1)]`
-/

namespace A164510.P15907209304555578836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P15907209304555578836

namespace A164510

/-- `Δ[A309355(n+1)]` -/
def P15907209304555578836.Spec : Prop :=
  ∀ n, P15907209304555578836.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P13086380587816000177

`2*A196274(n+2)`
-/

namespace A164510.P13086380587816000177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196274 (n + 2)

end

end A164510.P13086380587816000177

namespace A164510

/-- `2*A196274(n+2)` -/
def P13086380587816000177.Spec : Prop :=
  ∀ n, P13086380587816000177.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P12602311791114967246

`Δ[A160522(n+1)]+2`
-/

namespace A164510.P12602311791114967246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A164510.P12602311791114967246

namespace A164510

/-- `Δ[A160522(n+1)]+2` -/
def P12602311791114967246.Spec : Prop :=
  ∀ n, P12602311791114967246.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P10515301751043330694

`Δ[2*A053726(n+1)]`
-/

namespace A164510.P10515301751043330694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P10515301751043330694

namespace A164510

/-- `Δ[2*A053726(n+1)]` -/
def P10515301751043330694.Spec : Prop :=
  ∀ n, P10515301751043330694.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P6786808998089787333

`Δ[2*A153039(n+1)]`
-/

namespace A164510.P6786808998089787333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P6786808998089787333

namespace A164510

/-- `Δ[2*A153039(n+1)]` -/
def P6786808998089787333.Spec : Prop :=
  ∀ n, P6786808998089787333.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P10467524503246548114

`Δ[2*A153040(n+1)]`
-/

namespace A164510.P10467524503246548114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P10467524503246548114

namespace A164510

/-- `Δ[2*A153040(n+1)]` -/
def P10467524503246548114.Spec : Prop :=
  ∀ n, P10467524503246548114.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P2361955763935716286

`Δ[2*A153045(n+1)]`
-/

namespace A164510.P2361955763935716286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P2361955763935716286

namespace A164510

/-- `Δ[2*A153045(n+1)]` -/
def P2361955763935716286.Spec : Prop :=
  ∀ n, P2361955763935716286.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P13085774000789923113

`Δ[2*A153047(n+1)]`
-/

namespace A164510.P13085774000789923113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P13085774000789923113

namespace A164510

/-- `Δ[2*A153047(n+1)]` -/
def P13085774000789923113.Spec : Prop :=
  ∀ n, P13085774000789923113.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P13344225973698914768

`Δ[2*A153052(n+1)]`
-/

namespace A164510.P13344225973698914768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P13344225973698914768

namespace A164510

/-- `Δ[2*A153052(n+1)]` -/
def P13344225973698914768.Spec : Prop :=
  ∀ n, P13344225973698914768.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P15609178740720586012

`Δ[2*A153238(n+1)]`
-/

namespace A164510.P15609178740720586012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P15609178740720586012

namespace A164510

/-- `Δ[2*A153238(n+1)]` -/
def P15609178740720586012.Spec : Prop :=
  ∀ n, P15609178740720586012.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P17873492676786302738

`Δ[2*A155723(n+1)]`
-/

namespace A164510.P17873492676786302738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P17873492676786302738

namespace A164510

/-- `Δ[2*A155723(n+1)]` -/
def P17873492676786302738.Spec : Prop :=
  ∀ n, P17873492676786302738.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P9337409981871167452

`Δ[2*A104275(n+2)]`
-/

namespace A164510.P9337409981871167452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164510.P9337409981871167452

namespace A164510

/-- `Δ[2*A104275(n+2)]` -/
def P9337409981871167452.Spec : Prop :=
  ∀ n, P9337409981871167452.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P17513521485865751891

`A007921(n+2)-A007921(n+1)`
-/

namespace A164510.P17513521485865751891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 2) - A007921 (n + 1)

end

end A164510.P17513521485865751891

namespace A164510

/-- `A007921(n+2)-A007921(n+1)` -/
def P17513521485865751891.Spec : Prop :=
  ∀ n, P17513521485865751891.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P9446837540117769478

`A071904(n+2)-A071904(n+1)`
-/

namespace A164510.P9446837540117769478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 2) - A071904 (n + 1)

end

end A164510.P9446837540117769478

namespace A164510

/-- `A071904(n+2)-A071904(n+1)` -/
def P9446837540117769478.Spec : Prop :=
  ∀ n, P9446837540117769478.a n = A164510 (n + 1)

end A164510

/-! ## A164510.P4972936154212818803

`A146538(n+2)-A146538(n+1)`
-/

namespace A164510.P4972936154212818803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 2) - A146538 (n + 1)

end

end A164510.P4972936154212818803

namespace A164510

/-- `A146538(n+2)-A146538(n+1)` -/
def P4972936154212818803.Spec : Prop :=
  ∀ n, P4972936154212818803.a n = A164510 (n + 1)

end A164510

/-!
# A164511: Least prime p such that p^2+1 is the product of n distinct primes.

The programs for A164511, there is no canonical definition to state claims against.
-/

/-! ## A164511.P18311028838603988493

`A382052(n*a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A164511.P18311028838603988493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A382052 ((n : ℤ) * a (n - 2)).toNat

end

end A164511.P18311028838603988493

/-!
# A164512: Prime power pairs of form (p^a, q^b = p^a + 1), a >= 1, b >= 1.

The programs for A164512, there is no canonical definition to state claims against.
-/

/-! ## A164512.P17122487842662393196

`A120430(A065033(n+3))-∑[A033999(n)]`
-/

namespace A164512.P17122487842662393196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120430 (A065033 (n + 3)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164512.P17122487842662393196

/-! ## A164512.P10157368656006741947

`A006549(A008619(n)+1)+char[A005408(n)]`
-/

namespace A164512.P10157368656006741947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006549 (A008619 n + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164512.P10157368656006741947

/-! ## A164512.P1219069423595676521

`A120430(A065033(n+3))-char[A005843(n)]`
-/

namespace A164512.P1219069423595676521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120430 (A065033 (n + 3)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164512.P1219069423595676521

/-! ## A164512.P610621104243307411

`A120430(A065033(n+3))-char[A052928(n)]`
-/

namespace A164512.P610621104243307411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120430 (A065033 (n + 3)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164512.P610621104243307411

/-! ## A164512.P2714246998776683613

`A165560(2*n)+A006549(A008619(n)+1)`
-/

namespace A164512.P2714246998776683613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (2 * n) + A006549 (A008619 n + 1).toNat

end

end A164512.P2714246998776683613

/-!
# A164513: Primes with gap to the next prime no less than 20.

The programs for A164513, the canonical program `A164513.P2430260910674781844` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164513 has offset 1).

The definition of A164513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164513.P2430260910674781844

`A049591(lt[8, A047846(n+1)])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A164513

/-- `A049591(lt[8, A047846(n+1)])` -/
def P2430260910674781844.Spec : Prop :=
  ∀ n, P2430260910674781844.a n = A164513 (n + 1)

theorem P2430260910674781844.correct : P2430260910674781844.Spec := by
  intro n
  simp only [A164513, Nat.add_sub_cancel]

end A164513

/-! ## A164513.P6835200580858881282

`A000040(lt[19, A054541(n+1)])`
-/

namespace A164513.P6835200580858881282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A164513.P6835200580858881282

namespace A164513

/-- `A000040(lt[19, A054541(n+1)])` -/
def P6835200580858881282.Spec : Prop :=
  ∀ n, P6835200580858881282.a n = A164513 (n + 1)

end A164513

/-! ## A164513.P9056595410362706960

`∩[A076150(n+1)-10, A124586(n+1)]`
-/

namespace A164513.P9056595410362706960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164513.P9056595410362706960

namespace A164513

/-- `∩[A076150(n+1)-10, A124586(n+1)]` -/
def P9056595410362706960.Spec : Prop :=
  ∀ n, (P9056595410362706960.a n : ℤ) = A164513 (n + 1)

end A164513

/-! ## A164513.P2933048752194686670

`∩[A076150(n+1)-10, A124585(n+1)]`
-/

namespace A164513.P2933048752194686670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164513.P2933048752194686670

namespace A164513

/-- `∩[A076150(n+1)-10, A124585(n+1)]` -/
def P2933048752194686670.Spec : Prop :=
  ∀ n, (P2933048752194686670.a n : ℤ) = A164513 (n + 1)

end A164513

/-! ## A164513.P8431945384206587107

`∩[A076150(n+1)-10, A124584(n+1)]`
-/

namespace A164513.P8431945384206587107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164513.P8431945384206587107

namespace A164513

/-- `∩[A076150(n+1)-10, A124584(n+1)]` -/
def P8431945384206587107.Spec : Prop :=
  ∀ n, (P8431945384206587107.a n : ℤ) = A164513 (n + 1)

end A164513

/-!
# A164514: 1 followed by numbers that are not squares.

The programs for A164514, the canonical program `A164514.P14123397766704682504` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164514 has offset 1).

The definition of A164514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164514.P3488454091041447622

`comp[(char[1]+n)²]`
-/

namespace A164514.P3488454091041447622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164514.P3488454091041447622

namespace A164514

/-- `comp[(char[1]+n)²]` -/
def P3488454091041447622.Spec : Prop :=
  ∀ n, (P3488454091041447622.a n : ℤ) = A164514 (n + 1)

end A164514

/-! ## A164514.P15796495568132915259

`round(sqrt(1/acot(n)))+n`
-/

namespace A164514.P15796495568132915259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (1 / SequenceMachineLib.acot (n : ℝ))) + (n : ℤ)

end

end A164514.P15796495568132915259

namespace A164514

/-- `round(sqrt(1/acot(n)))+n` -/
def P15796495568132915259.Spec : Prop :=
  ∀ n, P15796495568132915259.a n = A164514 (n + 1)

end A164514

/-! ## A164514.P9368370383539917372

`∪[n²+1, comp[n²]]`
-/

namespace A164514.P9368370383539917372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A164514.P9368370383539917372

namespace A164514

/-- `∪[n²+1, comp[n²]]` -/
def P9368370383539917372.Spec : Prop :=
  ∀ n, (P9368370383539917372.a n : ℤ) = A164514 (n + 1)

end A164514

/-! ## A164514.P4510105520814124638

`comp[∑[a(n-1)+2]]+1` with `a(0)=3`
-/

namespace A164514.P4510105520814124638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A164514.P4510105520814124638

namespace A164514

/-- `comp[∑[a(n-1)+2]]+1` -/
def P4510105520814124638.Spec : Prop :=
  ∀ n, (P4510105520814124638.a n : ℤ) = A164514 (n + 1)

end A164514

/-! ## A164514.P14869055869929130731

`comp[(n+1)²]+C(n+1, (n+1)²)`
-/

namespace A164514.P14869055869929130731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.choose (n + 1) ((n + 1) ^ 2)

end

end A164514.P14869055869929130731

namespace A164514

/-- `comp[(n+1)²]+C(n+1, (n+1)²)` -/
def P14869055869929130731.Spec : Prop :=
  ∀ n, (P14869055869929130731.a n : ℤ) = A164514 (n + 1)

end A164514

/-! ## A164514.P14123397766704682504

`2*n-floor(n*n/(a(n-1)+2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164514

/-- `2*n-floor(n*n/(a(n-1)+2))` -/
def P14123397766704682504.Spec : Prop :=
  ∀ n, P14123397766704682504.a n = A164514 (n + 1)

theorem P14123397766704682504.correct : P14123397766704682504.Spec := by
  intro n
  simp only [A164514, Nat.add_sub_cancel]

end A164514

/-! ## A164514.P16974332195975992172

`eq[1, A056926(n)]`
-/

namespace A164514.P16974332195975992172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164514.P16974332195975992172

namespace A164514

/-- `eq[1, A056926(n)]` -/
def P16974332195975992172.Spec : Prop :=
  ∀ n, (P16974332195975992172.a n : ℤ) = A164514 (n + 1)

end A164514

/-! ## A164514.P3216599130523279455

`∑[2-A267773(n)]`
-/

namespace A164514.P3216599130523279455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A267773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164514.P3216599130523279455

namespace A164514

/-- `∑[2-A267773(n)]` -/
def P3216599130523279455.Spec : Prop :=
  ∀ n, P3216599130523279455.a n = A164514 (n + 1)

end A164514

/-! ## A164514.P940282019774941228

`A028310(n)+A000194(n)`
-/

namespace A164514.P940282019774941228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A000194 n

end

end A164514.P940282019774941228

namespace A164514

/-- `A028310(n)+A000194(n)` -/
def P940282019774941228.Spec : Prop :=
  ∀ n, P940282019774941228.a n = A164514 (n + 1)

end A164514

/-! ## A164514.P18002219307703205718

`A004277(n)-A056847(n)`
-/

namespace A164514.P18002219307703205718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A056847 n

end

end A164514.P18002219307703205718

namespace A164514

/-- `A004277(n)-A056847(n)` -/
def P18002219307703205718.Spec : Prop :=
  ∀ n, P18002219307703205718.a n = A164514 (n + 1)

end A164514

/-! ## A164514.P17734741331506086578

`A164386(n+1)+A057428(n)`
-/

namespace A164514.P17734741331506086578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (n + 1) + A057428 n

end

end A164514.P17734741331506086578

namespace A164514

/-- `A164386(n+1)+A057428(n)` -/
def P17734741331506086578.Spec : Prop :=
  ∀ n, P17734741331506086578.a n = A164514 (n + 1)

end A164514

/-! ## A164514.P6913934675052969247

`A259361(A053187(n))+n+1`
-/

namespace A164514.P6913934675052969247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A053187 n).toNat + (n + 1 : ℤ)

end

end A164514.P6913934675052969247

namespace A164514

/-- `A259361(A053187(n))+n+1` -/
def P6913934675052969247.Spec : Prop :=
  ∀ n, P6913934675052969247.a n = A164514 (n + 1)

end A164514

/-! ## A164514.P47939978791939326

`A164386(n+1)-A057427(n)`
-/

namespace A164514.P47939978791939326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (n + 1) - A057427 n

end

end A164514.P47939978791939326

namespace A164514

/-- `A164386(n+1)-A057427(n)` -/
def P47939978791939326.Spec : Prop :=
  ∀ n, P47939978791939326.a n = A164514 (n + 1)

end A164514

/-! ## A164514.P1925839837229504062

`A000194(A028391(A028391(n)))+n+1`
-/

namespace A164514.P1925839837229504062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A028391 (A028391 n).toNat).toNat + (n + 1 : ℤ)

end

end A164514.P1925839837229504062

namespace A164514

/-- `A000194(A028391(A028391(n)))+n+1` -/
def P1925839837229504062.Spec : Prop :=
  ∀ n, P1925839837229504062.a n = A164514 (n + 1)

end A164514

/-! ## A164514.P4113420071425264476

`A000194(A056847(A056847(n+1)))+n+1`
-/

namespace A164514.P4113420071425264476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A056847 (A056847 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A164514.P4113420071425264476

namespace A164514

/-- `A000194(A056847(A056847(n+1)))+n+1` -/
def P4113420071425264476.Spec : Prop :=
  ∀ n, P4113420071425264476.a n = A164514 (n + 1)

end A164514

/-! ## A164514.P2668579324561904807

`∑[Δ[comp[(n+2)²]]!]`
-/

namespace A164514.P2668579324561904807
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164514.P2668579324561904807

namespace A164514

/-- `∑[Δ[comp[(n+2)²]]!]` -/
def P2668579324561904807.Spec : Prop :=
  ∀ n, (P2668579324561904807.a n : ℤ) = A164514 (n + 1)

end A164514

/-! ## A164514.P1773693694141894133

`record[xor(n, char[n²])]`
-/

namespace A164514.P1773693694141894133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164514.P1773693694141894133

namespace A164514

/-- `record[xor(n, char[n²])]` -/
def P1773693694141894133.Spec : Prop :=
  ∀ n, (P1773693694141894133.a n : ℤ) = A164514 (n + 1)

end A164514

/-! ## A164514.P12397857054328501366

`eq[0, char[(char[1]+n)²]]`
-/

namespace A164514.P12397857054328501366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f4 j = n then 1 else 0) + n) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164514.P12397857054328501366

namespace A164514

/-- `eq[0, char[(char[1]+n)²]]` -/
def P12397857054328501366.Spec : Prop :=
  ∀ n, (P12397857054328501366.a n : ℤ) = A164514 (n + 1)

end A164514

/-! ## A164514.P8027328746340050162

`lt[char[(char[1]+n)²], 1]`
-/

namespace A164514.P8027328746340050162
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0) + n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A164514.P8027328746340050162

namespace A164514

/-- `lt[char[(char[1]+n)²], 1]` -/
def P8027328746340050162.Spec : Prop :=
  ∀ n, (P8027328746340050162.a n : ℤ) = A164514 (n + 1)

end A164514

/-!
# A164515: Positive numbers not of the form n^2+2.

The programs for A164515, the canonical program `A164515.P4017312896007364613` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164515 has offset 1).

The definition of A164515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164515.P4017312896007364613

`comp[n²+1]+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164515

/-- `comp[n²+1]+1` -/
def P4017312896007364613.Spec : Prop :=
  ∀ n, (P4017312896007364613.a n : ℤ) = A164515 (n + 1)

theorem P4017312896007364613.correct : P4017312896007364613.Spec := by
  intro n
  simp only [A164515, Nat.add_sub_cancel]

end A164515

/-! ## A164515.P14860887293535848098

`comp[∑[(4*n)%or(1, n)]]`
-/

namespace A164515.P14860887293535848098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n % Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164515.P14860887293535848098

namespace A164515

/-- `comp[∑[(4*n)%or(1, n)]]` -/
def P14860887293535848098.Spec : Prop :=
  ∀ n, (P14860887293535848098.a n : ℤ) = A164515 (n + 1)

end A164515

/-! ## A164515.P3452264834447623674

`comp[∑[a(n-1)+2]]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A164515.P3452264834447623674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164515.P3452264834447623674

namespace A164515

/-- `comp[∑[a(n-1)+2]]` -/
def P3452264834447623674.Spec : Prop :=
  ∀ n, (P3452264834447623674.a n : ℤ) = A164515 (n + 1)

end A164515

/-! ## A164515.P8742558084615909257

`ceil(sqrt(sqrt(n)+n)-xor(n, -1))`
-/

namespace A164515.P8742558084615909257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (n : ℝ) + (n : ℝ)) - (Int.xor (n : ℤ) (-1) : ℝ)⌉

end

end A164515.P8742558084615909257

namespace A164515

/-- `ceil(sqrt(sqrt(n)+n)-xor(n, -1))` -/
def P8742558084615909257.Spec : Prop :=
  ∀ n, P8742558084615909257.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P14548260779325923863

`ceil(sqrt(a(n-1))+n+1)` with `a(0)=1, a(1)=4`
-/

namespace A164515.P14548260779325923863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈Real.sqrt (a (n - 1) : ℝ) + (n + 1 : ℝ)⌉

end

end A164515.P14548260779325923863

namespace A164515

/-- `ceil(sqrt(a(n-1))+n+1)` -/
def P14548260779325923863.Spec : Prop :=
  ∀ n, P14548260779325923863.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P11044226356667651994

`floor(sqrt(a(n-2))+2+n)` with `a(0)=1, a(1)=4`
-/

namespace A164515.P11044226356667651994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊Real.sqrt (a (n - 2) : ℝ) + 2 + (n : ℝ)⌋

end

end A164515.P11044226356667651994

namespace A164515

/-- `floor(sqrt(a(n-2))+2+n)` -/
def P11044226356667651994.Spec : Prop :=
  ∀ n, P11044226356667651994.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P7010268197954497372

`round(A065475(n+1)+sqrt(n))`
-/

namespace A164515.P7010268197954497372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A065475 (n + 1) : ℝ) + Real.sqrt (n : ℝ))

end

end A164515.P7010268197954497372

namespace A164515

/-- `round(A065475(n+1)+sqrt(n))` -/
def P7010268197954497372.Spec : Prop :=
  ∀ n, P7010268197954497372.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P900248188632021645

`A065475(A164386(n+1))`
-/

namespace A164515.P900248188632021645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A164386 (n + 1)).toNat

end

end A164515.P900248188632021645

namespace A164515

/-- `A065475(A164386(n+1))` -/
def P900248188632021645.Spec : Prop :=
  ∀ n, P900248188632021645.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P14122833171413233745

`A171463(A164514(n+1))`
-/

namespace A164515.P14122833171413233745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A164514 (n + 1)).toNat

end

end A164515.P14122833171413233745

namespace A164515

/-- `A171463(A164514(n+1))` -/
def P14122833171413233745.Spec : Prop :=
  ∀ n, P14122833171413233745.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P6769717580630100665

`filter[A319702(2*n+1), A265186(#)]`
-/

namespace A164515.P6769717580630100665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A164515.P6769717580630100665

namespace A164515

/-- `filter[A319702(2*n+1), A265186(#)]` -/
def P6769717580630100665.Spec : Prop :=
  ∀ n, P6769717580630100665.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P6022789812900998856

`eq[A265186(n), A294619(n)]`
-/

namespace A164515.P6022789812900998856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164515.P6022789812900998856

namespace A164515

/-- `eq[A265186(n), A294619(n)]` -/
def P6022789812900998856.Spec : Prop :=
  ∀ n, (P6022789812900998856.a n : ℤ) = A164515 (n + 1)

end A164515

/-! ## A164515.P3543717830097789532

`comp[or(2, n)*char[n²]]`
-/

namespace A164515.P3543717830097789532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n * (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164515.P3543717830097789532

namespace A164515

/-- `comp[or(2, n)*char[n²]]` -/
def P3543717830097789532.Spec : Prop :=
  ∀ n, (P3543717830097789532.a n : ℤ) = A164515 (n + 1)

end A164515

/-! ## A164515.P16691431903672454978

`comp[xor(2, n)*char[n²]]`
-/

namespace A164515.P16691431903672454978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n * (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164515.P16691431903672454978

namespace A164515

/-- `comp[xor(2, n)*char[n²]]` -/
def P16691431903672454978.Spec : Prop :=
  ∀ n, (P16691431903672454978.a n : ℤ) = A164515 (n + 1)

end A164515

/-! ## A164515.P10773577848367866824

`comp[and(-char[n²], xor(2, n))]`
-/

namespace A164515.P10773577848367866824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) (Nat.xor 2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164515.P10773577848367866824

namespace A164515

/-- `comp[and(-char[n²], xor(2, n))]` -/
def P10773577848367866824.Spec : Prop :=
  ∀ n, (P10773577848367866824.a n : ℤ) = A164515 (n + 1)

end A164515

/-! ## A164515.P5417228051502627279

`filter[A136746(2*n), A265186(#)]`
-/

namespace A164515.P5417228051502627279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136746 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A164515.P5417228051502627279

namespace A164515

/-- `filter[A136746(2*n), A265186(#)]` -/
def P5417228051502627279.Spec : Prop :=
  ∀ n, P5417228051502627279.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P17878970837089266293

`filter[A267185(2*n+1), A265186(#)]`
-/

namespace A164515.P17878970837089266293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267185 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A164515.P17878970837089266293

namespace A164515

/-- `filter[A267185(2*n+1), A265186(#)]` -/
def P17878970837089266293.Spec : Prop :=
  ∀ n, P17878970837089266293.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P12261840083919529533

`filter[A225553(2*(n+2)), A265186(#)]`
-/

namespace A164515.P12261840083919529533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225553 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A164515.P12261840083919529533

namespace A164515

/-- `filter[A225553(2*(n+2)), A265186(#)]` -/
def P12261840083919529533.Spec : Prop :=
  ∀ n, P12261840083919529533.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P9547470943214196949

`filter[A266977(2*n), A265186(#)]`
-/

namespace A164515.P9547470943214196949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A164515.P9547470943214196949

namespace A164515

/-- `filter[A266977(2*n), A265186(#)]` -/
def P9547470943214196949.Spec : Prop :=
  ∀ n, P9547470943214196949.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P3828635457259677037

`filter[A270059(2*n), A265186(#)]`
-/

namespace A164515.P3828635457259677037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A164515.P3828635457259677037

namespace A164515

/-- `filter[A270059(2*n), A265186(#)]` -/
def P3828635457259677037.Spec : Prop :=
  ∀ n, P3828635457259677037.a n = A164515 (n + 1)

end A164515

/-! ## A164515.P147250869473978753

`filter[A354779(2*n+1), A265186(#)]`
-/

namespace A164515.P147250869473978753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354779 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A164515.P147250869473978753

namespace A164515

/-- `filter[A354779(2*n+1), A265186(#)]` -/
def P147250869473978753.Spec : Prop :=
  ∀ n, P147250869473978753.a n = A164515 (n + 1)

end A164515

/-!
# A164517: Primes of the form 1+A162143(k).

The programs for A164517, there is no canonical definition to state claims against.
-/

/-! ## A164517.P13120287275760702154

`record[A256970(A046315(n+5))]`
-/

namespace A164517.P13120287275760702154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A046315 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164517.P13120287275760702154

/-! ## A164517.P17319433226583043254

`∩[A005574(n+1), A007304(n+1)]²+1`
-/

namespace A164517.P17319433226583043254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A164517.P17319433226583043254

/-! ## A164517.P417209153383871152

`A002522(∩[A005574(n+1), A007304(n+1)])`
-/

namespace A164517.P417209153383871152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164517.P417209153383871152

/-!
# A164518: Primes of the form A162143(k) + 2.

The programs for A164518, there is no canonical definition to state claims against.
-/

/-! ## A164518.P1881557498301095590

`∩[A056899(n+1), A162143(n+1)+2]`
-/

namespace A164518.P1881557498301095590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162143 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164518.P1881557498301095590

/-! ## A164518.P17714229537308444923

`record[A379351(A046389(n+1))]`
-/

namespace A164518.P17714229537308444923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379351 (A046389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164518.P17714229537308444923

/-! ## A164518.P10129847309325394313

`∩[A059100(A007304(n+1)), A056899(n+1)]`
-/

namespace A164518.P10129847309325394313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (A007304 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164518.P10129847309325394313

/-! ## A164518.P5773189109441635730

`A059100(∩[A007304(n+1), A067201(n+1)])`
-/

namespace A164518.P5773189109441635730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164518.P5773189109441635730

/-! ## A164518.P11393813280439644713

`A059100(∩[A046389(n+1), A067201(n+1)])`
-/

namespace A164518.P11393813280439644713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164518.P11393813280439644713

/-! ## A164518.P17234423603385762930

`A379351(∩[A007304(n+1), A067201(n+1)])`
-/

namespace A164518.P17234423603385762930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379351 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164518.P17234423603385762930

/-! ## A164518.P1228767291087938948

`A379351(∩[A046389(n+1), A067201(n+1)])`
-/

namespace A164518.P1228767291087938948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379351 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164518.P1228767291087938948

/-!
# A164519: Primes p such that p+2 is the square of a product of 3 distinct primes.

The programs for A164519, there is no canonical definition to state claims against.
-/

/-! ## A164519.P10763301739759860523

`p?[A162143(n+1)-2]`
-/

namespace A164519.P10763301739759860523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162143 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164519.P10763301739759860523

/-! ## A164519.P14139567214066440089

`p?[A007304(n+1)²-2]`
-/

namespace A164519.P14139567214066440089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164519.P14139567214066440089

/-! ## A164519.P14235750131378592103

`p?[A046389(n+1)²-2]`
-/

namespace A164519.P14235750131378592103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164519.P14235750131378592103

/-! ## A164519.P6245864868073841809

`p?[A225228(n+1)²-2]`
-/

namespace A164519.P6245864868073841809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164519.P6245864868073841809

/-!
# A164520: Primes p such that p-2 is the product of exactly 2 distinct cubes of primes.

The programs for A164520, there is no canonical definition to state claims against.
-/

/-! ## A164520.P8447362885427707494

`∩[A144953(n+1), A162142(n+1)+2]`
-/

namespace A164520.P8447362885427707494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162142 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164520.P8447362885427707494

/-! ## A164520.P380234804308002394

`∩[A084380(A001358(n+1)), A144953(n+1)]`
-/

namespace A164520.P380234804308002394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084380 (A001358 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164520.P380234804308002394

/-!
# A164523: Nonnegative numbers n such that 6*2^n-1 is prime.

The programs for A164523, there is no canonical definition to state claims against.
-/

/-! ## A164523.P16666892469463249846

`A002235(n+2)-1`
-/

namespace A164523.P16666892469463249846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002235 (n + 2) - 1

end

end A164523.P16666892469463249846

/-! ## A164523.P8860283698302657341

`A091997(n+2)-2`
-/

namespace A164523.P8860283698302657341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091997 (n + 2) - 2

end

end A164523.P8860283698302657341

/-! ## A164523.P16068411903417645372

`∑[Δ[A002235(n+1)]%(2^n)]`
-/

namespace A164523.P16068411903417645372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002235 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164523.P16068411903417645372

/-! ## A164523.P8831362967184735510

`∑[Δ[A091997(n+1)]%(2^n)]`
-/

namespace A164523.P8831362967184735510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164523.P8831362967184735510

/-! ## A164523.P12612062992214849736

`A153881(n+2)+A002235(n+2)`
-/

namespace A164523.P12612062992214849736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A002235 (n + 2)

end

end A164523.P12612062992214849736

/-!
# A164524: Even numbers in the decimal expansion of Pi, contiguous and shortest.

The programs for A164524, there is no canonical definition to state claims against.
-/

/-! ## A164524.P7434895751893277660

`A050818(n+1)%A285877(∑{d}[n+1, #])`
-/

namespace A164524.P7434895751893277660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050818 (n + 1)) (A285877 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A164524.P7434895751893277660

/-!
# A164528: a(1)=2. a(n) = the smallest multiple of {the largest proper divisor of n} that is > a(n-1).

The programs for A164528, there is no canonical definition to state claims against.
-/

/-! ## A164528.P10650564624131667496

`A164529(n+1)+1+n`
-/

namespace A164528.P10650564624131667496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164529 (n + 1) + 1 + (n : ℤ)

end

end A164528.P10650564624131667496

/-! ## A164528.P1458713623964902095

`A020725(A164529(n+1)+n)`
-/

namespace A164528.P1458713623964902095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A164529 (n + 1) + (n : ℤ)).toNat

end

end A164528.P1458713623964902095

/-! ## A164528.P12793226354071071436

`record[A164529(A008621(n))+A008624(n)]`
-/

namespace A164528.P12793226354071071436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164529 (A008621 n).toNat + A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164528.P12793226354071071436

/-! ## A164528.P5680693303262582882

`record[A164529(A134478(n))+A134478(n)]`
-/

namespace A164528.P5680693303262582882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164529 (A134478 n).toNat + A134478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164528.P5680693303262582882

/-! ## A164528.P16299224329216591557

`record[A328399(n)+A164529(A008619(n))]`
-/

namespace A164528.P16299224329216591557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 n + A164529 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164528.P16299224329216591557

/-! ## A164528.P10393917268780484722

`record[A291769(n)+A164529(A291769(n))]`
-/

namespace A164528.P10393917268780484722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n + A164529 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164528.P10393917268780484722

/-! ## A164528.P2621902375520206986

`record[A344180(n)+A164529(A344180(n))]`
-/

namespace A164528.P2621902375520206986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n + A164529 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164528.P2621902375520206986

/-!
# A164529: a(1)=1. a(n) = the smallest multiple of {the largest proper divisor of n} that is >= a(n-1).

The programs for A164529, there is no canonical definition to state claims against.
-/

/-! ## A164529.P9017793015669536139

`A164528(A014684(n+1))-A014684(n+1)`
-/

namespace A164529.P9017793015669536139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164528 (A014684 (n + 1)).toNat - A014684 (n + 1)

end

end A164529.P9017793015669536139

/-! ## A164529.P10545276483671049852

`A164528(A179278(n+1))-A179278(n+1)`
-/

namespace A164529.P10545276483671049852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164528 (A179278 (n + 1)).toNat - A179278 (n + 1)

end

end A164529.P10545276483671049852

/-! ## A164529.P14953343606353762287

`A164528(n+1)-(n+1)`
-/

namespace A164529.P14953343606353762287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164528 (n + 1) - (n + 1 : ℤ)

end

end A164529.P14953343606353762287

/-! ## A164529.P9414505827466739771

`A023443(A164528(n+1)-n)`
-/

namespace A164529.P9414505827466739771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A164528 (n + 1) - (n : ℤ)).toNat

end

end A164529.P9414505827466739771

/-! ## A164529.P15120304310895349220

`A033619(A164528(n+1)-n)`
-/

namespace A164529.P15120304310895349220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A164528 (n + 1) - (n : ℤ)).toNat

end

end A164529.P15120304310895349220

/-! ## A164529.P13076132576554166872

`A002260(A164528(n+1)+∑[n])`
-/

namespace A164529.P13076132576554166872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A164528 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A164529.P13076132576554166872

/-! ## A164529.P11672198983702092040

`A002262(A164528(n+1)+∑[n])`
-/

namespace A164529.P11672198983702092040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A164528 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A164529.P11672198983702092040

/-!
# A164530: a(1)=1. a(n) = the smallest multiple of d(n) that is > a(n-1), where d(n) = the number of positive divisors of n.

The programs for A164530, there is no canonical definition to state claims against.
-/

/-! ## A164530.P510992633852038411

`lt[A240486(A071558(n+1)), A027642(n)]`
-/

namespace A164530.P510992633852038411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240486 (A071558 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164530.P510992633852038411

/-! ## A164530.P6856484698497758411

`lt[(2*(n-1))^(n%2), log(A236679(3*(n+2)))]`
-/

namespace A164530.P6856484698497758411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - 1)) ^ (n % 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A236679 (3 * (n + 2)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A164530.P6856484698497758411

/-! ## A164530.P3719540264896591527

`∑[A323159(A072545(n)²)]`
-/

namespace A164530.P3719540264896591527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323159 (A072545 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164530.P3719540264896591527

/-! ## A164530.P166521780018155570

`∑[A058263(A000288(n+2))]`
-/

namespace A164530.P166521780018155570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (A000288 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164530.P166521780018155570

/-!
# A164532: a(n) = 6*a(n-2) for n > 2; a(1) = 1, a(2) = 4.

The programs for A164532, the canonical program `A164532.P17557103870540829807` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164532 has offset 1).

The definition of A164532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)` (program `A164532.P17557103870540829807`, by `A164532.P17557103870540829807.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164532.P17557103870540829807

`6*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164532

/-- `6*a(n-2)` -/
def P17557103870540829807.Spec : Prop :=
  ∀ n, (P17557103870540829807.a n : ℤ) = A164532 (n + 1)

theorem P17557103870540829807.correct : P17557103870540829807.Spec := by
  intro n
  simp only [A164532, Nat.add_sub_cancel]

end A164532

/-! ## A164532.P2114382351575412510

`∏[6/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A164532.P2114382351575412510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  6 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164532.P2114382351575412510

namespace A164532

/-- `∏[6/a(n-1)]` -/
def P2114382351575412510.Spec : Prop :=
  ∀ n, P2114382351575412510.a n = (A164532 (n + 1) : ℚ)

end A164532

/-! ## A164532.P6357304688217124309

`a(n-2)/(1-5/6)` with `a(0)=1, a(1)=4`
-/

namespace A164532.P6357304688217124309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / (1 - (5 : ℚ) / 6)

end

end A164532.P6357304688217124309

namespace A164532

/-- `a(n-2)/(1-5/6)` -/
def P6357304688217124309.Spec : Prop :=
  ∀ n, P6357304688217124309.a n = (A164532 (n + 1) : ℚ)

end A164532

/-! ## A164532.P9879999561593248103

`a(n-2)+lcm(5, a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A164532.P9879999561593248103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + Nat.lcm 5 (a (n - 2))

end

end A164532.P9879999561593248103

namespace A164532

/-- `a(n-2)+lcm(5, a(n-2))` -/
def P9879999561593248103.Spec : Prop :=
  ∀ n, (P9879999561593248103.a n : ℤ) = A164532 (n + 1)

end A164532

/-! ## A164532.P812111009164207891

`Δ[A026549(n)]`
-/

namespace A164532.P812111009164207891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164532.P812111009164207891

namespace A164532

/-- `Δ[A026549(n)]` -/
def P812111009164207891.Spec : Prop :=
  ∀ n, P812111009164207891.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P3424875309129308709

`Δ[record[A100851(n)]]`
-/

namespace A164532.P3424875309129308709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164532.P3424875309129308709

namespace A164532

/-- `Δ[record[A100851(n)]]` -/
def P3424875309129308709.Spec : Prop :=
  ∀ n, P3424875309129308709.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P8797142359959378894

`Δ[∏[A158478(n+1)]]`
-/

namespace A164532.P8797142359959378894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164532.P8797142359959378894

namespace A164532

/-- `Δ[∏[A158478(n+1)]]` -/
def P8797142359959378894.Spec : Prop :=
  ∀ n, P8797142359959378894.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P17142175471021053733

`record[Δ[∏[A294180(n+1)]]]`
-/

namespace A164532.P17142175471021053733
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164532.P17142175471021053733

namespace A164532

/-- `record[Δ[∏[A294180(n+1)]]]` -/
def P17142175471021053733.Spec : Prop :=
  ∀ n, P17142175471021053733.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P12518231342045737592

`A084391(A042948(n+1))`
-/

namespace A164532.P12518231342045737592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084391 (A042948 (n + 1)).toNat

end

end A164532.P12518231342045737592

namespace A164532

/-- `A084391(A042948(n+1))` -/
def P12518231342045737592.Spec : Prop :=
  ∀ n, P12518231342045737592.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P5172705098053801970

`A084391(A338062(n+1))`
-/

namespace A164532.P5172705098053801970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084391 (A338062 (n + 1)).toNat

end

end A164532.P5172705098053801970

namespace A164532

/-- `A084391(A338062(n+1))` -/
def P5172705098053801970.Spec : Prop :=
  ∀ n, P5172705098053801970.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P16369605668219558257

`A000034(n)*A026549(n)`
-/

namespace A164532.P16369605668219558257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A026549 n

end

end A164532.P16369605668219558257

namespace A164532

/-- `A000034(n)*A026549(n)` -/
def P16369605668219558257.Spec : Prop :=
  ∀ n, P16369605668219558257.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P14119412029314246765

`A038754(n)*A060546(n)`
-/

namespace A164532.P14119412029314246765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n * A060546 n

end

end A164532.P14119412029314246765

namespace A164532

/-- `A038754(n)*A060546(n)` -/
def P14119412029314246765.Spec : Prop :=
  ∀ n, P14119412029314246765.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P9788758121596217761

`A108411(n)*A143095(n)`
-/

namespace A164532.P9788758121596217761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A143095 n

end

end A164532.P9788758121596217761

namespace A164532

/-- `A108411(n)*A143095(n)` -/
def P9788758121596217761.Spec : Prop :=
  ∀ n, P9788758121596217761.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P6206343557360587699

`lcm(A026549(n), A143095(n))`
-/

namespace A164532.P6206343557360587699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026549 n) (A143095 n)

end

end A164532.P6206343557360587699

namespace A164532

/-- `lcm(A026549(n), A143095(n))` -/
def P6206343557360587699.Spec : Prop :=
  ∀ n, (P6206343557360587699.a n : ℤ) = A164532 (n + 1)

end A164532

/-! ## A164532.P15682282714050683038

`Δ[∏[A020639(A267352(n))]]`
-/

namespace A164532.P15682282714050683038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A267352 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164532.P15682282714050683038

namespace A164532

/-- `Δ[∏[A020639(A267352(n))]]` -/
def P15682282714050683038.Spec : Prop :=
  ∀ n, P15682282714050683038.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P5178868015234007939

`Δ[∏[A267352(A267354(n))]]`
-/

namespace A164532.P5178868015234007939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267352 (A267354 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164532.P5178868015234007939

namespace A164532

/-- `Δ[∏[A267352(A267354(n))]]` -/
def P5178868015234007939.Spec : Prop :=
  ∀ n, P5178868015234007939.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P7922204027998181982

`∏[A010693(n)]-A026549(n)`
-/

namespace A164532.P7922204027998181982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A026549 n

end

end A164532.P7922204027998181982

namespace A164532

/-- `∏[A010693(n)]-A026549(n)` -/
def P7922204027998181982.Spec : Prop :=
  ∀ n, P7922204027998181982.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P6578702265163826977

`Δ[A016116(n)*A038754(n)]`
-/

namespace A164532.P6578702265163826977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164532.P6578702265163826977

namespace A164532

/-- `Δ[A016116(n)*A038754(n)]` -/
def P6578702265163826977.Spec : Prop :=
  ∀ n, P6578702265163826977.a n = A164532 (n + 1)

end A164532

/-! ## A164532.P15877675411077529848

`Δ[A027383(n)]*A038754(n)`
-/

namespace A164532.P15877675411077529848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038754 n

end

end A164532.P15877675411077529848

namespace A164532

/-- `Δ[A027383(n)]*A038754(n)` -/
def P15877675411077529848.Spec : Prop :=
  ∀ n, P15877675411077529848.a n = A164532 (n + 1)

end A164532

/-!
# A164533: a(n) = sigma(sigma(n))*sigma(n).

The programs for A164533, the canonical program `A164533.P5622096095032997703` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164533 has offset 1).

The definition of A164533 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164533.P5622096095032997703

`A051027(n+1)*A000203(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164533

/-- `A051027(n+1)*A000203(n+1)` -/
def P5622096095032997703.Spec : Prop :=
  ∀ n, P5622096095032997703.a n = A164533 (n + 1)

theorem P5622096095032997703.correct : P5622096095032997703.Spec := by
  intro n
  simp only [A164533, Nat.add_sub_cancel]

end A164533

/-! ## A164533.P6657650019989318548

`∑{d}[n+1, #]*∑{d}[∑{d}[n+1, #], #]`
-/

namespace A164533.P6657650019989318548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) * (∑ d ∈ Nat.divisors (f2 n), d)

end

end A164533.P6657650019989318548

namespace A164533

/-- `∑{d}[n+1, #]*∑{d}[∑{d}[n+1, #], #]` -/
def P6657650019989318548.Spec : Prop :=
  ∀ n, (P6657650019989318548.a n : ℤ) = A164533 (n + 1)

end A164533

/-! ## A164533.P4335677542931355708

`∑{d}[n+1, #]*A000203(∑{d}[n+1, #])`
-/

namespace A164533.P4335677542931355708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A000203 (∑ d ∈ Nat.divisors (f2 n), d)

end

end A164533.P4335677542931355708

namespace A164533

/-- `∑{d}[n+1, #]*A000203(∑{d}[n+1, #])` -/
def P4335677542931355708.Spec : Prop :=
  ∀ n, P4335677542931355708.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P7617720168315744442

`A000203(n+1)*∑[A111408(n)]`
-/

namespace A164533.P7617720168315744442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164533.P7617720168315744442

namespace A164533

/-- `A000203(n+1)*∑[A111408(n)]` -/
def P7617720168315744442.Spec : Prop :=
  ∀ n, P7617720168315744442.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P4959265471196007465

`abs(A051027(n+1)*A143348(n+1))`
-/

namespace A164533.P4959265471196007465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051027 (n + 1) * A143348 (n + 1)|

end

end A164533.P4959265471196007465

namespace A164533

/-- `abs(A051027(n+1)*A143348(n+1))` -/
def P4959265471196007465.Spec : Prop :=
  ∀ n, P4959265471196007465.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P9668143113126499072

`(A088580(n+1)-1)*A051027(n+1)`
-/

namespace A164533.P9668143113126499072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A051027 (n + 1)

end

end A164533.P9668143113126499072

namespace A164533

/-- `(A088580(n+1)-1)*A051027(n+1)` -/
def P9668143113126499072.Spec : Prop :=
  ∀ n, P9668143113126499072.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P9527698870936254984

`A000203(n+1)*A000203(Δ[A160664(n)])`
-/

namespace A164533.P9527698870936254984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A000203 (f1 (n + 1) - f1 n).toNat

end

end A164533.P9527698870936254984

namespace A164533

/-- `A000203(n+1)*A000203(Δ[A160664(n)])` -/
def P9527698870936254984.Spec : Prop :=
  ∀ n, P9527698870936254984.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P15803650942572176983

`(A160664(n+1)-A160664(n))*A051027(n+1)`
-/

namespace A164533.P15803650942572176983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160664 (n + 1) - A160664 n) * A051027 (n + 1)

end

end A164533.P15803650942572176983

namespace A164533

/-- `(A160664(n+1)-A160664(n))*A051027(n+1)` -/
def P15803650942572176983.Spec : Prop :=
  ∀ n, P15803650942572176983.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P11597514765111167991

`A000203(A245092(2*n+1))*A245092(2*n+1)`
-/

namespace A164533.P11597514765111167991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A245092 (2 * n + 1)).toNat * A245092 (2 * n + 1)

end

end A164533.P11597514765111167991

namespace A164533

/-- `A000203(A245092(2*n+1))*A245092(2*n+1)` -/
def P11597514765111167991.Spec : Prop :=
  ∀ n, P11597514765111167991.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P10530283886217886964

`(A048146(n+1)+A034448(n+1))*A051027(n+1)`
-/

namespace A164533.P10530283886217886964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1)) * A051027 (n + 1)

end

end A164533.P10530283886217886964

namespace A164533

/-- `(A048146(n+1)+A034448(n+1))*A051027(n+1)` -/
def P10530283886217886964.Spec : Prop :=
  ∀ n, P10530283886217886964.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P3856151044021249236

`(A070039(n+1)+A070038(n+1))*A051027(n+1)`
-/

namespace A164533.P3856151044021249236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070039 (n + 1) + A070038 (n + 1)) * A051027 (n + 1)

end

end A164533.P3856151044021249236

namespace A164533

/-- `(A070039(n+1)+A070038(n+1))*A051027(n+1)` -/
def P3856151044021249236.Spec : Prop :=
  ∀ n, P3856151044021249236.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P5362857977908418367

`(A117004(n+1)+A079667(n+1))*A051027(n+1)`
-/

namespace A164533.P5362857977908418367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117004 (n + 1) + A079667 (n + 1)) * A051027 (n + 1)

end

end A164533.P5362857977908418367

namespace A164533

/-- `(A117004(n+1)+A079667(n+1))*A051027(n+1)` -/
def P5362857977908418367.Spec : Prop :=
  ∀ n, P5362857977908418367.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P2032558134862365586

`(A193337(n+1)+A193336(n+1))*A000203(n+1)`
-/

namespace A164533.P2032558134862365586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193337 (n + 1) + A193336 (n + 1)) * A000203 (n + 1)

end

end A164533.P2032558134862365586

namespace A164533

/-- `(A193337(n+1)+A193336(n+1))*A000203(n+1)` -/
def P2032558134862365586.Spec : Prop :=
  ∀ n, P2032558134862365586.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P12850396190911217688

`(A000217(n+1)-A024816(n+1))*A051027(n+1)`
-/

namespace A164533.P12850396190911217688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) - A024816 (n + 1)) * A051027 (n + 1)

end

end A164533.P12850396190911217688

namespace A164533

/-- `(A000217(n+1)-A024816(n+1))*A051027(n+1)` -/
def P12850396190911217688.Spec : Prop :=
  ∀ n, P12850396190911217688.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P1194030209819143828

`(A065387(n+1)-A000010(n+1))*A051027(n+1)`
-/

namespace A164533.P1194030209819143828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065387 (n + 1) - A000010 (n + 1)) * A051027 (n + 1)

end

end A164533.P1194030209819143828

namespace A164533

/-- `(A065387(n+1)-A000010(n+1))*A051027(n+1)` -/
def P1194030209819143828.Spec : Prop :=
  ∀ n, P1194030209819143828.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P9582569838669008806

`(A249353(n+1)-A000010(n+1))*A000203(n+1)`
-/

namespace A164533.P9582569838669008806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A249353 (n + 1) - A000010 (n + 1)) * A000203 (n + 1)

end

end A164533.P9582569838669008806

namespace A164533

/-- `(A249353(n+1)-A000010(n+1))*A000203(n+1)` -/
def P9582569838669008806.Spec : Prop :=
  ∀ n, P9582569838669008806.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P16430213172703689513

`A000203(n+1)*A318059(n+1)*A353751(n+1)`
-/

namespace A164533.P16430213172703689513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A318059 (n + 1) * A353751 (n + 1)

end

end A164533.P16430213172703689513

namespace A164533

/-- `A000203(n+1)*A318059(n+1)*A353751(n+1)` -/
def P16430213172703689513.Spec : Prop :=
  ∀ n, P16430213172703689513.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P8178504700605927151

`A000203(n+1)*A353804(n+1)*A353805(n+1)`
-/

namespace A164533.P8178504700605927151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A353804 (n + 1) * A353805 (n + 1)

end

end A164533.P8178504700605927151

namespace A164533

/-- `A000203(n+1)*A353804(n+1)*A353805(n+1)` -/
def P8178504700605927151.Spec : Prop :=
  ∀ n, P8178504700605927151.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P2501138288176736604

`A051027(n+1)*A351568(n+1)*A351569(n+1)`
-/

namespace A164533.P2501138288176736604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) * A351568 (n + 1) * A351569 (n + 1)

end

end A164533.P2501138288176736604

namespace A164533

/-- `A051027(n+1)*A351568(n+1)*A351569(n+1)` -/
def P2501138288176736604.Spec : Prop :=
  ∀ n, P2501138288176736604.a n = A164533 (n + 1)

end A164533

/-! ## A164533.P9647413297939435969

`A051027(n+1)*A353783(n+1)*A353784(n+1)`
-/

namespace A164533.P9647413297939435969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) * A353783 (n + 1) * A353784 (n + 1)

end

end A164533.P9647413297939435969

namespace A164533

/-- `A051027(n+1)*A353783(n+1)*A353784(n+1)` -/
def P9647413297939435969.Spec : Prop :=
  ∀ n, P9647413297939435969.a n = A164533 (n + 1)

end A164533

/-!
# A164534: (n-th isolated prime) -(-1)^(n-th isolated prime).

The programs for A164534, the canonical program `A164534.P11491469561322458796` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164534 has offset 1).

The definition of A164534 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164534.P11491469561322458796

`A007510(n+1)-(-1)^A007510(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A164534

/-- `A007510(n+1)-(-1)^A007510(n+1)` -/
def P11491469561322458796.Spec : Prop :=
  ∀ n, P11491469561322458796.a n = (A164534 (n + 1) : ℚ)

end A164534

/-! ## A164534.P16785148877895422297

`xor(1, A167277(n+1))+1`
-/

namespace A164534.P16785148877895422297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A167277 (n + 1)) + 1

end

end A164534.P16785148877895422297

namespace A164534

/-- `xor(1, A167277(n+1))+1` -/
def P16785148877895422297.Spec : Prop :=
  ∀ n, P16785148877895422297.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P14428588545129786118

`abs(xor(1, -A007510(n+1)))`
-/

namespace A164534.P14428588545129786118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A007510 (n + 1))|

end

end A164534.P14428588545129786118

namespace A164534

/-- `abs(xor(1, -A007510(n+1)))` -/
def P14428588545129786118.Spec : Prop :=
  ∀ n, P14428588545129786118.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P14791119970360920271

`A134797(gcd(n, lcm(n, a(n-1))))+1` with `a(0)=1`
-/

namespace A164534.P14791119970360920271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134797 (Nat.gcd n (Int.lcm (n : ℤ) (a (n - 1)))) + 1

end

end A164534.P14791119970360920271

namespace A164534

/-- `A134797(gcd(n, lcm(n, a(n-1))))+1` -/
def P14791119970360920271.Spec : Prop :=
  ∀ n, P14791119970360920271.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P3649606802184639203

`A055670(A176656(n+1))`
-/

namespace A164534.P3649606802184639203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A176656 (n + 1)).toNat

end

end A164534.P3649606802184639203

namespace A164534

/-- `A055670(A176656(n+1))` -/
def P3649606802184639203.Spec : Prop :=
  ∀ n, P3649606802184639203.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P744579683978549239

`A158388(n)+A007510(n+1)`
-/

namespace A164534.P744579683978549239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A007510 (n + 1)

end

end A164534.P744579683978549239

namespace A164534

/-- `A158388(n)+A007510(n+1)` -/
def P744579683978549239.Spec : Prop :=
  ∀ n, P744579683978549239.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P17426849082915437632

`A167397(n+1)+A114637(n+1)`
-/

namespace A164534.P17426849082915437632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167397 (n + 1) + A114637 (n + 1)

end

end A164534.P17426849082915437632

namespace A164534

/-- `A167397(n+1)+A114637(n+1)` -/
def P17426849082915437632.Spec : Prop :=
  ∀ n, P17426849082915437632.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P9765625829373311328

`A007510(n+1)-A153881(n+1)`
-/

namespace A164534.P9765625829373311328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) - A153881 (n + 1)

end

end A164534.P9765625829373311328

namespace A164534

/-- `A007510(n+1)-A153881(n+1)` -/
def P9765625829373311328.Spec : Prop :=
  ∀ n, P9765625829373311328.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P17341357100375245987

`-xor(1, -p?[A167706(n+1)])`
-/

namespace A164534.P17341357100375245987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A164534.P17341357100375245987

namespace A164534

/-- `-xor(1, -p?[A167706(n+1)])` -/
def P17341357100375245987.Spec : Prop :=
  ∀ n, P17341357100375245987.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P253176755337055546

`-xor(1, -p?[A062729(n+1)])`
-/

namespace A164534.P253176755337055546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A164534.P253176755337055546

namespace A164534

/-- `-xor(1, -p?[A062729(n+1)])` -/
def P253176755337055546.Spec : Prop :=
  ∀ n, P253176755337055546.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P2852457098629699125

`A353416(A167278(n+1))`
-/

namespace A164534.P2852457098629699125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353416 (A167278 (n + 1)).toNat

end

end A164534.P2852457098629699125

namespace A164534

/-- `A353416(A167278(n+1))` -/
def P2852457098629699125.Spec : Prop :=
  ∀ n, P2852457098629699125.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P17120570065305871780

`A000593(A007510(n+1))`
-/

namespace A164534.P17120570065305871780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A007510 (n + 1)).toNat

end

end A164534.P17120570065305871780

namespace A164534

/-- `A000593(A007510(n+1))` -/
def P17120570065305871780.Spec : Prop :=
  ∀ n, P17120570065305871780.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P12982663909113280360

`A057544(A167277(n+1))`
-/

namespace A164534.P12982663909113280360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (A167277 (n + 1)).toNat

end

end A164534.P12982663909113280360

namespace A164534

/-- `A057544(A167277(n+1))` -/
def P12982663909113280360.Spec : Prop :=
  ∀ n, P12982663909113280360.a n = A164534 (n + 1)

end A164534

/-! ## A164534.P7833951107953035517

`A201560(2*A007510(n+1))`
-/

namespace A164534.P7833951107953035517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201560 (2 * A007510 (n + 1)).toNat

end

end A164534.P7833951107953035517

namespace A164534

/-- `A201560(2*A007510(n+1))` -/
def P7833951107953035517.Spec : Prop :=
  ∀ n, P7833951107953035517.a n = A164534 (n + 1)

end A164534

/-!
# A164535: a(n) = 8*a(n-1) - 14*a(n-2) for n > 1; a(0) = 3, a(1) = 20.

The programs for A164535, the canonical program `A164535.P10695555516728367104` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164535 has offset 0).

The definition of A164535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-14*a(n-2)` (program `A164535.P10695555516728367104`, by `A164535.P10695555516728367104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164535.P10695555516728367104

`8*a(n-1)-14*a(n-2)` with `a(0)=3, a(1)=20`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164535

/-- `8*a(n-1)-14*a(n-2)` -/
def P10695555516728367104.Spec : Prop :=
  ∀ n, P10695555516728367104.a n = A164535 n

theorem P10695555516728367104.correct : P10695555516728367104.Spec := by
  intro n
  simp only [A164535]

end A164535

/-! ## A164535.P5050159927412997818

`((3+4*sqrt(2))*(sqrt(2)+4)^n+(3-4*sqrt(2))*(4-sqrt(2))^n)/2`
-/

namespace A164535.P5050159927412997818
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 4 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 4) ^ n + (3 - 4 * Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164535.P5050159927412997818

namespace A164535

/-- `((3+4*sqrt(2))*(sqrt(2)+4)^n+(3-4*sqrt(2))*(4-sqrt(2))^n)/2` -/
def P5050159927412997818.Spec : Prop :=
  ∀ n, P5050159927412997818.a n = (A164535 n : ℝ)

end A164535

/-! ## A164535.P13493619928817869616

`A164300(n)+2*A083879(n)`
-/

namespace A164535.P13493619928817869616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164300 n + 2 * A083879 n

end

end A164535.P13493619928817869616

namespace A164535

/-- `A164300(n)+2*A083879(n)` -/
def P13493619928817869616.Spec : Prop :=
  ∀ n, P13493619928817869616.a n = A164535 n

end A164535

/-! ## A164535.P9796875612860976807

`A163350(n)+2*A164072(n)`
-/

namespace A164535.P9796875612860976807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n + 2 * A164072 n

end

end A164535.P9796875612860976807

namespace A164535

/-- `A163350(n)+2*A164072(n)` -/
def P9796875612860976807.Spec : Prop :=
  ∀ n, P9796875612860976807.a n = A164535 n

end A164535

/-! ## A164535.P5906855061766492375

`A163604(n)+4*A081180(n)`
-/

namespace A164535.P5906855061766492375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163604 n + 4 * A081180 n

end

end A164535.P5906855061766492375

namespace A164535

/-- `A163604(n)+4*A081180(n)` -/
def P5906855061766492375.Spec : Prop :=
  ∀ n, P5906855061766492375.a n = A164535 n

end A164535

/-! ## A164535.P13680306336789664323

`3*A164072(n)-A081180(n)`
-/

namespace A164535.P13680306336789664323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A164072 n - A081180 n

end

end A164535.P13680306336789664323

namespace A164535

/-- `3*A164072(n)-A081180(n)` -/
def P13680306336789664323.Spec : Prop :=
  ∀ n, P13680306336789664323.a n = A164535 n

end A164535

/-!
# A164536: a(n) = 10*a(n-1) - 23*a(n-2) for n > 1; a(0) = 3, a(1) = 23.

The programs for A164536, the canonical program `A164536.P17129536928590548975` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164536 has offset 0).

The definition of A164536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-23*a(n-2)` (program `A164536.P17129536928590548975`, by `A164536.P17129536928590548975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164536.P17129536928590548975

`10*a(n-1)-23*a(n-2)` with `a(0)=3, a(1)=23`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164536

/-- `10*a(n-1)-23*a(n-2)` -/
def P17129536928590548975.Spec : Prop :=
  ∀ n, P17129536928590548975.a n = A164536 n

theorem P17129536928590548975.correct : P17129536928590548975.Spec := by
  intro n
  simp only [A164536]

end A164536

/-! ## A164536.P10437050983760481194

`((3+4*sqrt(2))*(5+sqrt(2))^n+(3-4*sqrt(2))*(5-sqrt(2))^n)/2`
-/

namespace A164536.P10437050983760481194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 4 * Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (3 - 4 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164536.P10437050983760481194

namespace A164536

/-- `((3+4*sqrt(2))*(5+sqrt(2))^n+(3-4*sqrt(2))*(5-sqrt(2))^n)/2` -/
def P10437050983760481194.Spec : Prop :=
  ∀ n, P10437050983760481194.a n = (A164536 n : ℝ)

end A164536

/-! ## A164536.P12101676924753744617

`A164035(n)+∑[A163349(n)]`
-/

namespace A164536.P12101676924753744617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164536.P12101676924753744617

namespace A164536

/-- `A164035(n)+∑[A163349(n)]` -/
def P12101676924753744617.Spec : Prop :=
  ∀ n, P12101676924753744617.a n = A164536 n

end A164536

/-! ## A164536.P14602915704589297454

`A164035(n)+A081182(n+1)`
-/

namespace A164536.P14602915704589297454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n + A081182 (n + 1)

end

end A164536.P14602915704589297454

namespace A164536

/-- `A164035(n)+A081182(n+1)` -/
def P14602915704589297454.Spec : Prop :=
  ∀ n, P14602915704589297454.a n = A164536 n

end A164536

/-! ## A164536.P5353689427551222107

`A163349(n)+2*A163346(n)`
-/

namespace A164536.P5353689427551222107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163349 n + 2 * A163346 n

end

end A164536.P5353689427551222107

namespace A164536

/-- `A163349(n)+2*A163346(n)` -/
def P5353689427551222107.Spec : Prop :=
  ∀ n, P5353689427551222107.a n = A164536 n

end A164536

/-! ## A164536.P7075813282961626839

`A163346(n)+2*A164031(n)`
-/

namespace A164536.P7075813282961626839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n + 2 * A164031 n

end

end A164536.P7075813282961626839

namespace A164536

/-- `A163346(n)+2*A164031(n)` -/
def P7075813282961626839.Spec : Prop :=
  ∀ n, P7075813282961626839.a n = A164536 n

end A164536

/-! ## A164536.P3963926179307996931

`A163605(n)+4*A081182(n)`
-/

namespace A164536.P3963926179307996931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n + 4 * A081182 n

end

end A164536.P3963926179307996931

namespace A164536

/-- `A163605(n)+4*A081182(n)` -/
def P3963926179307996931.Spec : Prop :=
  ∀ n, P3963926179307996931.a n = A164536 n

end A164536

/-! ## A164536.P11935747679872831121

`3*A164031(n)-A081182(n)`
-/

namespace A164536.P11935747679872831121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A164031 n - A081182 n

end

end A164536.P11935747679872831121

namespace A164536

/-- `3*A164031(n)-A081182(n)` -/
def P11935747679872831121.Spec : Prop :=
  ∀ n, P11935747679872831121.a n = A164536 n

end A164536

/-! ## A164536.P5089738343796334091

`Δ[A081182(n)]+2*A163346(n)`
-/

namespace A164536.P5089738343796334091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A163346 n

end

end A164536.P5089738343796334091

namespace A164536

/-- `Δ[A081182(n)]+2*A163346(n)` -/
def P5089738343796334091.Spec : Prop :=
  ∀ n, P5089738343796334091.a n = A164536 n

end A164536

/-! ## A164536.P16534159460584851686

`A081182(n+1)+A163346(n)+A161734(n)`
-/

namespace A164536.P16534159460584851686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 (n + 1) + (A163346 n + A161734 n)

end

end A164536.P16534159460584851686

namespace A164536

/-- `A081182(n+1)+A163346(n)+A161734(n)` -/
def P16534159460584851686.Spec : Prop :=
  ∀ n, P16534159460584851686.a n = A164536 n

end A164536

/-!
# A164537: a(n) = 8*a(n-1) - 14*a(n-2) for n > 1; a(0) = 5, a(1) = 28.

The programs for A164537, the canonical program `A164537.P15081399012587769264` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164537 has offset 0).

The definition of A164537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-14*a(n-2)` (program `A164537.P15081399012587769264`, by `A164537.P15081399012587769264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164537.P15081399012587769264

`8*a(n-1)-14*a(n-2)` with `a(0)=5, a(1)=28`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164537

/-- `8*a(n-1)-14*a(n-2)` -/
def P15081399012587769264.Spec : Prop :=
  ∀ n, P15081399012587769264.a n = A164537 n

theorem P15081399012587769264.correct : P15081399012587769264.Spec := by
  intro n
  simp only [A164537]

end A164537

/-! ## A164537.P7545437909310380813

`Δ[A163350(n)]`
-/

namespace A164537.P7545437909310380813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164537.P7545437909310380813

namespace A164537

/-- `Δ[A163350(n)]` -/
def P7545437909310380813.Spec : Prop :=
  ∀ n, P7545437909310380813.a n = A164537 n

end A164537

/-! ## A164537.P1973675893938337303

`Δ[A161731(n)+A081180(n)]`
-/

namespace A164537.P1973675893938337303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n + A081180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164537.P1973675893938337303

namespace A164537

/-- `Δ[A161731(n)+A081180(n)]` -/
def P1973675893938337303.Spec : Prop :=
  ∀ n, P1973675893938337303.a n = A164537 n

end A164537

/-! ## A164537.P4926073585650648833

`A164072(n)+Δ[A161731(n)]`
-/

namespace A164537.P4926073585650648833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n + (f1 (n + 1) - f1 n)

end

end A164537.P4926073585650648833

namespace A164537

/-- `A164072(n)+Δ[A161731(n)]` -/
def P4926073585650648833.Spec : Prop :=
  ∀ n, P4926073585650648833.a n = A164537 n

end A164537

/-! ## A164537.P1417042727038139444

`Δ[A164072(n)-A081180(n)]`
-/

namespace A164537.P1417042727038139444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n - A081180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164537.P1417042727038139444

namespace A164537

/-- `Δ[A164072(n)-A081180(n)]` -/
def P1417042727038139444.Spec : Prop :=
  ∀ n, P1417042727038139444.a n = A164537 n

end A164537

/-! ## A164537.P14042698331652016764

`A163350(n+1)-A163350(n)`
-/

namespace A164537.P14042698331652016764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 (n + 1) - A163350 n

end

end A164537.P14042698331652016764

namespace A164537

/-- `A163350(n+1)-A163350(n)` -/
def P14042698331652016764.Spec : Prop :=
  ∀ n, P14042698331652016764.a n = A164537 n

end A164537

/-! ## A164537.P7589866770908048286

`A161731(n+1)+2*A081180(n)`
-/

namespace A164537.P7589866770908048286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 (n + 1) + 2 * A081180 n

end

end A164537.P7589866770908048286

namespace A164537

/-- `A161731(n+1)+2*A081180(n)` -/
def P7589866770908048286.Spec : Prop :=
  ∀ n, P7589866770908048286.a n = A164537 n

end A164537

/-! ## A164537.P6278932850519500740

`A164072(n+1)-2*A164072(n)`
-/

namespace A164537.P6278932850519500740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 (n + 1) - 2 * A164072 n

end

end A164537.P6278932850519500740

namespace A164537

/-- `A164072(n+1)-2*A164072(n)` -/
def P6278932850519500740.Spec : Prop :=
  ∀ n, P6278932850519500740.a n = A164537 n

end A164537

/-! ## A164537.P18056592421025357226

`((5+4*sqrt(2))*(sqrt(2)+4)^n+(5-4*sqrt(2))*(4-sqrt(2))^n)/2`
-/

namespace A164537.P18056592421025357226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 4 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 4) ^ n + (5 - 4 * Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164537.P18056592421025357226

namespace A164537

/-- `((5+4*sqrt(2))*(sqrt(2)+4)^n+(5-4*sqrt(2))*(4-sqrt(2))^n)/2` -/
def P18056592421025357226.Spec : Prop :=
  ∀ n, P18056592421025357226.a n = (A164537 n : ℝ)

end A164537

/-! ## A164537.P2517463991782872030

`Δ[(A164034(n)+A081180(n))/2]`
-/

namespace A164537.P2517463991782872030
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164034 n + A081180 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164537.P2517463991782872030

namespace A164537

/-- `Δ[(A164034(n)+A081180(n))/2]` -/
def P2517463991782872030.Spec : Prop :=
  ∀ n, P2517463991782872030.a n = (A164537 n : ℚ)

end A164537

/-!
# A164538: a(n) = 10*a(n-1) - 23*a(n-2) for n > 1; a(0) = 5, a(1) = 33.

The programs for A164538, the canonical program `A164538.P11860168440039266775` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164538 has offset 0).

The definition of A164538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-23*a(n-2)` (program `A164538.P11860168440039266775`, by `A164538.P11860168440039266775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164538.P11860168440039266775

`10*a(n-1)-23*a(n-2)` with `a(0)=5, a(1)=33`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164538

/-- `10*a(n-1)-23*a(n-2)` -/
def P11860168440039266775.Spec : Prop :=
  ∀ n, P11860168440039266775.a n = A164538 n

theorem P11860168440039266775.correct : P11860168440039266775.Spec := by
  intro n
  simp only [A164538]

end A164538

/-! ## A164538.P14824843373175532848

`((5+4*sqrt(2))*(5+sqrt(2))^n+(5-4*sqrt(2))*(5-sqrt(2))^n)/2`
-/

namespace A164538.P14824843373175532848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 4 * Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (5 - 4 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164538.P14824843373175532848

namespace A164538

/-- `((5+4*sqrt(2))*(5+sqrt(2))^n+(5-4*sqrt(2))*(5-sqrt(2))^n)/2` -/
def P14824843373175532848.Spec : Prop :=
  ∀ n, P14824843373175532848.a n = (A164538 n : ℝ)

end A164538

/-! ## A164538.P18283011601264990588

`Δ[A163346(n)]-A163346(n)`
-/

namespace A164538.P18283011601264990588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163346 n

end

end A164538.P18283011601264990588

namespace A164538

/-- `Δ[A163346(n)]-A163346(n)` -/
def P18283011601264990588.Spec : Prop :=
  ∀ n, P18283011601264990588.a n = A164538 n

end A164538

/-! ## A164538.P14049436074429246965

`A163605(n)+2*A163346(n)`
-/

namespace A164538.P14049436074429246965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n + 2 * A163346 n

end

end A164538.P14049436074429246965

namespace A164538

/-- `A163605(n)+2*A163346(n)` -/
def P14049436074429246965.Spec : Prop :=
  ∀ n, P14049436074429246965.a n = A164538 n

end A164538

/-! ## A164538.P7236508926304052312

`A163346(n)+2*A164035(n)`
-/

namespace A164538.P7236508926304052312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n + 2 * A164035 n

end

end A164538.P7236508926304052312

namespace A164538

/-- `A163346(n)+2*A164035(n)` -/
def P7236508926304052312.Spec : Prop :=
  ∀ n, P7236508926304052312.a n = A164538 n

end A164538

/-! ## A164538.P12099448216948429425

`A163611(n)+4*A081182(n)`
-/

namespace A164538.P12099448216948429425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163611 n + 4 * A081182 n

end

end A164538.P12099448216948429425

namespace A164538

/-- `A163611(n)+4*A081182(n)` -/
def P12099448216948429425.Spec : Prop :=
  ∀ n, P12099448216948429425.a n = A164538 n

end A164538

/-! ## A164538.P4838050419428007409

`3*A164035(n)-A161734(n)`
-/

namespace A164538.P4838050419428007409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A164035 n - A161734 n

end

end A164538.P4838050419428007409

namespace A164538

/-- `3*A164035(n)-A161734(n)` -/
def P4838050419428007409.Spec : Prop :=
  ∀ n, P4838050419428007409.a n = A164538 n

end A164538

/-! ## A164538.P2732593013180165489

`4*A164035(n)-A163605(n)`
-/

namespace A164538.P2732593013180165489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A164035 n - A163605 n

end

end A164538.P2732593013180165489

namespace A164538

/-- `4*A164035(n)-A163605(n)` -/
def P2732593013180165489.Spec : Prop :=
  ∀ n, P2732593013180165489.a n = A164538 n

end A164538

/-! ## A164538.P1358832629164532987

`Δ[A164031(n)]-2*A164031(n)`
-/

namespace A164538.P1358832629164532987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A164031 n

end

end A164538.P1358832629164532987

namespace A164538

/-- `Δ[A164031(n)]-2*A164031(n)` -/
def P1358832629164532987.Spec : Prop :=
  ∀ n, P1358832629164532987.a n = A164538 n

end A164538

/-! ## A164538.P12965108769635480383

`A163346(n+1)-2*A163346(n)`
-/

namespace A164538.P12965108769635480383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 (n + 1) - 2 * A163346 n

end

end A164538.P12965108769635480383

namespace A164538

/-- `A163346(n+1)-2*A163346(n)` -/
def P12965108769635480383.Spec : Prop :=
  ∀ n, P12965108769635480383.a n = A164538 n

end A164538

/-! ## A164538.P17282096214089346475

`A081182(n)+A164035(n)+A163605(n)`
-/

namespace A164538.P17282096214089346475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n + (A164035 n + A163605 n)

end

end A164538.P17282096214089346475

namespace A164538

/-- `A081182(n)+A164035(n)+A163605(n)` -/
def P17282096214089346475.Spec : Prop :=
  ∀ n, P17282096214089346475.a n = A164538 n

end A164538

/-!
# A164539: a(n) = 2*a(n-1) + 7*a(n-2) for n > 1; a(0) = 1, a(1) = 13.

The programs for A164539, the canonical program `A164539.P13739282953394674317` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164539 has offset 0).

The definition of A164539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+7*a(n-2)` (program `A164539.P13739282953394674317`, by `A164539.P13739282953394674317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164539.P13739282953394674317

`2*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164539

/-- `2*a(n-1)+7*a(n-2)` -/
def P13739282953394674317.Spec : Prop :=
  ∀ n, (P13739282953394674317.a n : ℤ) = A164539 n

theorem P13739282953394674317.correct : P13739282953394674317.Spec := by
  intro n
  simp only [A164539]

end A164539

/-! ## A164539.P7158219444495484991

`11*A015519(n)+A015519(n+1)`
-/

namespace A164539.P7158219444495484991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A015519 n + A015519 (n + 1)

end

end A164539.P7158219444495484991

namespace A164539

/-- `11*A015519(n)+A015519(n+1)` -/
def P7158219444495484991.Spec : Prop :=
  ∀ n, P7158219444495484991.a n = A164539 n

end A164539

/-! ## A164539.P8505892734808977455

`A291001(n)+A096980(n)`
-/

namespace A164539.P8505892734808977455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291001 n + A096980 n

end

end A164539.P8505892734808977455

namespace A164539

/-- `A291001(n)+A096980(n)` -/
def P8505892734808977455.Spec : Prop :=
  ∀ n, P8505892734808977455.a n = A164539 n

end A164539

/-! ## A164539.P16756788653473570241

`A083100(n)+Δ[A084136(n)]`
-/

namespace A164539.P16756788653473570241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n + (f1 (n + 1) - f1 n)

end

end A164539.P16756788653473570241

namespace A164539

/-- `A083100(n)+Δ[A084136(n)]` -/
def P16756788653473570241.Spec : Prop :=
  ∀ n, P16756788653473570241.a n = A164539 n

end A164539

/-! ## A164539.P12663355529179443439

`A096980(n)+Δ[A084058(n)]`
-/

namespace A164539.P12663355529179443439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096980 n + (f1 (n + 1) - f1 n)

end

end A164539.P12663355529179443439

namespace A164539

/-- `A096980(n)+Δ[A084058(n)]` -/
def P12663355529179443439.Spec : Prop :=
  ∀ n, P12663355529179443439.a n = A164539 n

end A164539

/-! ## A164539.P1894638052589342953

`A164602(n)-Δ[A084136(n)]`
-/

namespace A164539.P1894638052589342953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164602 n - (f1 (n + 1) - f1 n)

end

end A164539.P1894638052589342953

namespace A164539

/-- `A164602(n)-Δ[A084136(n)]` -/
def P1894638052589342953.Spec : Prop :=
  ∀ n, P1894638052589342953.a n = A164539 n

end A164539

/-! ## A164539.P3266571793551810562

`A083100(n)+2*A305492(n)`
-/

namespace A164539.P3266571793551810562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n + 2 * A305492 n

end

end A164539.P3266571793551810562

namespace A164539

/-- `A083100(n)+2*A305492(n)` -/
def P3266571793551810562.Spec : Prop :=
  ∀ n, P3266571793551810562.a n = A164539 n

end A164539

/-! ## A164539.P5371663442433564238

`(A164602(n)+A083100(n))/2`
-/

namespace A164539.P5371663442433564238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164602 n + A083100 n : ℚ) / 2

end

end A164539.P5371663442433564238

namespace A164539

/-- `(A164602(n)+A083100(n))/2` -/
def P5371663442433564238.Spec : Prop :=
  ∀ n, P5371663442433564238.a n = (A164539 n : ℚ)

end A164539

/-! ## A164539.P17438793577726369454

`A083100(n)+A291001(n)/2`
-/

namespace A164539.P17438793577726369454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083100 n : ℚ) + (A291001 n : ℚ) / 2

end

end A164539.P17438793577726369454

namespace A164539

/-- `A083100(n)+A291001(n)/2` -/
def P17438793577726369454.Spec : Prop :=
  ∀ n, P17438793577726369454.a n = (A164539 n : ℚ)

end A164539

/-! ## A164539.P16618930588123234754

`A083100(n)+4*A015519(n)`
-/

namespace A164539.P16618930588123234754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n + 4 * A015519 n

end

end A164539.P16618930588123234754

namespace A164539

/-- `A083100(n)+4*A015519(n)` -/
def P16618930588123234754.Spec : Prop :=
  ∀ n, P16618930588123234754.a n = A164539 n

end A164539

/-! ## A164539.P764748553515373424

`A164602(n)-A291001(n)/2`
-/

namespace A164539.P764748553515373424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164602 n : ℚ) - (A291001 n : ℚ) / 2

end

end A164539.P764748553515373424

namespace A164539

/-- `A164602(n)-A291001(n)/2` -/
def P764748553515373424.Spec : Prop :=
  ∀ n, P764748553515373424.a n = (A164539 n : ℚ)

end A164539

/-! ## A164539.P6140491735831530810

`Δ[A084136(n)+A015519(n+1)]`
-/

namespace A164539.P6140491735831530810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 n + A015519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164539.P6140491735831530810

namespace A164539

/-- `Δ[A084136(n)+A015519(n+1)]` -/
def P6140491735831530810.Spec : Prop :=
  ∀ n, P6140491735831530810.a n = A164539 n

end A164539

/-! ## A164539.P9530180391481285853

`A084058(n+1)+Δ[A084136(n)]`
-/

namespace A164539.P9530180391481285853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (n + 1) + (f1 (n + 1) - f1 n)

end

end A164539.P9530180391481285853

namespace A164539

/-- `A084058(n+1)+Δ[A084136(n)]` -/
def P9530180391481285853.Spec : Prop :=
  ∀ n, P9530180391481285853.a n = A164539 n

end A164539

/-! ## A164539.P10876843291650538880

`A083100(n)+Δ[A084058(n)/2]`
-/

namespace A164539.P10876843291650538880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084058 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083100 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A164539.P10876843291650538880

namespace A164539

/-- `A083100(n)+Δ[A084058(n)/2]` -/
def P10876843291650538880.Spec : Prop :=
  ∀ n, P10876843291650538880.a n = (A164539 n : ℚ)

end A164539

/-! ## A164539.P6457866894156491530

`A084136(n+1)+A083100(n)-A084136(n)`
-/

namespace A164539.P6457866894156491530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 (n + 1) + (A083100 n - A084136 n)

end

end A164539.P6457866894156491530

namespace A164539

/-- `A084136(n+1)+A083100(n)-A084136(n)` -/
def P6457866894156491530.Spec : Prop :=
  ∀ n, P6457866894156491530.a n = A164539 n

end A164539

/-! ## A164539.P1810366450592287353

`A084058(n+1)+A084136(n+1)-A084136(n)`
-/

namespace A164539.P1810366450592287353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (n + 1) + (A084136 (n + 1) - A084136 n)

end

end A164539.P1810366450592287353

namespace A164539

/-- `A084058(n+1)+A084136(n+1)-A084136(n)` -/
def P1810366450592287353.Spec : Prop :=
  ∀ n, P1810366450592287353.a n = A164539 n

end A164539

/-!
# A164540: a(n) = 4*a(n-1) + 4*a(n-2) for n > 1; a(0) = 1, a(1) = 14.

The programs for A164540, the canonical program `A164540.P1506823426565243310` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164540 has offset 0).

The definition of A164540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+4*a(n-2)` (program `A164540.P1506823426565243310`, by `A164540.P1506823426565243310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164540.P1506823426565243310

`4*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164540

/-- `4*a(n-1)+4*a(n-2)` -/
def P1506823426565243310.Spec : Prop :=
  ∀ n, (P1506823426565243310.a n : ℤ) = A164540 n

theorem P1506823426565243310.correct : P1506823426565243310.Spec := by
  intro n
  simp only [A164540]

end A164540

/-! ## A164540.P8644964574220493687

`4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=14`
-/

namespace A164540.P8644964574220493687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A164540.P8644964574220493687

namespace A164540

/-- `4*(a(n-1)+a(n-2))` -/
def P8644964574220493687.Spec : Prop :=
  ∀ n, (P8644964574220493687.a n : ℤ) = A164540 n

theorem P8644964574220493687.correct : P8644964574220493687.Spec := by
  intro n
  simp only [A164540, Nat.add_sub_cancel, A164540.P8644964574220493687.a, A164540.P1506823426565243310.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164540

/-! ## A164540.P8474454406478165819

`4-4*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=14`
-/

namespace A164540.P8474454406478165819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  4 - 4 * (1 - a (n - 1) - a (n - 2))

end

end A164540.P8474454406478165819

namespace A164540

/-- `4-4*(1-a(n-1)-a(n-2))` -/
def P8474454406478165819.Spec : Prop :=
  ∀ n, P8474454406478165819.a n = A164540 n

end A164540

/-! ## A164540.P1254175095412082174

`2^n*A048694(n)`
-/

namespace A164540.P1254175095412082174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048694 n

end

end A164540.P1254175095412082174

namespace A164540

/-- `2^n*A048694(n)` -/
def P1254175095412082174.Spec : Prop :=
  ∀ n, P1254175095412082174.a n = A164540 n

end A164540

/-! ## A164540.P18258692791863323233

`lcm(A000079(n), A048694(n))`
-/

namespace A164540.P18258692791863323233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A048694 n)

end

end A164540.P18258692791863323233

namespace A164540

/-- `lcm(A000079(n), A048694(n))` -/
def P18258692791863323233.Spec : Prop :=
  ∀ n, (P18258692791863323233.a n : ℤ) = A164540 n

end A164540

/-! ## A164540.P6782052955775111007

`A106568(n)+Δ[A084128(n)]`
-/

namespace A164540.P6782052955775111007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106568 n + (f1 (n + 1) - f1 n)

end

end A164540.P6782052955775111007

namespace A164540

/-- `A106568(n)+Δ[A084128(n)]` -/
def P6782052955775111007.Spec : Prop :=
  ∀ n, P6782052955775111007.a n = A164540 n

end A164540

/-! ## A164540.P16773897248543981724

`abs(Δ[A000051(n)]*A048694(n))`
-/

namespace A164540.P16773897248543981724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A048694 n|

end

end A164540.P16773897248543981724

namespace A164540

/-- `abs(Δ[A000051(n)]*A048694(n))` -/
def P16773897248543981724.Spec : Prop :=
  ∀ n, P16773897248543981724.a n = A164540 n

end A164540

/-! ## A164540.P4913597086020401893

`Δ[A084128(n)+∑[A094013(n)]]`
-/

namespace A164540.P4913597086020401893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164540.P4913597086020401893

namespace A164540

/-- `Δ[A084128(n)+∑[A094013(n)]]` -/
def P4913597086020401893.Spec : Prop :=
  ∀ n, P4913597086020401893.a n = A164540 n

end A164540

/-! ## A164540.P4247152413461540764

`A094013(n+1)+Δ[A084128(n)]`
-/

namespace A164540.P4247152413461540764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094013 (n + 1) + (f1 (n + 1) - f1 n)

end

end A164540.P4247152413461540764

namespace A164540

/-- `A094013(n+1)+Δ[A084128(n)]` -/
def P4247152413461540764.Spec : Prop :=
  ∀ n, P4247152413461540764.a n = A164540 n

end A164540

/-! ## A164540.P15211832079736093827

`A048694(n)*A163864(2*n+1)`
-/

namespace A164540.P15211832079736093827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 n * A163864 (2 * n + 1)

end

end A164540.P15211832079736093827

namespace A164540

/-- `A048694(n)*A163864(2*n+1)` -/
def P15211832079736093827.Spec : Prop :=
  ∀ n, P15211832079736093827.a n = A164540 n

end A164540

/-! ## A164540.P732613933569738177

`A084128(n+1)+A094013(n+1)-A084128(n)`
-/

namespace A164540.P732613933569738177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 (n + 1) + (A094013 (n + 1) - A084128 n)

end

end A164540.P732613933569738177

namespace A164540

/-- `A084128(n+1)+A094013(n+1)-A084128(n)` -/
def P732613933569738177.Spec : Prop :=
  ∀ n, P732613933569738177.a n = A164540 n

end A164540

/-! ## A164540.P17683767499848780078

`A048694(n)*A054582(A000217(n))`
-/

namespace A164540.P17683767499848780078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 n * A054582 (A000217 n).toNat

end

end A164540.P17683767499848780078

namespace A164540

/-- `A048694(n)*A054582(A000217(n))` -/
def P17683767499848780078.Spec : Prop :=
  ∀ n, P17683767499848780078.a n = A164540 n

end A164540

/-!
# A164541: a(n) = 6*a(n-1) - a(n-2) for n > 1; a(0) = 1, a(1) = 15.

The programs for A164541, the canonical program `A164541.P4935771113483653369` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164541 has offset 0).

The definition of A164541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A164541.P4935771113483653369`, by `A164541.P4935771113483653369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164541.P4935771113483653369

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164541

/-- `6*a(n-1)-a(n-2)` -/
def P4935771113483653369.Spec : Prop :=
  ∀ n, P4935771113483653369.a n = A164541 n

theorem P4935771113483653369.correct : P4935771113483653369.Spec := by
  intro n
  simp only [A164541]

end A164541

/-! ## A164541.P10413893010215462380

`A048694(2*n)`
-/

namespace A164541.P10413893010215462380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 (2 * n)

end

end A164541.P10413893010215462380

namespace A164541

/-- `A048694(2*n)` -/
def P10413893010215462380.Spec : Prop :=
  ∀ n, P10413893010215462380.a n = A164541 n

end A164541

/-! ## A164541.P6871197320892374050

`or(1, A048694(A005843(n)))`
-/

namespace A164541.P6871197320892374050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048694 (A005843 n).toNat)

end

end A164541.P6871197320892374050

namespace A164541

/-- `or(1, A048694(A005843(n)))` -/
def P6871197320892374050.Spec : Prop :=
  ∀ n, P6871197320892374050.a n = A164541 n

end A164541

/-! ## A164541.P3585392160810620298

`A054490(n)+A005319(n)`
-/

namespace A164541.P3585392160810620298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n + A005319 n

end

end A164541.P3585392160810620298

namespace A164541

/-- `A054490(n)+A005319(n)` -/
def P3585392160810620298.Spec : Prop :=
  ∀ n, P3585392160810620298.a n = A164541 n

end A164541

/-! ## A164541.P8290423116220111318

`A081554(n)+A002315(n)`
-/

namespace A164541.P8290423116220111318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 n + A002315 n

end

end A164541.P8290423116220111318

namespace A164541

/-- `A081554(n)+A002315(n)` -/
def P8290423116220111318.Spec : Prop :=
  ∀ n, P8290423116220111318.a n = A164541 n

end A164541

/-! ## A164541.P16254546439950669343

`A075848(n)+A038761(n)`
-/

namespace A164541.P16254546439950669343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 n + A038761 n

end

end A164541.P16254546439950669343

namespace A164541

/-- `A075848(n)+A038761(n)` -/
def P16254546439950669343.Spec : Prop :=
  ∀ n, P16254546439950669343.a n = A164541 n

end A164541

/-! ## A164541.P17267138219915017920

`A081554(n)+Δ[A001108(n)]`
-/

namespace A164541.P17267138219915017920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 n + (f1 (n + 1) - f1 n)

end

end A164541.P17267138219915017920

namespace A164541

/-- `A081554(n)+Δ[A001108(n)]` -/
def P17267138219915017920.Spec : Prop :=
  ∀ n, P17267138219915017920.a n = A164541 n

end A164541

/-! ## A164541.P2701876309779939208

`A002315(n)+2*A005319(n)`
-/

namespace A164541.P2701876309779939208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + 2 * A005319 n

end

end A164541.P2701876309779939208

namespace A164541

/-- `A002315(n)+2*A005319(n)` -/
def P2701876309779939208.Spec : Prop :=
  ∀ n, P2701876309779939208.a n = A164541 n

end A164541

/-! ## A164541.P12515724462542499422

`A054490(n)+2*A001542(n)`
-/

namespace A164541.P12515724462542499422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n + 2 * A001542 n

end

end A164541.P12515724462542499422

namespace A164541

/-- `A054490(n)+2*A001542(n)` -/
def P12515724462542499422.Spec : Prop :=
  ∀ n, P12515724462542499422.a n = A164541 n

end A164541

/-! ## A164541.P3596138813197775721

`A001541(n)+2*A075848(n)`
-/

namespace A164541.P3596138813197775721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + 2 * A075848 n

end

end A164541.P3596138813197775721

namespace A164541

/-- `A001541(n)+2*A075848(n)` -/
def P3596138813197775721.Spec : Prop :=
  ∀ n, P3596138813197775721.a n = A164541 n

end A164541

/-! ## A164541.P1448557735373787089

`A159582(2*n)+A081554(n)`
-/

namespace A164541.P1448557735373787089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159582 (2 * n) + A081554 n

end

end A164541.P1448557735373787089

namespace A164541

/-- `A159582(2*n)+A081554(n)` -/
def P1448557735373787089.Spec : Prop :=
  ∀ n, P1448557735373787089.a n = A164541 n

end A164541

/-! ## A164541.P6612201326999379541

`A054490(n)+A081554(n)/2`
-/

namespace A164541.P6612201326999379541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054490 n : ℚ) + (A081554 n : ℚ) / 2

end

end A164541.P6612201326999379541

namespace A164541

/-- `A054490(n)+A081554(n)/2` -/
def P6612201326999379541.Spec : Prop :=
  ∀ n, P6612201326999379541.a n = (A164541 n : ℚ)

end A164541

/-! ## A164541.P18249170859002342885

`A038761(n)+6*A001109(n)`
-/

namespace A164541.P18249170859002342885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n + 6 * A001109 n

end

end A164541.P18249170859002342885

namespace A164541

/-- `A038761(n)+6*A001109(n)` -/
def P18249170859002342885.Spec : Prop :=
  ∀ n, P18249170859002342885.a n = A164541 n

end A164541

/-! ## A164541.P17098520512685323555

`A002315(n)+8*A001109(n)`
-/

namespace A164541.P17098520512685323555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + 8 * A001109 n

end

end A164541.P17098520512685323555

namespace A164541

/-- `A002315(n)+8*A001109(n)` -/
def P17098520512685323555.Spec : Prop :=
  ∀ n, P17098520512685323555.a n = A164541 n

end A164541

/-! ## A164541.P10773987633106984754

`A001541(n)+12*A001109(n)`
-/

namespace A164541.P10773987633106984754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + 12 * A001109 n

end

end A164541.P10773987633106984754

namespace A164541

/-- `A001541(n)+12*A001109(n)` -/
def P10773987633106984754.Spec : Prop :=
  ∀ n, P10773987633106984754.a n = A164541 n

end A164541

/-! ## A164541.P7669287922256183135

`Δ[A001108(n)]+2*A005319(n)`
-/

namespace A164541.P7669287922256183135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A005319 n

end

end A164541.P7669287922256183135

namespace A164541

/-- `Δ[A001108(n)]+2*A005319(n)` -/
def P7669287922256183135.Spec : Prop :=
  ∀ n, P7669287922256183135.a n = A164541 n

end A164541

/-! ## A164541.P15780862358319177814

`A276602(n+1)+A001109(n+1)`
-/

namespace A164541.P15780862358319177814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276602 (n + 1) + A001109 (n + 1)

end

end A164541.P15780862358319177814

namespace A164541

/-- `A276602(n+1)+A001109(n+1)` -/
def P15780862358319177814.Spec : Prop :=
  ∀ n, P15780862358319177814.a n = A164541 n

end A164541

/-! ## A164541.P1778337005708973373

`A154141(2*n+1)-A001108(n)`
-/

namespace A164541.P1778337005708973373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (2 * n + 1) - A001108 n

end

end A164541.P1778337005708973373

namespace A164541

/-- `A154141(2*n+1)-A001108(n)` -/
def P1778337005708973373.Spec : Prop :=
  ∀ n, P1778337005708973373.a n = A164541 n

end A164541

/-! ## A164541.P8432106869010044267

`A048693(2*n)+A000129(2*n)`
-/

namespace A164541.P8432106869010044267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 (2 * n) + A000129 (2 * n)

end

end A164541.P8432106869010044267

namespace A164541

/-- `A048693(2*n)+A000129(2*n)` -/
def P8432106869010044267.Spec : Prop :=
  ∀ n, P8432106869010044267.a n = A164541 n

end A164541

/-!
# A164542: a(n) = 8*a(n-1) - 8*a(n-2) for n > 1; a(0) = 1, a(1) = 16.

The programs for A164542, the canonical program `A164542.P16918791776770416337` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164542 has offset 0).

The definition of A164542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-8*a(n-2)` (program `A164542.P16918791776770416337`, by `A164542.P16918791776770416337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164542.P16918791776770416337

`8*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164542

/-- `8*a(n-1)-8*a(n-2)` -/
def P16918791776770416337.Spec : Prop :=
  ∀ n, P16918791776770416337.a n = A164542 n

theorem P16918791776770416337.correct : P16918791776770416337.Spec := by
  intro n
  simp only [A164542]

end A164542

/-! ## A164542.P1103552828590078767

`8*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=16`
-/

namespace A164542.P1103552828590078767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16] fun n a =>
  8 * (a (n - 1) - a (n - 2))

end

end A164542.P1103552828590078767

namespace A164542

/-- `8*(a(n-1)-a(n-2))` -/
def P1103552828590078767.Spec : Prop :=
  ∀ n, P1103552828590078767.a n = A164542 n

theorem P1103552828590078767.correct : P1103552828590078767.Spec := by
  intro n
  simp only [A164542, Nat.add_sub_cancel, A164542.P1103552828590078767.a, A164542.P16918791776770416337.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164542

/-! ## A164542.P5064466205530046200

`2^n*A163613(n)`
-/

namespace A164542.P5064466205530046200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A163613 n

end

end A164542.P5064466205530046200

namespace A164542

/-- `2^n*A163613(n)` -/
def P5064466205530046200.Spec : Prop :=
  ∀ n, P5064466205530046200.a n = A164542 n

end A164542

/-! ## A164542.P3295258626433703600

`2*A164608(n)-A057084(n)`
-/

namespace A164542.P3295258626433703600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164608 n - A057084 n

end

end A164542.P3295258626433703600

namespace A164542

/-- `2*A164608(n)-A057084(n)` -/
def P3295258626433703600.Spec : Prop :=
  ∀ n, P3295258626433703600.a n = A164542 n

end A164542

/-! ## A164542.P9132329828580960362

`A163613(n)*A163864(2*n+1)`
-/

namespace A164542.P9132329828580960362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163613 n * A163864 (2 * n + 1)

end

end A164542.P9132329828580960362

namespace A164542

/-- `A163613(n)*A163864(2*n+1)` -/
def P9132329828580960362.Spec : Prop :=
  ∀ n, P9132329828580960362.a n = A164542 n

end A164542

/-! ## A164542.P11086689747044490269

`lcm(A000079(n)*A163613(n), A000079(n))`
-/

namespace A164542.P11086689747044490269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n * A163613 n) (A000079 n)

end

end A164542.P11086689747044490269

namespace A164542

/-- `lcm(A000079(n)*A163613(n), A000079(n))` -/
def P11086689747044490269.Spec : Prop :=
  ∀ n, (P11086689747044490269.a n : ℤ) = A164542 n

end A164542

/-!
# A164543: a(n) = 10*a(n-1) - 17*a(n-2) for n > 1; a(0) = 1, a(1) = 17.

The programs for A164543, the canonical program `A164543.P11838666359490832875` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164543 has offset 0).

The definition of A164543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-17*a(n-2)` (program `A164543.P11838666359490832875`, by `A164543.P11838666359490832875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164543.P11838666359490832875

`10*a(n-1)-17*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164543

/-- `10*a(n-1)-17*a(n-2)` -/
def P11838666359490832875.Spec : Prop :=
  ∀ n, P11838666359490832875.a n = A164543 n

theorem P11838666359490832875.correct : P11838666359490832875.Spec := by
  intro n
  simp only [A164543]

end A164543

/-! ## A164543.P9053213151238022905

`2*A164609(n)-A164588(n)`
-/

namespace A164543.P9053213151238022905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164609 n - A164588 n

end

end A164543.P9053213151238022905

namespace A164543

/-- `2*A164609(n)-A164588(n)` -/
def P9053213151238022905.Spec : Prop :=
  ∀ n, P9053213151238022905.a n = A164543 n

end A164543

/-! ## A164543.P5005342979438241256

`(A164609(n)+A164606(n))/2`
-/

namespace A164543.P5005342979438241256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164609 n + A164606 n : ℚ) / 2

end

end A164543.P5005342979438241256

namespace A164543

/-- `(A164609(n)+A164606(n))/2` -/
def P5005342979438241256.Spec : Prop :=
  ∀ n, P5005342979438241256.a n = (A164543 n : ℚ)

end A164543

/-! ## A164543.P13715997246978608198

`A164588(n)+A164606(n)-A164609(n)`
-/

namespace A164543.P13715997246978608198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164588 n + (A164606 n - A164609 n)

end

end A164543.P13715997246978608198

namespace A164543

/-- `A164588(n)+A164606(n)-A164609(n)` -/
def P13715997246978608198.Spec : Prop :=
  ∀ n, P13715997246978608198.a n = A164543 n

end A164543

/-! ## A164543.P4511504487600625696

`A164588(n+1)%Δ[A084131(n)]`
-/

namespace A164543.P4511504487600625696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164588 (n + 1)) (f1 (n + 1) - f1 n)

end

end A164543.P4511504487600625696

namespace A164543

/-- `A164588(n+1)%Δ[A084131(n)]` -/
def P4511504487600625696.Spec : Prop :=
  ∀ n, P4511504487600625696.a n = A164543 n

end A164543

/-!
# A164544: a(n) = 2*a(n-1) + 7*a(n-2) for n > 1; a(0) = 1, a(1) = 7.

The programs for A164544, the canonical program `A164544.P8915367214290170072` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164544 has offset 0).

The definition of A164544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+7*a(n-2)` (program `A164544.P8915367214290170072`, by `A164544.P8915367214290170072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164544.P8915367214290170072

`2*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164544

/-- `2*a(n-1)+7*a(n-2)` -/
def P8915367214290170072.Spec : Prop :=
  ∀ n, (P8915367214290170072.a n : ℤ) = A164544 n

theorem P8915367214290170072.correct : P8915367214290170072.Spec := by
  intro n
  simp only [A164544]

end A164544

/-! ## A164544.P3639831805113879895

`A305492(n)+A096980(n)`
-/

namespace A164544.P3639831805113879895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305492 n + A096980 n

end

end A164544.P3639831805113879895

namespace A164544

/-- `A305492(n)+A096980(n)` -/
def P3639831805113879895.Spec : Prop :=
  ∀ n, P3639831805113879895.a n = A164544 n

end A164544

/-! ## A164544.P13530560002025226258

`A083100(n)-A305492(n)`
-/

namespace A164544.P13530560002025226258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - A305492 n

end

end A164544.P13530560002025226258

namespace A164544

/-- `A083100(n)-A305492(n)` -/
def P13530560002025226258.Spec : Prop :=
  ∀ n, P13530560002025226258.a n = A164544 n

end A164544

/-! ## A164544.P9766938410159116133

`A084058(n+1)-A305492(n)`
-/

namespace A164544.P9766938410159116133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (n + 1) - A305492 n

end

end A164544.P9766938410159116133

namespace A164544

/-- `A084058(n+1)-A305492(n)` -/
def P9766938410159116133.Spec : Prop :=
  ∀ n, P9766938410159116133.a n = A164544 n

end A164544

/-! ## A164544.P13165801114850536907

`A096980(n)+2*A015519(n)`
-/

namespace A164544.P13165801114850536907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096980 n + 2 * A015519 n

end

end A164544.P13165801114850536907

namespace A164544

/-- `A096980(n)+2*A015519(n)` -/
def P13165801114850536907.Spec : Prop :=
  ∀ n, P13165801114850536907.a n = A164544 n

end A164544

/-! ## A164544.P17408864428937753171

`A083100(n)-2*A015519(n)`
-/

namespace A164544.P17408864428937753171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - 2 * A015519 n

end

end A164544.P17408864428937753171

namespace A164544

/-- `A083100(n)-2*A015519(n)` -/
def P17408864428937753171.Spec : Prop :=
  ∀ n, P17408864428937753171.a n = A164544 n

end A164544

/-! ## A164544.P14272402352507699683

`A083100(n)-Δ[A084136(n)/2]`
-/

namespace A164544.P14272402352507699683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084136 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083100 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A164544.P14272402352507699683

namespace A164544

/-- `A083100(n)-Δ[A084136(n)/2]` -/
def P14272402352507699683.Spec : Prop :=
  ∀ n, P14272402352507699683.a n = (A164544 n : ℚ)

end A164544

/-! ## A164544.P16475046815429901252

`A084058(n+1)-2*A015519(n)`
-/

namespace A164544.P16475046815429901252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (n + 1) - 2 * A015519 n

end

end A164544.P16475046815429901252

namespace A164544

/-- `A084058(n+1)-2*A015519(n)` -/
def P16475046815429901252.Spec : Prop :=
  ∀ n, P16475046815429901252.a n = A164544 n

end A164544

/-! ## A164544.P4854332429365883485

`A015519(n+1)+5*A015519(n)`
-/

namespace A164544.P4854332429365883485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1) + 5 * A015519 n

end

end A164544.P4854332429365883485

namespace A164544

/-- `A015519(n+1)+5*A015519(n)` -/
def P4854332429365883485.Spec : Prop :=
  ∀ n, P4854332429365883485.a n = A164544 n

end A164544

/-! ## A164544.P9594205571319847514

`A015519(n+2)-A164589(n)`
-/

namespace A164544.P9594205571319847514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 2) - A164589 n

end

end A164544.P9594205571319847514

namespace A164544

/-- `A015519(n+2)-A164589(n)` -/
def P9594205571319847514.Spec : Prop :=
  ∀ n, P9594205571319847514.a n = A164544 n

end A164544

/-!
# A164545: a(n) = 4*a(n-1) + 4*a(n-2) for n > 1; a(0) = 1, a(1) = 8.

The programs for A164545, the canonical program `A164545.P6720593660032335633` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164545 has offset 0).

The definition of A164545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+4*a(n-2)` (program `A164545.P6720593660032335633`, by `A164545.P6720593660032335633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164545.P6720593660032335633

`4*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164545

/-- `4*a(n-1)+4*a(n-2)` -/
def P6720593660032335633.Spec : Prop :=
  ∀ n, (P6720593660032335633.a n : ℤ) = A164545 n

theorem P6720593660032335633.correct : P6720593660032335633.Spec := by
  intro n
  simp only [A164545]

end A164545

/-! ## A164545.P9497788801335724655

`4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A164545.P9497788801335724655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A164545.P9497788801335724655

namespace A164545

/-- `4*(a(n-1)+a(n-2))` -/
def P9497788801335724655.Spec : Prop :=
  ∀ n, (P9497788801335724655.a n : ℤ) = A164545 n

theorem P9497788801335724655.correct : P9497788801335724655.Spec := by
  intro n
  simp only [A164545, Nat.add_sub_cancel, A164545.P9497788801335724655.a, A164545.P6720593660032335633.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164545

/-! ## A164545.P17007287417753292464

`4*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A164545.P17007287417753292464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A164545.P17007287417753292464

namespace A164545

/-- `4*(a(n-1)-ceil(-a(n-2)))` -/
def P17007287417753292464.Spec : Prop :=
  ∀ n, P17007287417753292464.a n = A164545 n

end A164545

/-! ## A164545.P17644963520583500437

`4-4*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A164545.P17644963520583500437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 - 4 * (1 - a (n - 1) - a (n - 2))

end

end A164545.P17644963520583500437

namespace A164545

/-- `4-4*(1-a(n-1)-a(n-2))` -/
def P17644963520583500437.Spec : Prop :=
  ∀ n, P17644963520583500437.a n = A164545 n

end A164545

/-! ## A164545.P16333968224265136907

`A189743(n+2)/4`
-/

namespace A164545.P16333968224265136907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189743 (n + 2) : ℚ) / 4

end

end A164545.P16333968224265136907

namespace A164545

/-- `A189743(n+2)/4` -/
def P16333968224265136907.Spec : Prop :=
  ∀ n, P16333968224265136907.a n = (A164545 n : ℚ)

end A164545

/-! ## A164545.P14401689009622407612

`2^n*A048654(n)`
-/

namespace A164545.P14401689009622407612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048654 n

end

end A164545.P14401689009622407612

namespace A164545

/-- `2^n*A048654(n)` -/
def P14401689009622407612.Spec : Prop :=
  ∀ n, P14401689009622407612.a n = A164545 n

end A164545

/-! ## A164545.P8881858791880627835

`2^n*Δ[A098790(n)]`
-/

namespace A164545.P8881858791880627835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A164545.P8881858791880627835

namespace A164545

/-- `2^n*Δ[A098790(n)]` -/
def P8881858791880627835.Spec : Prop :=
  ∀ n, P8881858791880627835.a n = A164545 n

end A164545

/-! ## A164545.P1775900585347392905

`A106568(n)+A057087(n)`
-/

namespace A164545.P1775900585347392905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106568 n + A057087 n

end

end A164545.P1775900585347392905

namespace A164545

/-- `A106568(n)+A057087(n)` -/
def P1775900585347392905.Spec : Prop :=
  ∀ n, P1775900585347392905.a n = A164545 n

end A164545

/-! ## A164545.P10377013201042785856

`∑[A135092(n)*A215928(n)]`
-/

namespace A164545.P10377013201042785856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135092 n * A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164545.P10377013201042785856

namespace A164545

/-- `∑[A135092(n)*A215928(n)]` -/
def P10377013201042785856.Spec : Prop :=
  ∀ n, P10377013201042785856.a n = A164545 n

end A164545

/-! ## A164545.P2229785922589702936

`Δ[A098790(n)]*A000079(n)`
-/

namespace A164545.P2229785922589702936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A164545.P2229785922589702936

namespace A164545

/-- `Δ[A098790(n)]*A000079(n)` -/
def P2229785922589702936.Spec : Prop :=
  ∀ n, P2229785922589702936.a n = A164545 n

end A164545

/-! ## A164545.P1678481239383553962

`A094013(n+1)+A057087(n)`
-/

namespace A164545.P1678481239383553962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094013 (n + 1) + A057087 n

end

end A164545.P1678481239383553962

namespace A164545

/-- `A094013(n+1)+A057087(n)` -/
def P1678481239383553962.Spec : Prop :=
  ∀ n, P1678481239383553962.a n = A164545 n

end A164545

/-! ## A164545.P2731296301438489791

`A084128(n+1)-A057087(n)`
-/

namespace A164545.P2731296301438489791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 (n + 1) - A057087 n

end

end A164545.P2731296301438489791

namespace A164545

/-- `A084128(n+1)-A057087(n)` -/
def P2731296301438489791.Spec : Prop :=
  ∀ n, P2731296301438489791.a n = A164545 n

end A164545

/-! ## A164545.P5297314819570452527

`2*A057087(n)-A094013(n)`
-/

namespace A164545.P5297314819570452527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057087 n - A094013 n

end

end A164545.P5297314819570452527

namespace A164545

/-- `2*A057087(n)-A094013(n)` -/
def P5297314819570452527.Spec : Prop :=
  ∀ n, P5297314819570452527.a n = A164545 n

end A164545

/-! ## A164545.P1327701693189123716

`2*A086347(n)-A084128(n)`
-/

namespace A164545.P1327701693189123716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086347 n - A084128 n

end

end A164545.P1327701693189123716

namespace A164545

/-- `2*A086347(n)-A084128(n)` -/
def P1327701693189123716.Spec : Prop :=
  ∀ n, P1327701693189123716.a n = A164545 n

end A164545

/-! ## A164545.P11818361267285293068

`A048654(n)*A077957(2*n)`
-/

namespace A164545.P11818361267285293068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n * A077957 (2 * n)

end

end A164545.P11818361267285293068

namespace A164545

/-- `A048654(n)*A077957(2*n)` -/
def P11818361267285293068.Spec : Prop :=
  ∀ n, P11818361267285293068.a n = A164545 n

end A164545

/-! ## A164545.P18119107663447247702

`A048654(n)*A143095(2*n)`
-/

namespace A164545.P18119107663447247702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n * A143095 (2 * n)

end

end A164545.P18119107663447247702

namespace A164545

/-- `A048654(n)*A143095(2*n)` -/
def P18119107663447247702.Spec : Prop :=
  ∀ n, P18119107663447247702.a n = A164545 n

end A164545

/-! ## A164545.P1002085700170437400

`Δ[A094013(n)]+2*A084128(n)`
-/

namespace A164545.P1002085700170437400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A084128 n

end

end A164545.P1002085700170437400

namespace A164545

/-- `Δ[A094013(n)]+2*A084128(n)` -/
def P1002085700170437400.Spec : Prop :=
  ∀ n, P1002085700170437400.a n = A164545 n

end A164545

/-! ## A164545.P13299388101157870547

`Δ[A084128(n)]-A106568(n)/2`
-/

namespace A164545.P13299388101157870547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A106568 n : ℚ) / 2

end

end A164545.P13299388101157870547

namespace A164545

/-- `Δ[A084128(n)]-A106568(n)/2` -/
def P13299388101157870547.Spec : Prop :=
  ∀ n, P13299388101157870547.a n = (A164545 n : ℚ)

end A164545

/-! ## A164545.P16236522029656691232

`A048654(n)*A074323(2*n+1)`
-/

namespace A164545.P16236522029656691232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n * A074323 (2 * n + 1)

end

end A164545.P16236522029656691232

namespace A164545

/-- `A048654(n)*A074323(2*n+1)` -/
def P16236522029656691232.Spec : Prop :=
  ∀ n, P16236522029656691232.a n = A164545 n

end A164545

/-!
# A164546: a(n) = 8*a(n-1) - 8*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A164546, the canonical program `A164546.P2220602566516100141` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164546 has offset 0).

The definition of A164546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-8*a(n-2)` (program `A164546.P2220602566516100141`, by `A164546.P2220602566516100141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164546.P2220602566516100141

`8*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164546

/-- `8*a(n-1)-8*a(n-2)` -/
def P2220602566516100141.Spec : Prop :=
  ∀ n, P2220602566516100141.a n = A164546 n

theorem P2220602566516100141.correct : P2220602566516100141.Spec := by
  intro n
  simp only [A164546]

end A164546

/-! ## A164546.P13267416539466622293

`8*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=10`
-/

namespace A164546.P13267416539466622293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  8 * (a (n - 1) - a (n - 2))

end

end A164546.P13267416539466622293

namespace A164546

/-- `8*(a(n-1)-a(n-2))` -/
def P13267416539466622293.Spec : Prop :=
  ∀ n, P13267416539466622293.a n = A164546 n

theorem P13267416539466622293.correct : P13267416539466622293.Spec := by
  intro n
  simp only [A164546, Nat.add_sub_cancel, A164546.P13267416539466622293.a, A164546.P2220602566516100141.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164546

/-! ## A164546.P6977182700747954089

`(a(n-1)-a(n-2))/(1/2)^3` with `a(0)=1, a(1)=10`
-/

namespace A164546.P6977182700747954089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 3

end

end A164546.P6977182700747954089

namespace A164546

/-- `(a(n-1)-a(n-2))/(1/2)^3` -/
def P6977182700747954089.Spec : Prop :=
  ∀ n, P6977182700747954089.a n = (A164546 n : ℚ)

end A164546

/-! ## A164546.P17501534413233862650

`2^n*A111567(n)`
-/

namespace A164546.P17501534413233862650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A111567 n

end

end A164546.P17501534413233862650

namespace A164546

/-- `2^n*A111567(n)` -/
def P17501534413233862650.Spec : Prop :=
  ∀ n, P17501534413233862650.a n = A164546 n

end A164546

/-! ## A164546.P16024358365168328020

`lcm(A094014(n), A111567(n))`
-/

namespace A164546.P16024358365168328020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094014 n) (A111567 n)

end

end A164546.P16024358365168328020

namespace A164546

/-- `lcm(A094014(n), A111567(n))` -/
def P16024358365168328020.Spec : Prop :=
  ∀ n, (P16024358365168328020.a n : ℤ) = A164546 n

end A164546

/-! ## A164546.P17532103011362586682

`2*A057084(n)-A123357(n)`
-/

namespace A164546.P17532103011362586682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057084 n - A123357 n

end

end A164546.P17532103011362586682

namespace A164546

/-- `2*A057084(n)-A123357(n)` -/
def P17532103011362586682.Spec : Prop :=
  ∀ n, P17532103011362586682.a n = A164546 n

end A164546

/-! ## A164546.P486037450266708509

`(A164608(n)+A057084(n))/2`
-/

namespace A164546.P486037450266708509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164608 n + A057084 n : ℚ) / 2

end

end A164546.P486037450266708509

namespace A164546

/-- `(A164608(n)+A057084(n))/2` -/
def P486037450266708509.Spec : Prop :=
  ∀ n, P486037450266708509.a n = (A164546 n : ℚ)

end A164546

/-! ## A164546.P8318502506328914775

`A111567(n)*A143095(2*n)`
-/

namespace A164546.P8318502506328914775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111567 n * A143095 (2 * n)

end

end A164546.P8318502506328914775

namespace A164546

/-- `A111567(n)*A143095(2*n)` -/
def P8318502506328914775.Spec : Prop :=
  ∀ n, P8318502506328914775.a n = A164546 n

end A164546

/-! ## A164546.P12598730009980138018

`A111567(n)*A164073(2*n+1)`
-/

namespace A164546.P12598730009980138018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111567 n * A164073 (2 * n + 1)

end

end A164546.P12598730009980138018

namespace A164546

/-- `A111567(n)*A164073(2*n+1)` -/
def P12598730009980138018.Spec : Prop :=
  ∀ n, P12598730009980138018.a n = A164546 n

end A164546

/-! ## A164546.P6761621188458444157

`(A003480(n+1)-A006012(n))*A000079(n)`
-/

namespace A164546.P6761621188458444157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003480 (n + 1) - A006012 n) * A000079 n

end

end A164546.P6761621188458444157

namespace A164546

/-- `(A003480(n+1)-A006012(n))*A000079(n)` -/
def P6761621188458444157.Spec : Prop :=
  ∀ n, P6761621188458444157.a n = A164546 n

end A164546

/-!
# A164547: a(n) = 10*a(n-1) - 17*a(n-2) for n > 1; a(0) = 1, a(1) = 11.

The programs for A164547, the canonical program `A164547.P426775701520099828` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164547 has offset 0).

The definition of A164547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-17*a(n-2)` (program `A164547.P426775701520099828`, by `A164547.P426775701520099828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164547.P426775701520099828

`10*a(n-1)-17*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164547

/-- `10*a(n-1)-17*a(n-2)` -/
def P426775701520099828.Spec : Prop :=
  ∀ n, P426775701520099828.a n = A164547 n

theorem P426775701520099828.correct : P426775701520099828.Spec := by
  intro n
  simp only [A164547]

end A164547

/-! ## A164547.P6066566165185338088

`(A164543(n)+A084131(n))/2`
-/

namespace A164547.P6066566165185338088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164543 n + A084131 n : ℚ) / 2

end

end A164547.P6066566165185338088

namespace A164547

/-- `(A164543(n)+A084131(n))/2` -/
def P6066566165185338088.Spec : Prop :=
  ∀ n, P6066566165185338088.a n = (A164547 n : ℚ)

end A164547

/-! ## A164547.P3582479533287997078

`(A164609(n)+A164588(n))/2`
-/

namespace A164547.P3582479533287997078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164609 n + A164588 n : ℚ) / 2

end

end A164547.P3582479533287997078

namespace A164547

/-- `(A164609(n)+A164588(n))/2` -/
def P3582479533287997078.Spec : Prop :=
  ∀ n, P3582479533287997078.a n = (A164547 n : ℚ)

end A164547

/-! ## A164547.P6731617156412292556

`6*A164592(n)-A164595(n)`
-/

namespace A164547.P6731617156412292556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A164592 n - A164595 n

end

end A164547.P6731617156412292556

namespace A164547

/-- `6*A164592(n)-A164595(n)` -/
def P6731617156412292556.Spec : Prop :=
  ∀ n, P6731617156412292556.a n = A164547 n

end A164547

/-! ## A164547.P9511083271527947391

`2*A154340(n+1)-A164588(n)`
-/

namespace A164547.P9511083271527947391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154340 (n + 1) - A164588 n

end

end A164547.P9511083271527947391

namespace A164547

/-- `2*A154340(n+1)-A164588(n)` -/
def P9511083271527947391.Spec : Prop :=
  ∀ n, P9511083271527947391.a n = A164547 n

end A164547

/-! ## A164547.P14244438892193492302

`A154340(n+1)+A154340(A028310(n))-A000007(n)`
-/

namespace A164547.P14244438892193492302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154340 (n + 1) + (A154340 (A028310 n).toNat - A000007 n)

end

end A164547.P14244438892193492302

namespace A164547

/-- `A154340(n+1)+A154340(A028310(n))-A000007(n)` -/
def P14244438892193492302.Spec : Prop :=
  ∀ n, P14244438892193492302.a n = A164547 n

end A164547

/-!
# A164549: a(n) = 4*a(n-1) + 2*a(n-2) for n > 1; a(0) = 1, a(1) = 6.

The programs for A164549, the canonical program `A164549.P16301164007495077535` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164549 has offset 0).

The definition of A164549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+2*a(n-2)` (program `A164549.P16301164007495077535`, by `A164549.P16301164007495077535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164549.P16301164007495077535

`4*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164549

/-- `4*a(n-1)+2*a(n-2)` -/
def P16301164007495077535.Spec : Prop :=
  ∀ n, (P16301164007495077535.a n : ℤ) = A164549 n

theorem P16301164007495077535.correct : P16301164007495077535.Spec := by
  intro n
  simp only [A164549]

end A164549

/-! ## A164549.P11296174204320860818

`2-2*(1-2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A164549.P11296174204320860818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 - 2 * (1 - 2 * a (n - 1) - a (n - 2))

end

end A164549.P11296174204320860818

namespace A164549

/-- `2-2*(1-2*a(n-1)-a(n-2))` -/
def P11296174204320860818.Spec : Prop :=
  ∀ n, P11296174204320860818.a n = A164549 n

end A164549

/-! ## A164549.P409123016724272031

`(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` with `a(0)=1, a(1)=6`
-/

namespace A164549.P409123016724272031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (a (n - 1) + (a (n - 1) + a (n - 2))) / (1 - (1 : ℚ) / 2)

end

end A164549.P409123016724272031

namespace A164549

/-- `(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` -/
def P409123016724272031.Spec : Prop :=
  ∀ n, P409123016724272031.a n = (A164549 n : ℚ)

end A164549

/-! ## A164549.P18236849262242008625

`A123347(n)+A090017(n)`
-/

namespace A164549.P18236849262242008625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123347 n + A090017 n

end

end A164549.P18236849262242008625

namespace A164549

/-- `A123347(n)+A090017(n)` -/
def P18236849262242008625.Spec : Prop :=
  ∀ n, P18236849262242008625.a n = A164549 n

end A164549

/-! ## A164549.P13297417050307835633

`A123348(n)+Δ[A090017(n)]`
-/

namespace A164549.P13297417050307835633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123348 n + (f1 (n + 1) - f1 n)

end

end A164549.P13297417050307835633

namespace A164549

/-- `A123348(n)+Δ[A090017(n)]` -/
def P13297417050307835633.Spec : Prop :=
  ∀ n, P13297417050307835633.a n = A164549 n

end A164549

/-! ## A164549.P15014500319060905719

`A090017(n)+A026655(2*n)`
-/

namespace A164549.P15014500319060905719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 n + A026655 (2 * n)

end

end A164549.P15014500319060905719

namespace A164549

/-- `A090017(n)+A026655(2*n)` -/
def P15014500319060905719.Spec : Prop :=
  ∀ n, P15014500319060905719.a n = A164549 n

end A164549

/-! ## A164549.P12127876314066384167

`A084059(n)+4*A090017(n)`
-/

namespace A164549.P12127876314066384167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n + 4 * A090017 n

end

end A164549.P12127876314066384167

namespace A164549

/-- `A084059(n)+4*A090017(n)` -/
def P12127876314066384167.Spec : Prop :=
  ∀ n, P12127876314066384167.a n = A164549 n

end A164549

/-! ## A164549.P3253188166557138062

`A090017(n+1)+2*A090017(n)`
-/

namespace A164549.P3253188166557138062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1) + 2 * A090017 n

end

end A164549.P3253188166557138062

namespace A164549

/-- `A090017(n+1)+2*A090017(n)` -/
def P3253188166557138062.Spec : Prop :=
  ∀ n, P3253188166557138062.a n = A164549 n

end A164549

/-! ## A164549.P16097913539870458825

`A084059(n)+A123348(n)+A090017(n)`
-/

namespace A164549.P16097913539870458825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n + (A123348 n + A090017 n)

end

end A164549.P16097913539870458825

namespace A164549

/-- `A084059(n)+A123348(n)+A090017(n)` -/
def P16097913539870458825.Spec : Prop :=
  ∀ n, P16097913539870458825.a n = A164549 n

end A164549

/-! ## A164549.P3862699398297992019

`(A041006(n)-A041007(n))*A016116(n+1)`
-/

namespace A164549.P3862699398297992019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041006 n - A041007 n) * A016116 (n + 1)

end

end A164549.P3862699398297992019

namespace A164549

/-- `(A041006(n)-A041007(n))*A016116(n+1)` -/
def P3862699398297992019.Spec : Prop :=
  ∀ n, P3862699398297992019.a n = A164549 n

end A164549

/-! ## A164549.P14500787114938171095

`A335749(n)-2*A090017(n)`
-/

namespace A164549.P14500787114938171095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335749 n - 2 * A090017 n

end

end A164549.P14500787114938171095

namespace A164549

/-- `A335749(n)-2*A090017(n)` -/
def P14500787114938171095.Spec : Prop :=
  ∀ n, P14500787114938171095.a n = A164549 n

end A164549

/-! ## A164549.P8228906044668416063

`A084059(n+1)-A090017(n+1)`
-/

namespace A164549.P8228906044668416063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 (n + 1) - A090017 (n + 1)

end

end A164549.P8228906044668416063

namespace A164549

/-- `A084059(n+1)-A090017(n+1)` -/
def P8228906044668416063.Spec : Prop :=
  ∀ n, P8228906044668416063.a n = A164549 n

end A164549

/-! ## A164549.P10795742455225665365

`A090017(n+2)-A123348(n+1)`
-/

namespace A164549.P10795742455225665365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 2) - A123348 (n + 1)

end

end A164549.P10795742455225665365

namespace A164549

/-- `A090017(n+2)-A123348(n+1)` -/
def P10795742455225665365.Spec : Prop :=
  ∀ n, P10795742455225665365.a n = A164549 n

end A164549

/-! ## A164549.P16495876062817121878

`A268409(n+1)-2*A084059(n+1)`
-/

namespace A164549.P16495876062817121878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268409 (n + 1) - 2 * A084059 (n + 1)

end

end A164549.P16495876062817121878

namespace A164549

/-- `A268409(n+1)-2*A084059(n+1)` -/
def P16495876062817121878.Spec : Prop :=
  ∀ n, P16495876062817121878.a n = A164549 n

end A164549

/-! ## A164549.P15342784191831237914

`A021001(n)-(A090017(n)+A084059(n))`
-/

namespace A164549.P15342784191831237914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021001 n - (A090017 n + A084059 n)

end

end A164549.P15342784191831237914

namespace A164549

/-- `A021001(n)-(A090017(n)+A084059(n))` -/
def P15342784191831237914.Spec : Prop :=
  ∀ n, P15342784191831237914.a n = A164549 n

end A164549

/-! ## A164549.P4083552384009691662

`A021001(n)+A090017(n)-A090017(n+1)`
-/

namespace A164549.P4083552384009691662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021001 n + (A090017 n - A090017 (n + 1))

end

end A164549.P4083552384009691662

namespace A164549

/-- `A021001(n)+A090017(n)-A090017(n+1)` -/
def P4083552384009691662.Spec : Prop :=
  ∀ n, P4083552384009691662.a n = A164549 n

end A164549

/-! ## A164549.P2671130411414477284

`((3+2*sqrt(6))*(2+sqrt(6))^n+(3-2*sqrt(6))*(2-sqrt(6))^n)/6`
-/

namespace A164549.P2671130411414477284
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (6 : ℝ)) * (2 + Real.sqrt (6 : ℝ)) ^ n + (3 - 2 * Real.sqrt (6 : ℝ)) * (2 - Real.sqrt (6 : ℝ)) ^ n) / 6

end

end A164549.P2671130411414477284

namespace A164549

/-- `((3+2*sqrt(6))*(2+sqrt(6))^n+(3-2*sqrt(6))*(2-sqrt(6))^n)/6` -/
def P2671130411414477284.Spec : Prop :=
  ∀ n, P2671130411414477284.a n = (A164549 n : ℝ)

end A164549

/-!
# A164550: a(n) = 6*a(n-1) - 3*a(n-2) for n > 1; a(0) = 1, a(1) = 7.

The programs for A164550, the canonical program `A164550.P7686346270340897055` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164550 has offset 0).

The definition of A164550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-3*a(n-2)` (program `A164550.P7686346270340897055`, by `A164550.P7686346270340897055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164550.P7686346270340897055

`6*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164550

/-- `6*a(n-1)-3*a(n-2)` -/
def P7686346270340897055.Spec : Prop :=
  ∀ n, P7686346270340897055.a n = A164550 n

theorem P7686346270340897055.correct : P7686346270340897055.Spec := by
  intro n
  simp only [A164550]

end A164550

/-! ## A164550.P1036308142411100747

`((3+2*sqrt(6))*(3+sqrt(6))^n+(3-2*sqrt(6))*(3-sqrt(6))^n)/6`
-/

namespace A164550.P1036308142411100747
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (6 : ℝ)) * (3 + Real.sqrt (6 : ℝ)) ^ n + (3 - 2 * Real.sqrt (6 : ℝ)) * (3 - Real.sqrt (6 : ℝ)) ^ n) / 6

end

end A164550.P1036308142411100747

namespace A164550

/-- `((3+2*sqrt(6))*(3+sqrt(6))^n+(3-2*sqrt(6))*(3-sqrt(6))^n)/6` -/
def P1036308142411100747.Spec : Prop :=
  ∀ n, P1036308142411100747.a n = (A164550 n : ℝ)

end A164550

/-! ## A164550.P11301301809749596404

`ceil((sqrt(6)+3)*a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A164550.P11301301809749596404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ⌈(Real.sqrt (6 : ℝ) + 3) * (a (n - 1) : ℝ)⌉

end

end A164550.P11301301809749596404

namespace A164550

/-- `ceil((sqrt(6)+3)*a(n-1))` -/
def P11301301809749596404.Spec : Prop :=
  ∀ n, P11301301809749596404.a n = A164550 n

end A164550

/-! ## A164550.P13069730315017717884

`∑[floor((sqrt(6)+3)*a(n-1))]` with `a(0)=1, a(1)=6`
-/

namespace A164550.P13069730315017717884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  ⌊(Real.sqrt (6 : ℝ) + 3) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164550.P13069730315017717884

namespace A164550

/-- `∑[floor((sqrt(6)+3)*a(n-1))]` -/
def P13069730315017717884.Spec : Prop :=
  ∀ n, P13069730315017717884.a n = A164550 n

end A164550

/-! ## A164550.P11754092352631070324

`A109112(n)-∑[A158869(n)]`
-/

namespace A164550.P11754092352631070324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109112 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164550.P11754092352631070324

namespace A164550

/-- `A109112(n)-∑[A158869(n)]` -/
def P11754092352631070324.Spec : Prop :=
  ∀ n, P11754092352631070324.a n = A164550 n

end A164550

/-! ## A164550.P17504458470760353570

`Δ[A084120(n)]-A158869(n)`
-/

namespace A164550.P17504458470760353570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A158869 n

end

end A164550.P17504458470760353570

namespace A164550

/-- `Δ[A084120(n)]-A158869(n)` -/
def P17504458470760353570.Spec : Prop :=
  ∀ n, P17504458470760353570.a n = A164550 n

end A164550

/-! ## A164550.P403653912773744794

`Δ[A038754(n)*A080874(n)]`
-/

namespace A164550.P403653912773744794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n * A080874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164550.P403653912773744794

namespace A164550

/-- `Δ[A038754(n)*A080874(n)]` -/
def P403653912773744794.Spec : Prop :=
  ∀ n, P403653912773744794.a n = A164550 n

end A164550

/-! ## A164550.P17381307799594603587

`A109112(n)-A138395(n+1)`
-/

namespace A164550.P17381307799594603587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109112 n - A138395 (n + 1)

end

end A164550.P17381307799594603587

namespace A164550

/-- `A109112(n)-A138395(n+1)` -/
def P17381307799594603587.Spec : Prop :=
  ∀ n, P17381307799594603587.a n = A164550 n

end A164550

/-! ## A164550.P4467284774882982394

`2*A138395(n+1)-A158869(n)`
-/

namespace A164550.P4467284774882982394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138395 (n + 1) - A158869 n

end

end A164550.P4467284774882982394

namespace A164550

/-- `2*A138395(n+1)-A158869(n)` -/
def P4467284774882982394.Spec : Prop :=
  ∀ n, P4467284774882982394.a n = A164550 n

end A164550

/-!
# A164551: a(n) = 10*a(n-1)-19*a(n-2) for n > 1; a(0) = 1, a(1) = 9.

The programs for A164551, the canonical program `A164551.P13797337326454651956` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164551 has offset 0).

The definition of A164551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-19*a(n-2)` (program `A164551.P13797337326454651956`, by `A164551.P13797337326454651956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164551.P13797337326454651956

`10*a(n-1)-19*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164551

/-- `10*a(n-1)-19*a(n-2)` -/
def P13797337326454651956.Spec : Prop :=
  ∀ n, P13797337326454651956.a n = A164551 n

theorem P13797337326454651956.correct : P13797337326454651956.Spec := by
  intro n
  simp only [A164551]

end A164551

/-! ## A164551.P17005714800358016296

`((3+2*sqrt(6))*(5+sqrt(6))^n+(3-2*sqrt(6))*(5-sqrt(6))^n)/6`
-/

namespace A164551.P17005714800358016296
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (6 : ℝ)) * (5 + Real.sqrt (6 : ℝ)) ^ n + (3 - 2 * Real.sqrt (6 : ℝ)) * (5 - Real.sqrt (6 : ℝ)) ^ n) / 6

end

end A164551.P17005714800358016296

namespace A164551

/-- `((3+2*sqrt(6))*(5+sqrt(6))^n+(3-2*sqrt(6))*(5-sqrt(6))^n)/6` -/
def P17005714800358016296.Spec : Prop :=
  ∀ n, P17005714800358016296.a n = (A164551 n : ℝ)

end A164551

/-! ## A164551.P13420953370316827422

`or(1, Δ[A154236(A028310(n))])`
-/

namespace A164551.P13420953370316827422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154236 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A164551.P13420953370316827422

namespace A164551

/-- `or(1, Δ[A154236(A028310(n))])` -/
def P13420953370316827422.Spec : Prop :=
  ∀ n, P13420953370316827422.a n = A164551 n

end A164551

/-! ## A164551.P13698947661918036828

`A000007(n)+Δ[A154236(A028310(n))]`
-/

namespace A164551.P13698947661918036828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154236 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A164551.P13698947661918036828

namespace A164551

/-- `A000007(n)+Δ[A154236(A028310(n))]` -/
def P13698947661918036828.Spec : Prop :=
  ∀ n, P13698947661918036828.a n = A164551 n

end A164551

/-! ## A164551.P5238279115063115499

`Δ[A154236(A028310(n))+A057427(n)]`
-/

namespace A164551.P5238279115063115499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154236 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164551.P5238279115063115499

namespace A164551

/-- `Δ[A154236(A028310(n))+A057427(n)]` -/
def P5238279115063115499.Spec : Prop :=
  ∀ n, P5238279115063115499.a n = A164551 n

end A164551

/-! ## A164551.P3835667477410606938

`or(1, A154236(n+1)-A154236(A028310(n)))`
-/

namespace A164551.P3835667477410606938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A154236 (n + 1) - A154236 (A028310 n).toNat)

end

end A164551.P3835667477410606938

namespace A164551

/-- `or(1, A154236(n+1)-A154236(A028310(n)))` -/
def P3835667477410606938.Spec : Prop :=
  ∀ n, P3835667477410606938.a n = A164551 n

end A164551

/-! ## A164551.P14237404083959030624

`A154236(n+1)+A000007(n)-A154236(A028310(n))`
-/

namespace A164551.P14237404083959030624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154236 (n + 1) + (A000007 n - A154236 (A028310 n).toNat)

end

end A164551.P14237404083959030624

namespace A164551

/-- `A154236(n+1)+A000007(n)-A154236(A028310(n))` -/
def P14237404083959030624.Spec : Prop :=
  ∀ n, P14237404083959030624.a n = A164551 n

end A164551

/-! ## A164551.P9129858335679047636

`A154236(n+1)-A057427(n)*A154236(A028310(n))`
-/

namespace A164551.P9129858335679047636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154236 (n + 1) - A057427 n * A154236 (A028310 n).toNat

end

end A164551.P9129858335679047636

namespace A164551

/-- `A154236(n+1)-A057427(n)*A154236(A028310(n))` -/
def P9129858335679047636.Spec : Prop :=
  ∀ n, P9129858335679047636.a n = A164551 n

end A164551

/-! ## A164551.P9778841206388837596

`Δ[A154236(A028310(n))]+A005250(n+1)%2`
-/

namespace A164551.P9778841206388837596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154236 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A005250 (n + 1)) 2

end

end A164551.P9778841206388837596

namespace A164551

/-- `Δ[A154236(A028310(n))]+A005250(n+1)%2` -/
def P9778841206388837596.Spec : Prop :=
  ∀ n, P9778841206388837596.a n = A164551 n

end A164551

/-!
# A164552: a(n) = 12*a(n-1)-30*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A164552, the canonical program `A164552.P499234054809998795` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164552 has offset 0).

The definition of A164552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-30*a(n-2)` (program `A164552.P499234054809998795`, by `A164552.P499234054809998795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164552.P499234054809998795

`12*a(n-1)-30*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164552

/-- `12*a(n-1)-30*a(n-2)` -/
def P499234054809998795.Spec : Prop :=
  ∀ n, P499234054809998795.a n = A164552 n

theorem P499234054809998795.correct : P499234054809998795.Spec := by
  intro n
  simp only [A164552]

end A164552

/-! ## A164552.P3609157627630327151

`((3+2*sqrt(6))*(6+sqrt(6))^n+(3-2*sqrt(6))*(6-sqrt(6))^n)/6`
-/

namespace A164552.P3609157627630327151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (6 : ℝ)) * (6 + Real.sqrt (6 : ℝ)) ^ n + (3 - 2 * Real.sqrt (6 : ℝ)) * (6 - Real.sqrt (6 : ℝ)) ^ n) / 6

end

end A164552.P3609157627630327151

namespace A164552

/-- `((3+2*sqrt(6))*(6+sqrt(6))^n+(3-2*sqrt(6))*(6-sqrt(6))^n)/6` -/
def P3609157627630327151.Spec : Prop :=
  ∀ n, P3609157627630327151.a n = (A164552 n : ℝ)

end A164552

/-!
# A164553: a(n) = 14*a(n-1)-43*a(n-2) for n > 1; a(0) = 1, a(1) = 11.

The programs for A164553, the canonical program `A164553.P1249067016943118412` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164553 has offset 0).

The definition of A164553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-43*a(n-2)` (program `A164553.P1249067016943118412`, by `A164553.P1249067016943118412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164553.P1249067016943118412

`14*a(n-1)-43*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164553

/-- `14*a(n-1)-43*a(n-2)` -/
def P1249067016943118412.Spec : Prop :=
  ∀ n, P1249067016943118412.a n = A164553 n

theorem P1249067016943118412.correct : P1249067016943118412.Spec := by
  intro n
  simp only [A164553]

end A164553

/-! ## A164553.P83666014385372684

`((3+2*sqrt(6))*(7+sqrt(6))^n+(3-2*sqrt(6))*(7-sqrt(6))^n)/6`
-/

namespace A164553.P83666014385372684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (6 : ℝ)) * (7 + Real.sqrt (6 : ℝ)) ^ n + (3 - 2 * Real.sqrt (6 : ℝ)) * (7 - Real.sqrt (6 : ℝ)) ^ n) / 6

end

end A164553.P83666014385372684

namespace A164553

/-- `((3+2*sqrt(6))*(7+sqrt(6))^n+(3-2*sqrt(6))*(7-sqrt(6))^n)/6` -/
def P83666014385372684.Spec : Prop :=
  ∀ n, P83666014385372684.a n = (A164553 n : ℝ)

end A164553

/-!
# A164554: Ramanujan primes A104272(n) for which A104272(n) = A080359(n).

The programs for A164554, there is no canonical definition to state claims against.
-/

/-! ## A164554.P7156533953067751058

`A080359(A182391(n+1))`
-/

namespace A164554.P7156533953067751058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080359 (A182391 (n + 1)).toNat

end

end A164554.P7156533953067751058

/-! ## A164554.P5591606104084675622

`A104272(A182391(abs(xor(n, -1))))`
-/

namespace A164554.P5591606104084675622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A182391 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A164554.P5591606104084675622

/-! ## A164554.P4344354903368280319

`A104272(A182391(C(n+1, n)))`
-/

namespace A164554.P4344354903368280319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A182391 (Nat.choose (n + 1) n)).toNat

end

end A164554.P4344354903368280319

/-! ## A164554.P8660498337030929222

`A104272(and(-1, A182391(n+1)))`
-/

namespace A164554.P8660498337030929222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (Int.land (-1) (A182391 (n + 1))).toNat

end

end A164554.P8660498337030929222

/-! ## A164554.P13464324039424493138

`A104272(root(A182391(n+1), 2)²)`
-/

namespace A164554.P13464324039424493138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (SequenceMachineLib.roundAway (((A182391 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A164554.P13464324039424493138

/-!
# A164555: Numerators of the "original" Bernoulli numbers; also the numerators of the Bernoulli polynomials at x=1.

The programs for A164555, there is no canonical definition to state claims against.
-/

/-! ## A164555.P16183550952286811389

`A027641(char[1]+n)`
-/

namespace A164555.P16183550952286811389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A164555.P16183550952286811389

/-! ## A164555.P1380860954546663549

`A176327(char[1]+n)`
-/

namespace A164555.P1380860954546663549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A164555.P1380860954546663549

/-! ## A164555.P16088415169302220017

`or(char[1], A176327(n))`
-/

namespace A164555.P16088415169302220017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A176327 n)

end

end A164555.P16088415169302220017

/-! ## A164555.P3720626711865916906

`A027641(n)^floor(atan(n))`
-/

namespace A164555.P3720626711865916906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A164555.P3720626711865916906

/-! ## A164555.P1627569521577264523

`A051716(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A164555.P1627569521577264523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A051716 n + a (n - 1)

end

end A164555.P1627569521577264523

/-! ## A164555.P6719133936843860876

`A176327(n)+A063524(n)`
-/

namespace A164555.P6719133936843860876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 n + A063524 n

end

end A164555.P6719133936843860876

/-! ## A164555.P566327130735708980

`A178333(n)+A176327(n)`
-/

namespace A164555.P566327130735708980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A176327 n

end

end A164555.P566327130735708980

/-! ## A164555.P8069533674399977269

`A164558(n)-A164869(n)`
-/

namespace A164555.P8069533674399977269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164558 n - A164869 n

end

end A164555.P8069533674399977269

/-! ## A164555.P6802656309272710719

`A176327(n)-A159075(n)`
-/

namespace A164555.P6802656309272710719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 n - A159075 n

end

end A164555.P6802656309272710719

/-! ## A164555.P18195664909016395942

`A027641(n)*A033999(n)`
-/

namespace A164555.P18195664909016395942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A033999 n

end

end A164555.P18195664909016395942

/-! ## A164555.P17296474716989204564

`A027641(n)^A000034(n)`
-/

namespace A164555.P17296474716989204564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 n : ℚ) ^ (A000034 n : ℤ)

end

end A164555.P17296474716989204564

/-! ## A164555.P9030571856054134384

`A027641(n)^A019426(n)`
-/

namespace A164555.P9030571856054134384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 n : ℚ) ^ (A019426 n : ℤ)

end

end A164555.P9030571856054134384

/-! ## A164555.P9531227645688347034

`A027641(n)^A019428(n)`
-/

namespace A164555.P9531227645688347034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 n : ℚ) ^ (A019428 n : ℤ)

end

end A164555.P9531227645688347034

/-! ## A164555.P10750902058755321949

`A027641(n)^A269906(n)`
-/

namespace A164555.P10750902058755321949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 n : ℚ) ^ (A269906 n : ℤ)

end

end A164555.P10750902058755321949

/-! ## A164555.P4681646531888524043

`and(A027641(n), A165326(n))`
-/

namespace A164555.P4681646531888524043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027641 n) (A165326 n)

end

end A164555.P4681646531888524043

/-! ## A164555.P2725207624488159656

`A027641(n)*A071936(n+1)`
-/

namespace A164555.P2725207624488159656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A071936 (n + 1)

end

end A164555.P2725207624488159656

/-! ## A164555.P12809869069620676496

`A027641(n)*A165326(n+1)`
-/

namespace A164555.P12809869069620676496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A165326 (n + 1)

end

end A164555.P12809869069620676496

/-! ## A164555.P9036914432171424159

`A027641(n)*A309873(n+1)`
-/

namespace A164555.P9036914432171424159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A309873 (n + 1)

end

end A164555.P9036914432171424159

/-! ## A164555.P10021248827066853033

`A027641(n)+2*A063524(n)`
-/

namespace A164555.P10021248827066853033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n + 2 * A063524 n

end

end A164555.P10021248827066853033

/-! ## A164555.P1570853958194269443

`A027641(n)*A129110(n+2)`
-/

namespace A164555.P1570853958194269443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A129110 (n + 2)

end

end A164555.P1570853958194269443

/-!
# A164556: Primes expressible as the sum of (at least two) consecutive primes in at least 5 ways.

The programs for A164556, there is no canonical definition to state claims against.
-/

/-! ## A164556.P8273534196525538375

`∩[A067375(n+1), A067380(n+1)]`
-/

namespace A164556.P8273534196525538375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164556.P8273534196525538375

/-! ## A164556.P7025354137359637028

`p?[A067375(n+1)]`
-/

namespace A164556.P7025354137359637028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164556.P7025354137359637028

/-! ## A164556.P4298092184784330258

`record[p?[A067375(A133310(n))]]`
-/

namespace A164556.P4298092184784330258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067375 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164556.P4298092184784330258

/-! ## A164556.P18207926590497917695

`record[p?[A067375(A291769(n))]]`
-/

namespace A164556.P18207926590497917695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067375 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164556.P18207926590497917695

/-! ## A164556.P9385084277181281642

`record[p?[A067375(A329048(n))]]`
-/

namespace A164556.P9385084277181281642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067375 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164556.P9385084277181281642

/-!
# A164557: Numbers k such that s(k) = s(k+1), where s(k) is the sum of divisors d of k such that k/d is odd (A002131).

The programs for A164557, the canonical program `A164557.P4242385317693302178` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164557 has offset 1).

The definition of A164557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164557.P4242385317693302178

`eq[A002131(n+1), A002131(n+2)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A164557

/-- `eq[A002131(n+1), A002131(n+2)]+1` -/
def P4242385317693302178.Spec : Prop :=
  ∀ n, (P4242385317693302178.a n : ℤ) = A164557 (n + 1)

theorem P4242385317693302178.correct : P4242385317693302178.Spec := by
  intro n
  simp only [A164557, Nat.add_sub_cancel]

end A164557

/-! ## A164557.P14759686607901228689

`A153152(eq[A002131(n+1), A002131(n+2)])`
-/

namespace A164557.P14759686607901228689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164557.P14759686607901228689

namespace A164557

/-- `A153152(eq[A002131(n+1), A002131(n+2)])` -/
def P14759686607901228689.Spec : Prop :=
  ∀ n, P14759686607901228689.a n = A164557 (n + 1)

end A164557

/-! ## A164557.P1075580665985819870

`eq[A285895(2*(n+1)), A285895(2*(n+2))]+1`
-/

namespace A164557.P1075580665985819870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285895 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285895 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164557.P1075580665985819870

namespace A164557

/-- `eq[A285895(2*(n+1)), A285895(2*(n+2))]+1` -/
def P1075580665985819870.Spec : Prop :=
  ∀ n, (P1075580665985819870.a n : ℤ) = A164557 (n + 1)

end A164557

/-! ## A164557.P953993111342144936

`eq[A327095(2*(n+1)), A327095(2*(n+2))]+1`
-/

namespace A164557.P953993111342144936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164557.P953993111342144936

namespace A164557

/-- `eq[A327095(2*(n+1)), A327095(2*(n+2))]+1` -/
def P953993111342144936.Spec : Prop :=
  ∀ n, (P953993111342144936.a n : ℤ) = A164557 (n + 1)

end A164557

/-! ## A164557.P2551363695606991455

`eq[A002131(A004277(n)), A054785(n+1)]`
-/

namespace A164557.P2551363695606991455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164557.P2551363695606991455

namespace A164557

/-- `eq[A002131(A004277(n)), A054785(n+1)]` -/
def P2551363695606991455.Spec : Prop :=
  ∀ n, (P2551363695606991455.a n : ℤ) = A164557 (n + 1)

end A164557

/-! ## A164557.P8648491326205994296

`eq[A002131(2*(n+1)), A002131(A004277(n))]`
-/

namespace A164557.P8648491326205994296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164557.P8648491326205994296

namespace A164557

/-- `eq[A002131(2*(n+1)), A002131(A004277(n))]` -/
def P8648491326205994296.Spec : Prop :=
  ∀ n, (P8648491326205994296.a n : ℤ) = A164557 (n + 1)

end A164557

/-! ## A164557.P4319557590706224225

`eq[A054785(2*(n+1)), A054785(A004277(n))]`
-/

namespace A164557.P4319557590706224225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164557.P4319557590706224225

namespace A164557

/-- `eq[A054785(2*(n+1)), A054785(A004277(n))]` -/
def P4319557590706224225.Spec : Prop :=
  ∀ n, (P4319557590706224225.a n : ℤ) = A164557 (n + 1)

end A164557

/-!
# A164558: Numerators of the n-th term of the binomial transform of the original Bernoulli numbers.

The programs for A164558, there is no canonical definition to state claims against.
-/

/-! ## A164558.P1631805516767375987

`A164869(n)+A164555(n)`
-/

namespace A164558.P1631805516767375987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164869 n + A164555 n

end

end A164558.P1631805516767375987

/-! ## A164558.P2329452844744274162

`A164555(n)+n*A027642(n)`
-/

namespace A164558.P2329452844744274162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n + (n : ℤ) * A027642 n

end

end A164558.P2329452844744274162

/-! ## A164558.P316490280613595192

`char[1]+A176327(n)+A164869(n)`
-/

namespace A164558.P316490280613595192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A176327 n + A164869 n)

end

end A164558.P316490280613595192

/-! ## A164558.P12758708354817788772

`A164555(n)+n*sqrt(A172282(n))`
-/

namespace A164558.P12758708354817788772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164555 n : ℝ) + (n : ℝ) * Real.sqrt (A172282 n : ℝ)

end

end A164558.P12758708354817788772

/-! ## A164558.P13820710334703731779

`n*A027642(n)+A176327(char[1]+n)`
-/

namespace A164558.P13820710334703731779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027642 n + A176327 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A164558.P13820710334703731779

/-! ## A164558.P10815643739789559648

`A164869(n)+A027641(A254667(n))`
-/

namespace A164558.P10815643739789559648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164869 n + A027641 (A254667 n).toNat

end

end A164558.P10815643739789559648

/-! ## A164558.P17993929683284959569

`A027641(n)+A027642(n)*A254667(n)`
-/

namespace A164558.P17993929683284959569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n + A027642 n * A254667 n

end

end A164558.P17993929683284959569

/-! ## A164558.P8554793046973347855

`A164555(n)+A176289(n)*A254667(n)`
-/

namespace A164558.P8554793046973347855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n + A176289 n * A254667 n

end

end A164558.P8554793046973347855

/-! ## A164558.P8975002569534462927

`A157809(n)-A001787(n)*A027642(n)`
-/

namespace A164558.P8975002569534462927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157809 n - A001787 n * A027642 n

end

end A164558.P8975002569534462927

/-! ## A164558.P16957674428832587235

`A164869(n)+A027641(n)^A285068(n+1)`
-/

namespace A164558.P16957674428832587235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164869 n : ℚ) + (A027641 n : ℚ) ^ (A285068 (n + 1) : ℤ)

end

end A164558.P16957674428832587235

/-! ## A164558.P12653753956556634623

`A164869(n)+A162298(∑[n])`
-/

namespace A164558.P12653753956556634623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164869 n + A162298 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164558.P12653753956556634623

/-! ## A164558.P3244513931428892347

`A176144(2*n)+A164869(n)`
-/

namespace A164558.P3244513931428892347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176144 (2 * n) + A164869 n

end

end A164558.P3244513931428892347

/-!
# A164559: a(n) = 6^n/3 - 1.

The programs for A164559, the canonical program `A164559.P1184583066081684961` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164559 has offset 1).

The definition of A164559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164559.P1184583066081684961

`6*a(n-1)+5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164559

/-- `6*a(n-1)+5` -/
def P1184583066081684961.Spec : Prop :=
  ∀ n, (P1184583066081684961.a n : ℤ) = A164559 (n + 1)

theorem P1184583066081684961.correct : P1184583066081684961.Spec := by
  intro n
  simp only [A164559, Nat.add_sub_cancel]

end A164559

/-! ## A164559.P16215460085594276793

`2*6^n-1`
-/

namespace A164559.P16215460085594276793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 6 ^ n : ℤ) - 1

end

end A164559.P16215460085594276793

namespace A164559

/-- `2*6^n-1` -/
def P16215460085594276793.Spec : Prop :=
  ∀ n, P16215460085594276793.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P10280971739385780454

`∑[6*a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A164559.P10280971739385780454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164559.P10280971739385780454

namespace A164559

/-- `∑[6*a(n-1)]` -/
def P10280971739385780454.Spec : Prop :=
  ∀ n, (P10280971739385780454.a n : ℤ) = A164559 (n + 1)

end A164559

/-! ## A164559.P1745757104439991468

`or(7, 6*a(n-1))` with `a(0)=1, a(1)=11`
-/

namespace A164559.P1745757104439991468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  Nat.lor 7 (6 * a (n - 1))

end

end A164559.P1745757104439991468

namespace A164559

/-- `or(7, 6*a(n-1))` -/
def P1745757104439991468.Spec : Prop :=
  ∀ n, (P1745757104439991468.a n : ℤ) = A164559 (n + 1)

end A164559

/-! ## A164559.P16396683037526955808

`A164560(Δ[n²])`
-/

namespace A164559.P16396683037526955808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164560 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A164559.P16396683037526955808

namespace A164559

/-- `A164560(Δ[n²])` -/
def P16396683037526955808.Spec : Prop :=
  ∀ n, P16396683037526955808.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P10297357341371731603

`Δ[A152596(n)-n]`
-/

namespace A164559.P10297357341371731603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152596 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164559.P10297357341371731603

namespace A164559

/-- `Δ[A152596(n)-n]` -/
def P10297357341371731603.Spec : Prop :=
  ∀ n, P10297357341371731603.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P6284104965459774374

`A181288(5*n+2)`
-/

namespace A164559.P6284104965459774374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181288 (5 * n + 2)

end

end A164559.P6284104965459774374

namespace A164559

/-- `A181288(5*n+2)` -/
def P6284104965459774374.Spec : Prop :=
  ∀ n, P6284104965459774374.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P5409985594205462571

`or(n, A164560(2*n+1))`
-/

namespace A164559.P5409985594205462571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A164560 (2 * n + 1))

end

end A164559.P5409985594205462571

namespace A164559

/-- `or(n, A164560(2*n+1))` -/
def P5409985594205462571.Spec : Prop :=
  ∀ n, P5409985594205462571.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P8272030121693530463

`abs(1-2*(A024062(n)+1))`
-/

namespace A164559.P8272030121693530463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * (A024062 n + 1)|

end

end A164559.P8272030121693530463

namespace A164559

/-- `abs(1-2*(A024062(n)+1))` -/
def P8272030121693530463.Spec : Prop :=
  ∀ n, P8272030121693530463.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P14763865162828238950

`abs(1-A026549(2*n+1))`
-/

namespace A164559.P14763865162828238950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A026549 (2 * n + 1)|

end

end A164559.P14763865162828238950

namespace A164559

/-- `abs(1-A026549(2*n+1))` -/
def P14763865162828238950.Spec : Prop :=
  ∀ n, P14763865162828238950.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P5517665646221768076

`abs(1-2*A026549(2*n))`
-/

namespace A164559.P5517665646221768076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A026549 (2 * n)|

end

end A164559.P5517665646221768076

namespace A164559

/-- `abs(1-2*A026549(2*n))` -/
def P5517665646221768076.Spec : Prop :=
  ∀ n, P5517665646221768076.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P6282015616421520983

`abs(1-(A000225(n+1)+1)*A000244(n))`
-/

namespace A164559.P6282015616421520983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000225 (n + 1) + 1) * A000244 n|

end

end A164559.P6282015616421520983

namespace A164559

/-- `abs(1-(A000225(n+1)+1)*A000244(n))` -/
def P6282015616421520983.Spec : Prop :=
  ∀ n, P6282015616421520983.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P3073248568949164181

`floor(A198797(n)/2)`
-/

namespace A164559.P3073248568949164181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198797 n : ℚ) / 2⌋

end

end A164559.P3073248568949164181

namespace A164559

/-- `floor(A198797(n)/2)` -/
def P3073248568949164181.Spec : Prop :=
  ∀ n, P3073248568949164181.a n = A164559 (n + 1)

end A164559

/-! ## A164559.P6614723759139093783

`(A199319(n)-3)/2`
-/

namespace A164559.P6614723759139093783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199319 n - 3 : ℚ) / 2

end

end A164559.P6614723759139093783

namespace A164559

/-- `(A199319(n)-3)/2` -/
def P6614723759139093783.Spec : Prop :=
  ∀ n, P6614723759139093783.a n = (A164559 (n + 1) : ℚ)

end A164559

/-! ## A164559.P6037382946888238312

`(A198845(n)-3)/4`
-/

namespace A164559.P6037382946888238312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198845 n - 3 : ℚ) / 4

end

end A164559.P6037382946888238312

namespace A164559

/-- `(A198845(n)-3)/4` -/
def P6037382946888238312.Spec : Prop :=
  ∀ n, P6037382946888238312.a n = (A164559 (n + 1) : ℚ)

end A164559

/-! ## A164559.P1287603269487723628

`(A198847(n)-4)/5`
-/

namespace A164559.P1287603269487723628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198847 n - 4 : ℚ) / 5

end

end A164559.P1287603269487723628

namespace A164559

/-- `(A198847(n)-4)/5` -/
def P1287603269487723628.Spec : Prop :=
  ∀ n, P1287603269487723628.a n = (A164559 (n + 1) : ℚ)

end A164559

/-! ## A164559.P584065047338966098

`(A199411(n)-5)/4`
-/

namespace A164559.P584065047338966098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199411 n - 5 : ℚ) / 4

end

end A164559.P584065047338966098

namespace A164559

/-- `(A199411(n)-5)/4` -/
def P584065047338966098.Spec : Prop :=
  ∀ n, P584065047338966098.a n = (A164559 (n + 1) : ℚ)

end A164559

/-! ## A164559.P7118350385822321109

`(A164784(n+1)+2)/3`
-/

namespace A164559.P7118350385822321109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164784 (n + 1) + 2 : ℚ) / 3

end

end A164559.P7118350385822321109

namespace A164559

/-- `(A164784(n+1)+2)/3` -/
def P7118350385822321109.Spec : Prop :=
  ∀ n, P7118350385822321109.a n = (A164559 (n + 1) : ℚ)

end A164559

/-!
# A164560: Partial sums of A164532.

The programs for A164560, the canonical program `A164560.P3146054972880344690` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164560 has offset 1).

The definition of A164560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164560.P3146054972880344690

`6*a(n-2)+5` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164560

/-- `6*a(n-2)+5` -/
def P3146054972880344690.Spec : Prop :=
  ∀ n, (P3146054972880344690.a n : ℤ) = A164560 (n + 1)

theorem P3146054972880344690.correct : P3146054972880344690.Spec := by
  intro n
  simp only [A164560, Nat.add_sub_cancel]

end A164560

/-! ## A164560.P16555396866082438550

`∏[n%2+2]-1`
-/

namespace A164560.P16555396866082438550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A164560.P16555396866082438550

namespace A164560

/-- `∏[n%2+2]-1` -/
def P16555396866082438550.Spec : Prop :=
  ∀ n, P16555396866082438550.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P11239676761863234500

`∏[4-gcd(2, n)]-1`
-/

namespace A164560.P11239676761863234500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164560.P11239676761863234500

namespace A164560

/-- `∏[4-gcd(2, n)]-1` -/
def P11239676761863234500.Spec : Prop :=
  ∀ n, P11239676761863234500.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P3914044728261259738

`∏[and(1, n)+2]-1`
-/

namespace A164560.P3914044728261259738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A164560.P3914044728261259738

namespace A164560

/-- `∏[and(1, n)+2]-1` -/
def P3914044728261259738.Spec : Prop :=
  ∀ n, P3914044728261259738.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P3936109194667308505

`∑[6*a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A164560.P3936109194667308505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  6 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164560.P3936109194667308505

namespace A164560

/-- `∑[6*a(n-2)]` -/
def P3936109194667308505.Spec : Prop :=
  ∀ n, (P3936109194667308505.a n : ℤ) = A164560 (n + 1)

end A164560

/-! ## A164560.P4286880821388679697

`lcm(6, a(n-2))+5` with `a(0)=1, a(1)=5`
-/

namespace A164560.P4286880821388679697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lcm 6 (a (n - 2)) + 5

end

end A164560.P4286880821388679697

namespace A164560

/-- `lcm(6, a(n-2))+5` -/
def P4286880821388679697.Spec : Prop :=
  ∀ n, (P4286880821388679697.a n : ℤ) = A164560 (n + 1)

end A164560

/-! ## A164560.P17008554287308721344

`∏[3-and(1, n-1)]-1`
-/

namespace A164560.P17008554287308721344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.land 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164560.P17008554287308721344

namespace A164560

/-- `∏[3-and(1, n-1)]-1` -/
def P17008554287308721344.Spec : Prop :=
  ∀ n, P17008554287308721344.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P11546678190766610838

`∏[5-a(n-1)]-1` with `a(0)=2`
-/

namespace A164560.P11546678190766610838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164560.P11546678190766610838

namespace A164560

/-- `∏[5-a(n-1)]-1` -/
def P11546678190766610838.Spec : Prop :=
  ∀ n, P11546678190766610838.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P14286957794778421996

`∏[n+3-or(1, n)]-1`
-/

namespace A164560.P14286957794778421996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164560.P14286957794778421996

namespace A164560

/-- `∏[n+3-or(1, n)]-1` -/
def P14286957794778421996.Spec : Prop :=
  ∀ n, P14286957794778421996.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P3172279856711714573

`∏[or(1, n-1)-(n-3)]-1`
-/

namespace A164560.P3172279856711714573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1) - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164560.P3172279856711714573

namespace A164560

/-- `∏[or(1, n-1)-(n-3)]-1` -/
def P3172279856711714573.Spec : Prop :=
  ∀ n, P3172279856711714573.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P13950637904206255773

`5-(a(n-2)-7*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A164560.P13950637904206255773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 - (a (n - 2) - 7 * a (n - 2))

end

end A164560.P13950637904206255773

namespace A164560

/-- `5-(a(n-2)-7*a(n-2))` -/
def P13950637904206255773.Spec : Prop :=
  ∀ n, P13950637904206255773.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P10995994922311341111

`∑[A164532(n+1)]`
-/

namespace A164560.P10995994922311341111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164560.P10995994922311341111

namespace A164560

/-- `∑[A164532(n+1)]` -/
def P10995994922311341111.Spec : Prop :=
  ∀ n, P10995994922311341111.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P3596099758697041231

`∏[A010693(n)]-1`
-/

namespace A164560.P3596099758697041231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164560.P3596099758697041231

namespace A164560

/-- `∏[A010693(n)]-1` -/
def P3596099758697041231.Spec : Prop :=
  ∀ n, P3596099758697041231.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P17959464781442423886

`∑[abs(Δ[A026549(n)])]`
-/

namespace A164560.P17959464781442423886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164560.P17959464781442423886

namespace A164560

/-- `∑[abs(Δ[A026549(n)])]` -/
def P17959464781442423886.Spec : Prop :=
  ∀ n, P17959464781442423886.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P13077991071690529088

`A026549(n+1)-1`
-/

namespace A164560.P13077991071690529088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (n + 1) - 1

end

end A164560.P13077991071690529088

namespace A164560

/-- `A026549(n+1)-1` -/
def P13077991071690529088.Spec : Prop :=
  ∀ n, P13077991071690529088.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P10603333946051194837

`∏[A000034(n)+1]-1`
-/

namespace A164560.P10603333946051194837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164560.P10603333946051194837

namespace A164560

/-- `∏[A000034(n)+1]-1` -/
def P10603333946051194837.Spec : Prop :=
  ∀ n, P10603333946051194837.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P18348475807533517773

`∏[A000035(n)+2]-1`
-/

namespace A164560.P18348475807533517773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164560.P18348475807533517773

namespace A164560

/-- `∏[A000035(n)+2]-1` -/
def P18348475807533517773.Spec : Prop :=
  ∀ n, P18348475807533517773.a n = A164560 (n + 1)

end A164560

/-! ## A164560.P4981975722891430041

`record[A100851(n+1)-1]`
-/

namespace A164560.P4981975722891430041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164560.P4981975722891430041

namespace A164560

/-- `record[A100851(n+1)-1]` -/
def P4981975722891430041.Spec : Prop :=
  ∀ n, P4981975722891430041.a n = A164560 (n + 1)

end A164560

/-!
# A164561: Triangle with elements A120070(m,n)/A120072(m,n) read by rows, m>=2, 1<=n

The programs for A164561, there is no canonical definition to state claims against.
-/

/-! ## A164561.P3840051449100703216

`gcd((n-comp[∑[n]])²², A120070(n+2))`
-/

namespace A164561.P3840051449100703216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2) ^ 2) (A120070 (n + 2))

end

end A164561.P3840051449100703216

/-! ## A164561.P13769567137180669264

`A120070(n+2)/A120072(n+2)`
-/

namespace A164561.P13769567137180669264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (A120072 (n + 2) : ℚ)

end

end A164561.P13769567137180669264

/-! ## A164561.P12876740294604979593

`gcd(A120070(n+2), A133821(n+1))`
-/

namespace A164561.P12876740294604979593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120070 (n + 2)) (A133821 (n + 1))

end

end A164561.P12876740294604979593

/-! ## A164561.P5650569937543523047

`sqrt(A165447(n+2))/A120072(n+2)`
-/

namespace A164561.P5650569937543523047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165447 (n + 2) : ℝ) / (A120072 (n + 2) : ℝ)

end

end A164561.P5650569937543523047

/-! ## A164561.P17320302703207848697

`gcd(A133819(n+1)², sqrt(A165447(n+2)))`
-/

namespace A164561.P17320302703207848697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133819 (n + 1) ^ 2) (SequenceMachineLib.roundAway (Real.sqrt (A165447 (n + 2) : ℝ)))

end

end A164561.P17320302703207848697

/-! ## A164561.P590576056667065396

`sqrt(gcd(A133821(n+1)², A165447(n+2)))`
-/

namespace A164561.P590576056667065396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A133821 (n + 1) ^ 2) (A165447 (n + 2)) : ℝ)

end

end A164561.P590576056667065396

/-! ## A164561.P17838065111723563479

`gcd(∑[A133128(n)]+1, A140978(n+1)²)`
-/

namespace A164561.P17838065111723563479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A140978 (n + 1) ^ 2)

end

end A164561.P17838065111723563479

/-! ## A164561.P8065214795959220367

`A120070(n+2)/A172370(A061579(n)+2)`
-/

namespace A164561.P8065214795959220367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (A172370 (A061579 n + 2).toNat : ℚ)

end

end A164561.P8065214795959220367

/-! ## A164561.P13891043252800262885

`A120070(n+2)/abs(A172157(A080036(n+1)))`
-/

namespace A164561.P13891043252800262885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (|A172157 (A080036 (n + 1)).toNat| : ℚ)

end

end A164561.P13891043252800262885

/-!
# A164562: Taylor series coefficients of phi(-q^3)*phi(q)/phi(q^2), where phi is Euler's function.

The programs for A164562, there is no canonical definition to state claims against.
-/

/-! ## A164562.P7979233521483518298

`A087960(n)%A000034(A266648(n))`
-/

namespace A164562.P7979233521483518298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087960 n) (A000034 (A266648 n).toNat)

end

end A164562.P7979233521483518298

/-! ## A164562.P14280095961711076094

`Δ[A263449(n)]%A000034(A266648(n))`
-/

namespace A164562.P14280095961711076094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000034 (A266648 n).toNat)

end

end A164562.P14280095961711076094

/-! ## A164562.P5142660198231448259

`A067998(A098884(n))^A000538(n)`
-/

namespace A164562.P5142660198231448259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067998 (A098884 n).toNat : ℚ) ^ (A000538 n : ℤ)

end

end A164562.P5142660198231448259

/-! ## A164562.P11844648009746483201

`A014019(A020706(n))^∑[n]`
-/

namespace A164562.P11844648009746483201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A020706 n).toNat ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164562.P11844648009746483201

/-! ## A164562.P10847039973545552463

`A151763(xor(12, A005898(n+1)))`
-/

namespace A164562.P10847039973545552463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (Int.xor 12 (A005898 (n + 1))).toNat

end

end A164562.P10847039973545552463

/-!
# A164563: A positive integer n is included if the distinct odd numerical values of substrings in the binary representation of n are all coprime to each other.

The programs for A164563, there is no canonical definition to state claims against.
-/

/-! ## A164563.P17336369711367477826

`eq[char[A164564(n+1)], A151933(n)]`
-/

namespace A164563.P17336369711367477826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164564 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164563.P17336369711367477826

/-! ## A164563.P4741460953444537747

`lt[A344234(n+1), A086858(3*n+5)]+1`
-/

namespace A164563.P4741460953444537747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086858 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A164563.P4741460953444537747

/-! ## A164563.P8265709814105740030

`lt[A185150(n+1), A034190(A020639(n+1))]`
-/

namespace A164563.P8265709814105740030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034190 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164563.P8265709814105740030

/-! ## A164563.P2835252426448780337

`eq[A280986(A000010(3*n+2)), A327103(n)]`
-/

namespace A164563.P2835252426448780337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280986 (A000010 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164563.P2835252426448780337

/-!
# A164564: A positive integer n is included if there are at least two distinct odd numerical values of substrings in the binary representation of n that are not coprime to each other.

The programs for A164564, there is no canonical definition to state claims against.
-/

/-! ## A164564.P10099094752226339807

`comp[floor(A164563(n+1)/2)]`
-/

namespace A164564.P10099094752226339807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164563 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164564.P10099094752226339807

/-! ## A164564.P506647416317142738

`comp[A123108(A164563(n+1))]`
-/

namespace A164564.P506647416317142738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A164563 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164564.P506647416317142738

/-! ## A164564.P6153582345501476153

`comp[A110654(A164563(n+1)-1)]`
-/

namespace A164564.P6153582345501476153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A164563 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164564.P6153582345501476153

/-! ## A164564.P9540677740163714521

`eq[char[A164563(n+1)], A000007(n)]`
-/

namespace A164564.P9540677740163714521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164563 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164564.P9540677740163714521

/-! ## A164564.P9483755299590561075

`eq[char[A164563(n+1)], A000038(n)]`
-/

namespace A164564.P9483755299590561075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164563 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164564.P9483755299590561075

/-! ## A164564.P1894362586346640719

`eq[char[A164563(n+1)], A285476(n)]`
-/

namespace A164564.P1894362586346640719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164563 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164564.P1894362586346640719

/-!
# A164565: A156977/3.

The programs for A164565, there is no canonical definition to state claims against.
-/

/-! ## A164565.P9209103776564753972

`sqrt(A036745(n+1))/3`
-/

namespace A164565.P9209103776564753972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036745 (n + 1) : ℝ) / 3

end

end A164565.P9209103776564753972

/-! ## A164565.P589611394277714305

`floor(A054038(n+1)/3)`
-/

namespace A164565.P589611394277714305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054038 (n + 1) : ℚ) / 3⌋

end

end A164565.P589611394277714305

/-! ## A164565.P698413784095550136

`floor(A066825(n+34)/3)`
-/

namespace A164565.P698413784095550136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066825 (n + 34) : ℚ) / 3⌋

end

end A164565.P698413784095550136

/-! ## A164565.P10192215738449201150

`ceil(A054038(A000027(n+1))/3)`
-/

namespace A164565.P10192215738449201150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054038 (A000027 (n + 1)).toNat : ℚ) / 3⌉

end

end A164565.P10192215738449201150

/-! ## A164565.P17411037900911460698

`ceil((A054038(n+1)+char[A054007(n+1)])/3)`
-/

namespace A164565.P17411037900911460698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054007 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054038 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 3⌉

end

end A164565.P17411037900911460698

/-! ## A164565.P13495008932145680060

`ceil((A054038(n+1)+char[A054033(n+1)])/3)`
-/

namespace A164565.P13495008932145680060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054033 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054038 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 3⌉

end

end A164565.P13495008932145680060

/-! ## A164565.P15698740248384451881

`ceil(A054038(n+1)%Δ[A235724(n+1)]/3)`
-/

namespace A164565.P15698740248384451881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A054038 (n + 1)) (f1 (n + 1) - f1 n) : ℚ) / 3⌉

end

end A164565.P15698740248384451881

/-! ## A164565.P8804317210569226656

`ceil((A054038(n+1)+char[A053998(3*(n+1))])/3)`
-/

namespace A164565.P8804317210569226656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053998 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054038 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 3⌉

end

end A164565.P8804317210569226656

/-!
# A164566: Primes p such that 7*p-6 and 7*p+6 are also prime numbers.

The programs for A164566, the canonical program `A164566.P13004933412815303573` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164566 has offset 1).

The definition of A164566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164566.P13004933412815303573

`∩[A023225(n+1), A136052(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A164566

/-- `∩[A023225(n+1), A136052(n+1)]` -/
def P13004933412815303573.Spec : Prop :=
  ∀ n, (P13004933412815303573.a n : ℤ) = A164566 (n + 1)

theorem P13004933412815303573.correct : P13004933412815303573.Spec := by
  intro n
  simp only [A164566, Nat.add_sub_cancel]

end A164566

/-! ## A164566.P11230495882427732782

`ceil(p?[A136072(n+1)-12]/7)`
-/

namespace A164566.P11230495882427732782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136072 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 7⌉

end

end A164566.P11230495882427732782

namespace A164566

/-- `ceil(p?[A136072(n+1)-12]/7)` -/
def P11230495882427732782.Spec : Prop :=
  ∀ n, P11230495882427732782.a n = A164566 (n + 1)

end A164566

/-! ## A164566.P11791490869788814899

`∩[A024900(n+1), A136052(n+1)]`
-/

namespace A164566.P11791490869788814899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164566.P11791490869788814899

namespace A164566

/-- `∩[A024900(n+1), A136052(n+1)]` -/
def P11791490869788814899.Spec : Prop :=
  ∀ n, (P11791490869788814899.a n : ℤ) = A164566 (n + 1)

end A164566

/-! ## A164566.P8049569328978623198

`A014963(round(p?[A136072(n+1)-12]/7)+1)`
-/

namespace A164566.P8049569328978623198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136072 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 7) + 1).toNat

end

end A164566.P8049569328978623198

namespace A164566

/-- `A014963(round(p?[A136072(n+1)-12]/7)+1)` -/
def P8049569328978623198.Spec : Prop :=
  ∀ n, P8049569328978623198.a n = A164566 (n + 1)

end A164566

/-!
# A164567: Primes p such that 5*p-6 and 5*p+6 are prime numbers.

The programs for A164567, there is no canonical definition to state claims against.
-/

/-! ## A164567.P11901829473367437380

`p?[eq[6, A325142(5*n)]]`
-/

namespace A164567.P11901829473367437380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (5 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164567.P11901829473367437380

/-! ## A164567.P2596808917810642257

`p?[A283442(A087681(n+1))]`
-/

namespace A164567.P2596808917810642257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A087681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164567.P2596808917810642257

/-! ## A164567.P3665093484683209013

`record[A006530(eq[6, A325142(5*n)])]`
-/

namespace A164567.P3665093484683209013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164567.P3665093484683209013

/-! ## A164567.P14309850184662888930

`record[A014963(eq[6, A325142(5*n)])]`
-/

namespace A164567.P14309850184662888930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164567.P14309850184662888930

/-! ## A164567.P11662228097363845364

`record[A020639(eq[6, A325142(5*n)])]`
-/

namespace A164567.P11662228097363845364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164567.P11662228097363845364

/-!
# A164568: Primes p such that 9*p-10 and 9*p+10 are prime numbers.

The programs for A164568, there is no canonical definition to state claims against.
-/

/-! ## A164568.P6729740045364602654

`record[p?[A007913(A087683(n+2))]]`
-/

namespace A164568.P6729740045364602654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A087683 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164568.P6729740045364602654

/-! ## A164568.P8366628973722430658

`record[A277708(A087683(n+2))]`
-/

namespace A164568.P8366628973722430658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (A087683 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164568.P8366628973722430658

/-! ## A164568.P12102927846910248356

`p?[record[A054576(A087683(n+1))]]`
-/

namespace A164568.P12102927846910248356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A087683 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164568.P12102927846910248356

/-! ## A164568.P12164832902753932530

`record[A014963(A007913(A087683(n+3)))]`
-/

namespace A164568.P12164832902753932530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007913 (A087683 (n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164568.P12164832902753932530

/-! ## A164568.P384629189048737166

`p?[xor(A001951(n), A153172(n))]`
-/

namespace A164568.P384629189048737166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001951 n) (A153172 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164568.P384629189048737166

/-!
# A164569: Primes p such that 11*p+8 are prime numbers.

The programs for A164569, the canonical program `A164569.P6473822451751528247` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164569 has offset 1).

The definition of A164569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164569.P11650851600579151313

`p?[A108725(n+1)+1]`
-/

namespace A164569.P11650851600579151313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108725 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164569.P11650851600579151313

namespace A164569

/-- `p?[A108725(n+1)+1]` -/
def P11650851600579151313.Spec : Prop :=
  ∀ n, P11650851600579151313.a n = A164569 (n + 1)

end A164569

/-! ## A164569.P4402577351790776817

`p?[A107992(n+1)-1]`
-/

namespace A164569.P4402577351790776817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107992 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164569.P4402577351790776817

namespace A164569

/-- `p?[A107992(n+1)-1]` -/
def P4402577351790776817.Spec : Prop :=
  ∀ n, P4402577351790776817.a n = A164569 (n + 1)

end A164569

/-! ## A164569.P6473822451751528247

`p?[floor(A141855(n+1)/11)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164569

/-- `p?[floor(A141855(n+1)/11)]` -/
def P6473822451751528247.Spec : Prop :=
  ∀ n, P6473822451751528247.a n = A164569 (n + 1)

theorem P6473822451751528247.correct : P6473822451751528247.Spec := by
  intro n
  simp only [A164569, Nat.add_sub_cancel]

end A164569

/-! ## A164569.P6449318725786875234

`p?[lt[A000005(2*n+9*n+8), 3]]`
-/

namespace A164569.P6449318725786875234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + (9 * n + 8))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164569.P6449318725786875234

namespace A164569

/-- `p?[lt[A000005(2*n+9*n+8), 3]]` -/
def P6449318725786875234.Spec : Prop :=
  ∀ n, (P6449318725786875234.a n : ℤ) = A164569 (n + 1)

end A164569

/-! ## A164569.P15047589066016456506

`p?[n*A001222(A017485(n))]`
-/

namespace A164569.P15047589066016456506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A017485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164569.P15047589066016456506

namespace A164569

/-- `p?[n*A001222(A017485(n))]` -/
def P15047589066016456506.Spec : Prop :=
  ∀ n, P15047589066016456506.a n = A164569 (n + 1)

end A164569

/-!
# A164570: Primes p such that 8*p-3 and 8*p+3 are also prime numbers.

The programs for A164570, the canonical program `A164570.P17997441851036447944` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164570 has offset 1).

The definition of A164570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164570.P17997441851036447944

`∩[A005125(n+1), A023229(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A164570

/-- `∩[A005125(n+1), A023229(n+1)]` -/
def P17997441851036447944.Spec : Prop :=
  ∀ n, (P17997441851036447944.a n : ℤ) = A164570 (n + 1)

theorem P17997441851036447944.correct : P17997441851036447944.Spec := by
  intro n
  simp only [A164570, Nat.add_sub_cancel]

end A164570

/-! ## A164570.P12937815355609416064

`A006530(∩[A001749(n+1), A088763(n+1)])`
-/

namespace A164570.P12937815355609416064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164570.P12937815355609416064

namespace A164570

/-- `A006530(∩[A001749(n+1), A088763(n+1)])` -/
def P12937815355609416064.Spec : Prop :=
  ∀ n, P12937815355609416064.a n = A164570 (n + 1)

end A164570

/-! ## A164570.P18177077474914626291

`p?[record[A117358(A087695(n+1))]]`
-/

namespace A164570.P18177077474914626291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A087695 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164570.P18177077474914626291

namespace A164570

/-- `p?[record[A117358(A087695(n+1))]]` -/
def P18177077474914626291.Spec : Prop :=
  ∀ n, P18177077474914626291.a n = A164570 (n + 1)

end A164570

/-! ## A164570.P13181528993485107904

`p?[record[A117358(2*A088763(n+1))]]`
-/

namespace A164570.P13181528993485107904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A088763 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164570.P13181528993485107904

namespace A164570

/-- `p?[record[A117358(2*A088763(n+1))]]` -/
def P13181528993485107904.Spec : Prop :=
  ∀ n, P13181528993485107904.a n = A164570 (n + 1)

end A164570

/-! ## A164570.P9952190655822406762

`p?[A174571(A088763(n+1))]`
-/

namespace A164570.P9952190655822406762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A088763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164570.P9952190655822406762

namespace A164570

/-- `p?[A174571(A088763(n+1))]` -/
def P9952190655822406762.Spec : Prop :=
  ∀ n, P9952190655822406762.a n = A164570 (n + 1)

end A164570

/-!
# A164571: Numbers n such that n and n+3 are prime powers.

The programs for A164571, there is no canonical definition to state claims against.
-/

/-! ## A164571.P12040181199788741397

`∩[A000961(n+1), A181062(n+1)-2]`
-/

namespace A164571.P12040181199788741397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164571.P12040181199788741397

/-! ## A164571.P5494637101248376959

`eq[A290480(n+1), A290480(n+4)]+1`
-/

namespace A164571.P5494637101248376959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164571.P5494637101248376959

/-! ## A164571.P2032632906131227409

`eq[A066341(n+3), A231813(n)]`
-/

namespace A164571.P2032632906131227409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066341 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164571.P2032632906131227409

/-! ## A164571.P1712717172228192507

`record[A028233(n+1)/A178637(n+4)]`
-/

namespace A164571.P1712717172228192507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028233 (n + 1) : ℚ) / (A178637 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164571.P1712717172228192507

/-! ## A164571.P15222912723647504277

`record[A100994(n+1)/A178637(n+4)]`
-/

namespace A164571.P15222912723647504277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100994 (n + 1) : ℚ) / (A178637 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164571.P15222912723647504277

/-!
# A164572: Numbers k such that k and k+4 are both prime powers.

The programs for A164572, there is no canonical definition to state claims against.
-/

/-! ## A164572.P12502605716538848955

`record[A034699(A000961(n+1)+4)-4]`
-/

namespace A164572.P12502605716538848955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A000961 (n + 1) + 4).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P12502605716538848955

/-! ## A164572.P16871028674385099626

`record[A324388(A324388(n+1)+4)-4]`
-/

namespace A164572.P16871028674385099626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (A324388 (n + 1) + 4).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P16871028674385099626

/-! ## A164572.P7086146271009155045

`record[A354933(n+1)/A303759(n+5)]`
-/

namespace A164572.P7086146271009155045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354933 (n + 1) : ℚ) / (A303759 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P7086146271009155045

/-! ## A164572.P7731352509460319141

`record[A100994(A000961(n+5)-4)]`
-/

namespace A164572.P7731352509460319141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (A000961 (n + 5) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P7731352509460319141

/-! ## A164572.P10892911195049589913

`record[A028233(A000961(n+1)+4)-4]`
-/

namespace A164572.P10892911195049589913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A000961 (n + 1) + 4).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P10892911195049589913

/-! ## A164572.P4470336491082132583

`record[A034684(A000961(n+1)+4)-4]`
-/

namespace A164572.P4470336491082132583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A000961 (n + 1) + 4).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P4470336491082132583

/-! ## A164572.P6152702289768870113

`record[A028233(A028233(n+1)+4)-4]`
-/

namespace A164572.P6152702289768870113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A028233 (n + 1) + 4).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P6152702289768870113

/-! ## A164572.P10720782897822040914

`record[A034684(A034684(n+1)+4)-4]`
-/

namespace A164572.P10720782897822040914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A034684 (n + 1) + 4).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P10720782897822040914

/-! ## A164572.P7678316806468503259

`record[A010055(n+5)*A034699(n+1)]`
-/

namespace A164572.P7678316806468503259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 5) * A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P7678316806468503259

/-! ## A164572.P11439695207951756308

`record[A028233(n+1)/A028236(n+5)]`
-/

namespace A164572.P11439695207951756308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028233 (n + 1) : ℚ) / (A028236 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P11439695207951756308

/-! ## A164572.P9073349454546288653

`record[A028233(n+1)/A303759(n+5)]`
-/

namespace A164572.P9073349454546288653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028233 (n + 1) : ℚ) / (A303759 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P9073349454546288653

/-! ## A164572.P8249533575486549652

`record[A100994(n+1)/A303759(n+5)]`
-/

namespace A164572.P8249533575486549652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100994 (n + 1) : ℚ) / (A303759 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P8249533575486549652

/-! ## A164572.P14555548889717069361

`record[A345993(n+1)/A303759(n+5)]`
-/

namespace A164572.P14555548889717069361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345993 (n + 1) : ℚ) / (A303759 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P14555548889717069361

/-! ## A164572.P1559124674864511176

`record[A034684(n+1)%A034684(n+5)]`
-/

namespace A164572.P1559124674864511176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034684 (n + 1)) (A034684 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P1559124674864511176

/-! ## A164572.P4188802378838938826

`record[A345993(n+1)%A345998(n+5)]`
-/

namespace A164572.P4188802378838938826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345993 (n + 1)) (A345998 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P4188802378838938826

/-! ## A164572.P1139347658184691071

`record[(n+1)%A047994(A047994(n+1)+5)]`
-/

namespace A164572.P1139347658184691071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A047994 (A047994 (n + 1) + 5).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164572.P1139347658184691071

/-!
# A164573: Numbers n such that n and n+5 are prime powers.

The programs for A164573, there is no canonical definition to state claims against.
-/

/-! ## A164573.P14986023268679365477

`∩[A000961(n+1)-5, A000961(n+1)]`
-/

namespace A164573.P14986023268679365477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164573.P14986023268679365477

/-! ## A164573.P5695581936965696825

`∩[A059046(n+1)-5, A059046(n+1)]`
-/

namespace A164573.P5695581936965696825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164573.P5695581936965696825

/-! ## A164573.P2608966197447902061

`∩[A144711(n+1)-5, A144711(n+1)]`
-/

namespace A164573.P2608966197447902061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144711 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164573.P2608966197447902061

/-! ## A164573.P4211097457014679838

`∩[A246655(n+1)-5, A246655(n+1)]`
-/

namespace A164573.P4211097457014679838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164573.P4211097457014679838

/-!
# A164574: Numbers k such that k and k+6 are both prime powers.

The programs for A164574, there is no canonical definition to state claims against.
-/

/-! ## A164574.P17095384199739663669

`record[A034699(A034699(n+1)+6)-6]`
-/

namespace A164574.P17095384199739663669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A034699 (n + 1) + 6).toNat - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164574.P17095384199739663669

/-! ## A164574.P14393174915468280060

`record[A324388(A324388(n+1)+6)-6]`
-/

namespace A164574.P14393174915468280060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (A324388 (n + 1) + 6).toNat - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164574.P14393174915468280060

/-! ## A164574.P7835777338688207032

`record[A345993(A345993(n+1)+6)-6]`
-/

namespace A164574.P7835777338688207032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (A345993 (n + 1) + 6).toNat - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164574.P7835777338688207032

/-! ## A164574.P16197318214444160258

`record[A034699(n+1)/A052128(n+7)]`
-/

namespace A164574.P16197318214444160258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) : ℚ) / (A052128 (n + 7) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164574.P16197318214444160258

/-! ## A164574.P4634251573904214032

`record[A028233(n+1)%A028233(n+7)]`
-/

namespace A164574.P4634251573904214032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028233 (n + 1)) (A028233 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164574.P4634251573904214032

/-! ## A164574.P2562582909141897739

`record[A130065(n+1)%A130065(n+7)]`
-/

namespace A164574.P2562582909141897739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130065 (n + 1)) (A130065 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164574.P2562582909141897739

/-! ## A164574.P12916589618967320266

`eq[A327778(n+6), A327778(n)]`
-/

namespace A164574.P12916589618967320266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327778 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164574.P12916589618967320266

/-!
# A164575: a(n) = n! * [x^n] 2*(tan(x))^2*(sec(x) + tan(x)).

The programs for A164575, there is no canonical definition to state claims against.
-/

/-! ## A164575.P855161263045275840

`record[A181937(n)]-A309845(n)`
-/

namespace A164575.P855161263045275840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A309845 n

end

end A164575.P855161263045275840

/-! ## A164575.P10942215597595986867

`A000111(n+2)-A309845(n)`
-/

namespace A164575.P10942215597595986867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 2) - A309845 n

end

end A164575.P10942215597595986867

/-! ## A164575.P1268531513133997184

`2*(A225688(n)-A000111(n))`
-/

namespace A164575.P1268531513133997184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A225688 n - A000111 n)

end

end A164575.P1268531513133997184

/-! ## A164575.P13425683957476383950

`record[A010094(n+1)]-A309845(n)`
-/

namespace A164575.P13425683957476383950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A309845 n

end

end A164575.P13425683957476383950

/-! ## A164575.P2115998539622930994

`A008282(A034856(n+1))-A009006(n)`
-/

namespace A164575.P2115998539622930994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A034856 (n + 1)).toNat - A009006 n

end

end A164575.P2115998539622930994

/-!
# A164576: Integer averages of the set of the first positive squares up to some n^2.

The programs for A164576, the canonical program `A164576.P18103695545217688182` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164576 has offset 1).

The definition of A164576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164576.P18103695545217688182

`A000330(A007310(n+1))/A007310(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164576

/-- `A000330(A007310(n+1))/A007310(n+1)` -/
def P18103695545217688182.Spec : Prop :=
  ∀ n, P18103695545217688182.a n = (A164576 (n + 1) : ℚ)

end A164576

/-! ## A164576.P4861080159513634812

`∑[(n%2+1)*(4*n+1)]`
-/

namespace A164576.P4861080159513634812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 1) * (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164576.P4861080159513634812

namespace A164576

/-- `∑[(n%2+1)*(4*n+1)]` -/
def P4861080159513634812.Spec : Prop :=
  ∀ n, (P4861080159513634812.a n : ℤ) = A164576 (n + 1)

end A164576

/-! ## A164576.P9072548297409939423

`∑[(4*n+1)*gcd(2, n+1)]`
-/

namespace A164576.P9072548297409939423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 1) * Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164576.P9072548297409939423

namespace A164576

/-- `∑[(4*n+1)*gcd(2, n+1)]` -/
def P9072548297409939423.Spec : Prop :=
  ∀ n, (P9072548297409939423.a n : ℤ) = A164576 (n + 1)

end A164576

/-! ## A164576.P10121050545459467753

`∑[(2*n+2*n+1)*(and(1, n)+1)]`
-/

namespace A164576.P10121050545459467753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (2 * n + 1)) * (Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164576.P10121050545459467753

namespace A164576

/-- `∑[(2*n+2*n+1)*(and(1, n)+1)]` -/
def P10121050545459467753.Spec : Prop :=
  ∀ n, (P10121050545459467753.a n : ℤ) = A164576 (n + 1)

end A164576

/-! ## A164576.P13078065153248230252

`∑[lt[or(6, n-1), n]]+n*xor(1, n+1)+1`
-/

namespace A164576.P13078065153248230252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n * Nat.xor 1 (n + 1) + 1)

end

end A164576.P13078065153248230252

namespace A164576

/-- `∑[lt[or(6, n-1), n]]+n*xor(1, n+1)+1` -/
def P13078065153248230252.Spec : Prop :=
  ∀ n, (P13078065153248230252.a n : ℤ) = A164576 (n + 1)

end A164576

/-! ## A164576.P372033539696833695

`∑[A000034(n)*(4*n+1)]`
-/

namespace A164576.P372033539696833695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * (4 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164576.P372033539696833695

namespace A164576

/-- `∑[A000034(n)*(4*n+1)]` -/
def P372033539696833695.Spec : Prop :=
  ∀ n, P372033539696833695.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P461263761575705062

`A139593(n)+A081351(n)`
-/

namespace A164576.P461263761575705062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139593 n + A081351 n

end

end A164576.P461263761575705062

namespace A164576

/-- `A139593(n)+A081351(n)` -/
def P461263761575705062.Spec : Prop :=
  ∀ n, P461263761575705062.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P3203243525003542983

`A139595(n)+A081348(n)`
-/

namespace A164576.P3203243525003542983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139595 n + A081348 n

end

end A164576.P3203243525003542983

namespace A164576

/-- `A139595(n)+A081348(n)` -/
def P3203243525003542983.Spec : Prop :=
  ∀ n, P3203243525003542983.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P7302346858576293104

`A139597(n)+A081345(n)`
-/

namespace A164576.P7302346858576293104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139597 n + A081345 n

end

end A164576.P7302346858576293104

namespace A164576

/-- `A139597(n)+A081345(n)` -/
def P7302346858576293104.Spec : Prop :=
  ∀ n, P7302346858576293104.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P4231583322829090349

`A298037(n)-A104585(n)`
-/

namespace A164576.P4231583322829090349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 n - A104585 n

end

end A164576.P4231583322829090349

namespace A164576

/-- `A298037(n)-A104585(n)` -/
def P4231583322829090349.Spec : Prop :=
  ∀ n, P4231583322829090349.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P6805672358652088431

`A298027(n)+A271675(n+1)`
-/

namespace A164576.P6805672358652088431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 n + A271675 (n + 1)

end

end A164576.P6805672358652088431

namespace A164576

/-- `A298027(n)+A271675(n+1)` -/
def P6805672358652088431.Spec : Prop :=
  ∀ n, P6805672358652088431.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P6390246538934100606

`A152749(n)+(A007494(n)+1)²`
-/

namespace A164576.P6390246538934100606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n + (A007494 n + 1) ^ 2

end

end A164576.P6390246538934100606

namespace A164576

/-- `A152749(n)+(A007494(n)+1)²` -/
def P6390246538934100606.Spec : Prop :=
  ∀ n, P6390246538934100606.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P399479539271088754

`∑[(A008586(n)+1)*A000034(n)]`
-/

namespace A164576.P399479539271088754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008586 n + 1) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164576.P399479539271088754

namespace A164576

/-- `∑[(A008586(n)+1)*A000034(n)]` -/
def P399479539271088754.Spec : Prop :=
  ∀ n, P399479539271088754.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P514692358040435864

`∑[or(1, A008574(n))*A000034(n)]`
-/

namespace A164576.P514692358040435864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008574 n) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164576.P514692358040435864

namespace A164576

/-- `∑[or(1, A008574(n))*A000034(n)]` -/
def P514692358040435864.Spec : Prop :=
  ∀ n, P514692358040435864.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P4437433560392781377

`∑[(A016777(n)+n)*A000034(n)]`
-/

namespace A164576.P4437433560392781377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + (n : ℤ)) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164576.P4437433560392781377

namespace A164576

/-- `∑[(A016777(n)+n)*A000034(n)]` -/
def P4437433560392781377.Spec : Prop :=
  ∀ n, P4437433560392781377.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P2668423403310973913

`A274757(n+1)+A114752(n+1)`
-/

namespace A164576.P2668423403310973913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274757 (n + 1) + A114752 (n + 1)

end

end A164576.P2668423403310973913

namespace A164576

/-- `A274757(n+1)+A114752(n+1)` -/
def P2668423403310973913.Spec : Prop :=
  ∀ n, P2668423403310973913.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P357668529537639302

`A338041(n+1)+A219257(n+1)`
-/

namespace A164576.P357668529537639302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338041 (n + 1) + A219257 (n + 1)

end

end A164576.P357668529537639302

namespace A164576

/-- `A338041(n+1)+A219257(n+1)` -/
def P357668529537639302.Spec : Prop :=
  ∀ n, P357668529537639302.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P650180412202547020

`A047209(n+1)+A014494(n)+n²`
-/

namespace A164576.P650180412202547020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) + (A014494 n + (n ^ 2 : ℤ))

end

end A164576.P650180412202547020

namespace A164576

/-- `A047209(n+1)+A014494(n)+n²` -/
def P650180412202547020.Spec : Prop :=
  ∀ n, P650180412202547020.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P2815169152842548351

`A035608(n+1)+A000217(A014601(n))`
-/

namespace A164576.P2815169152842548351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 (n + 1) + A000217 (A014601 n).toNat

end

end A164576.P2815169152842548351

namespace A164576

/-- `A035608(n+1)+A000217(A014601(n))` -/
def P2815169152842548351.Spec : Prop :=
  ∀ n, P2815169152842548351.a n = A164576 (n + 1)

end A164576

/-! ## A164576.P14215112797719153516

`A000217(A007310(n+1))-A062717(n+1)`
-/

namespace A164576.P14215112797719153516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007310 (n + 1)).toNat - A062717 (n + 1)

end

end A164576.P14215112797719153516

namespace A164576

/-- `A000217(A007310(n+1))-A062717(n+1)` -/
def P14215112797719153516.Spec : Prop :=
  ∀ n, P14215112797719153516.a n = A164576 (n + 1)

end A164576

/-!
# A164577: Integer averages of the first perfect cubes up to some n^3.

The programs for A164577, the canonical program `A164577.P166533466208341956` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164577 has offset 1).

The definition of A164577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164577.P166533466208341956

`A000217(A042965(n+2))²/A042965(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164577

/-- `A000217(A042965(n+2))²/A042965(n+2)` -/
def P166533466208341956.Spec : Prop :=
  ∀ n, P166533466208341956.a n = (A164577 (n + 1) : ℚ)

end A164577

/-! ## A164577.P13067548398024249981

`A078618(A042965(n+2))`
-/

namespace A164577.P13067548398024249981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078618 (A042965 (n + 2)).toNat

end

end A164577.P13067548398024249981

namespace A164577

/-- `A078618(A042965(n+2))` -/
def P13067548398024249981.Spec : Prop :=
  ∀ n, P13067548398024249981.a n = A164577 (n + 1)

end A164577

/-! ## A164577.P18220137489223446439

`record[A000217(A283971(n+1))²/(n+1)]`
-/

namespace A164577.P18220137489223446439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A283971 (n + 1)).toNat ^ 2 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164577.P18220137489223446439

namespace A164577

/-- `record[A000217(A283971(n+1))²/(n+1)]` -/
def P18220137489223446439.Spec : Prop :=
  ∀ n, P18220137489223446439.a n = (A164577 (n + 1) : ℚ)

end A164577

/-! ## A164577.P15084270380289496880

`record[A000537(gcd(n+1, A000537(n)))/(n+1)]`
-/

namespace A164577.P15084270380289496880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000537 (Int.gcd (n + 1 : ℤ) (A000537 n)) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164577.P15084270380289496880

namespace A164577

/-- `record[A000537(gcd(n+1, A000537(n)))/(n+1)]` -/
def P15084270380289496880.Spec : Prop :=
  ∀ n, P15084270380289496880.a n = (A164577 (n + 1) : ℚ)

end A164577

/-! ## A164577.P1134820402368808972

`record[A000537(A116966(n))/A116966(n)]`
-/

namespace A164577.P1134820402368808972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000537 (A116966 n).toNat : ℚ) / (A116966 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164577.P1134820402368808972

namespace A164577

/-- `record[A000537(A116966(n))/A116966(n)]` -/
def P1134820402368808972.Spec : Prop :=
  ∀ n, P1134820402368808972.a n = (A164577 (n + 1) : ℚ)

end A164577

/-! ## A164577.P14589698515639515581

`∩[A078618(n+1), A260706(n)]`
-/

namespace A164577.P14589698515639515581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164577.P14589698515639515581

namespace A164577

/-- `∩[A078618(n+1), A260706(n)]` -/
def P14589698515639515581.Spec : Prop :=
  ∀ n, (P14589698515639515581.a n : ℤ) = A164577 (n + 1)

end A164577

/-!
# A164578: Integers of the form (k+1)*(2*k+1)/12.

The programs for A164578, the canonical program `A164578.P1723425801582943821` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164578 has offset 1).

The definition of A164578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164578.P1723425801582943821

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=10, a(1)=23, a(2)=65, a(3)=94, a(4)=168`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164578

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1723425801582943821.Spec : Prop :=
  ∀ n, P1723425801582943821.a n = A164578 (n + 1)

theorem P1723425801582943821.correct : P1723425801582943821.Spec := by
  intro n
  simp only [A164578, Nat.add_sub_cancel]

end A164578

/-! ## A164578.P9649635579750352803

`∑[(Δ[(2*n)²]+1)*gcd(2, n)]`
-/

namespace A164578.P9649635579750352803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1) * (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164578.P9649635579750352803

namespace A164578

/-- `∑[(Δ[(2*n)²]+1)*gcd(2, n)]` -/
def P9649635579750352803.Spec : Prop :=
  ∀ n, P9649635579750352803.a n = A164578 (n + 1)

end A164578

/-! ## A164578.P1564333799191292436

`∑[gcd(2, n)*Δ[A007742(n)]]`
-/

namespace A164578.P1564333799191292436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164578.P1564333799191292436

namespace A164578

/-- `∑[gcd(2, n)*Δ[A007742(n)]]` -/
def P1564333799191292436.Spec : Prop :=
  ∀ n, P1564333799191292436.a n = A164578 (n + 1)

end A164578

/-! ## A164578.P8742480396124664739

`∑[A000034(n+1)*(8*n+5)]`
-/

namespace A164578.P8742480396124664739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * (8 * n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164578.P8742480396124664739

namespace A164578

/-- `∑[A000034(n+1)*(8*n+5)]` -/
def P8742480396124664739.Spec : Prop :=
  ∀ n, P8742480396124664739.a n = A164578 (n + 1)

end A164578

/-! ## A164578.P747013542367743863

`C(A047615(n+2), 2)-∑[A047615(n+1)]`
-/

namespace A164578.P747013542367743863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A047615 (n + 2)).toNat 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164578.P747013542367743863

namespace A164578

/-- `C(A047615(n+2), 2)-∑[A047615(n+1)]` -/
def P747013542367743863.Spec : Prop :=
  ∀ n, P747013542367743863.a n = A164578 (n + 1)

end A164578

/-! ## A164578.P6525389900629975041

`record[lcm(2, ∑[A047574(n+1)])+n]`
-/

namespace A164578.P6525389900629975041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164578.P6525389900629975041

namespace A164578

/-- `record[lcm(2, ∑[A047574(n+1)])+n]` -/
def P6525389900629975041.Spec : Prop :=
  ∀ n, (P6525389900629975041.a n : ℤ) = A164578 (n + 1)

end A164578

/-! ## A164578.P16707046055675720068

`∑[A042963(A014601(n)+1)]+A014601(n+1)²`
-/

namespace A164578.P16707046055675720068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A014601 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A014601 (n + 1) ^ 2

end

end A164578.P16707046055675720068

namespace A164578

/-- `∑[A042963(A014601(n)+1)]+A014601(n+1)²` -/
def P16707046055675720068.Spec : Prop :=
  ∀ n, P16707046055675720068.a n = A164578 (n + 1)

end A164578

/-! ## A164578.P13106936090710666960

`(A047270(n+1)+A008577(A047270(n+1)))/2`
-/

namespace A164578.P13106936090710666960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047270 (n + 1) + A008577 (A047270 (n + 1)).toNat : ℚ) / 2

end

end A164578.P13106936090710666960

namespace A164578

/-- `(A047270(n+1)+A008577(A047270(n+1)))/2` -/
def P13106936090710666960.Spec : Prop :=
  ∀ n, P13106936090710666960.a n = (A164578 (n + 1) : ℚ)

end A164578

/-! ## A164578.P2661339771328878054

`A078617(A168489(n+1))/2`
-/

namespace A164578.P2661339771328878054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078617 (A168489 (n + 1)).toNat : ℚ) / 2

end

end A164578.P2661339771328878054

namespace A164578

/-- `A078617(A168489(n+1))/2` -/
def P2661339771328878054.Spec : Prop :=
  ∀ n, P2661339771328878054.a n = (A164578 (n + 1) : ℚ)

end A164578

/-! ## A164578.P8584343658708837764

`∩[A078617(2*n+1), A212978(2*n+1)]/2`
-/

namespace A164578.P8584343658708837764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078617 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 (2 * n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A164578.P8584343658708837764

namespace A164578

/-- `∩[A078617(2*n+1), A212978(2*n+1)]/2` -/
def P8584343658708837764.Spec : Prop :=
  ∀ n, P8584343658708837764.a n = (A164578 (n + 1) : ℚ)

end A164578

/-! ## A164578.P1036788945551724730

`∩[A212978(2*n+1), A154293(n+2)]/2`
-/

namespace A164578.P1036788945551724730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A164578.P1036788945551724730

namespace A164578

/-- `∩[A212978(2*n+1), A154293(n+2)]/2` -/
def P1036788945551724730.Spec : Prop :=
  ∀ n, P1036788945551724730.a n = (A164578 (n + 1) : ℚ)

end A164578

/-! ## A164578.P15031447250752670585

`∩[A212978(2*n+1), A078617(n+2)]/2`
-/

namespace A164578.P15031447250752670585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078617 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A164578.P15031447250752670585

namespace A164578

/-- `∩[A212978(2*n+1), A078617(n+2)]/2` -/
def P15031447250752670585.Spec : Prop :=
  ∀ n, P15031447250752670585.a n = (A164578 (n + 1) : ℚ)

end A164578

/-!
# A164579: Integer averages of halves of first cubes of natural numbers (n^3)/2 for some n.

The programs for A164579, there is no canonical definition to state claims against.
-/

/-! ## A164579.P14189567654853452401

`record[A273943(A164577(n+2))]`
-/

namespace A164579.P14189567654853452401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A164577 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164579.P14189567654853452401

/-! ## A164579.P12587289995256915549

`record[A273943(A273943(A006002(n+3)))]`
-/

namespace A164579.P12587289995256915549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A273943 (A006002 (n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164579.P12587289995256915549

/-!
# A164580: Primes of the form p^2 + (p + 1)/2 where p is also prime.

The programs for A164580, there is no canonical definition to state claims against.
-/

/-! ## A164580.P12886848796581211449

`A154427(n+1)²+(A154427(n+1)+1)/2`
-/

namespace A164580.P12886848796581211449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154427 (n + 1) ^ 2 : ℚ) + (A154427 (n + 1) + 1 : ℚ) / 2

end

end A164580.P12886848796581211449

/-! ## A164580.P325085329957476647

`A093918(A154427(n+1))`
-/

namespace A164580.P325085329957476647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093918 (A154427 (n + 1)).toNat

end

end A164580.P325085329957476647

/-! ## A164580.P856206722809829019

`A317186(p?[A154427(n+1)])`
-/

namespace A164580.P856206722809829019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164580.P856206722809829019

/-! ## A164580.P11333699283940142159

`A317186(or(1, A154427(n+1)))`
-/

namespace A164580.P11333699283940142159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 (Int.lor 1 (A154427 (n + 1))).toNat

end

end A164580.P11333699283940142159

/-! ## A164580.P14645496120114420494

`A317186(∏{p}[A154427(n+1), #])`
-/

namespace A164580.P14645496120114420494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A164580.P14645496120114420494

/-! ## A164580.P9268650280079545805

`A317186(A154427(n+1))+A055672(A055672(n))`
-/

namespace A164580.P9268650280079545805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 (A154427 (n + 1)).toNat + A055672 (A055672 n).toNat

end

end A164580.P9268650280079545805

/-! ## A164580.P15417054050522324187

`A011655(A118680(n+1))*A317186(A154427(n+1))`
-/

namespace A164580.P15417054050522324187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A118680 (n + 1)).toNat * A317186 (A154427 (n + 1)).toNat

end

end A164580.P15417054050522324187

/-! ## A164580.P14215917108185240409

`A011655(A226089(n+1))*A317186(A154427(n+1))`
-/

namespace A164580.P14215917108185240409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A226089 (n + 1)).toNat * A317186 (A154427 (n + 1)).toNat

end

end A164580.P14215917108185240409

/-! ## A164580.P17186483449719950115

`A011655(A000124(n))*A317186(A154427(n+1))`
-/

namespace A164580.P17186483449719950115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A000124 n).toNat * A317186 (A154427 (n + 1)).toNat

end

end A164580.P17186483449719950115

/-! ## A164580.P4056224638001062796

`A118680(2*A154427(n+1))`
-/

namespace A164580.P4056224638001062796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (2 * A154427 (n + 1)).toNat

end

end A164580.P4056224638001062796

/-!
# A164581: a(n) = 5*a(n - 1) + a(n - 2), with a(0)=1, a(1)=2.

The programs for A164581, the canonical program `A164581.P7253888553980870521` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164581 has offset 0).

The definition of A164581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+a(n-2)` (program `A164581.P7253888553980870521`, by `A164581.P7253888553980870521.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164581.P7253888553980870521

`5*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164581

/-- `5*a(n-1)+a(n-2)` -/
def P7253888553980870521.Spec : Prop :=
  ∀ n, (P7253888553980870521.a n : ℤ) = A164581 n

theorem P7253888553980870521.correct : P7253888553980870521.Spec := by
  intro n
  simp only [A164581]

end A164581

/-! ## A164581.P628461938602122952

`a(n-2)+lcm(5, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A164581.P628461938602122952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Nat.lcm 5 (a (n - 1))

end

end A164581.P628461938602122952

namespace A164581

/-- `a(n-2)+lcm(5, a(n-1))` -/
def P628461938602122952.Spec : Prop :=
  ∀ n, (P628461938602122952.a n : ℤ) = A164581 n

end A164581

/-! ## A164581.P177400094127282520

`a(n-2)-5*floor(-a(n-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A164581.P177400094127282520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - 5 * (-a (n - 1))

end

end A164581.P177400094127282520

namespace A164581

/-- `a(n-2)-5*floor(-a(n-1))` -/
def P177400094127282520.Spec : Prop :=
  ∀ n, P177400094127282520.a n = A164581 n

end A164581

/-! ## A164581.P6747535542827251885

`6*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A164581.P6747535542827251885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A164581.P6747535542827251885

namespace A164581

/-- `6*a(n-1)-(a(n-1)-a(n-2))` -/
def P6747535542827251885.Spec : Prop :=
  ∀ n, P6747535542827251885.a n = A164581 n

end A164581

/-! ## A164581.P5100998502497486892

`(A087130(n)+A015449(n))/3`
-/

namespace A164581.P5100998502497486892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087130 n + A015449 n : ℚ) / 3

end

end A164581.P5100998502497486892

namespace A164581

/-- `(A087130(n)+A015449(n))/3` -/
def P5100998502497486892.Spec : Prop :=
  ∀ n, P5100998502497486892.a n = (A164581 n : ℚ)

end A164581

/-! ## A164581.P11606591099609292225

`A015449(n)+A052918(n)-A100237(n)`
-/

namespace A164581.P11606591099609292225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015449 n + (A052918 n - A100237 n)

end

end A164581.P11606591099609292225

namespace A164581

/-- `A015449(n)+A052918(n)-A100237(n)` -/
def P11606591099609292225.Spec : Prop :=
  ∀ n, P11606591099609292225.a n = A164581 n

end A164581

/-! ## A164581.P13097571828906638096

`A015449(n+1)+A015449(n)-A052918(n)`
-/

namespace A164581.P13097571828906638096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015449 (n + 1) + (A015449 n - A052918 n)

end

end A164581.P13097571828906638096

namespace A164581

/-- `A015449(n+1)+A015449(n)-A052918(n)` -/
def P13097571828906638096.Spec : Prop :=
  ∀ n, P13097571828906638096.a n = A164581 n

end A164581

/-!
# A164582: a(n) = 5*a(n - 1) - a(n - 2), with n>2, a(1)=2, a(2)=3.

The programs for A164582, the canonical program `A164582.P12284815794475739126` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164582 has offset 1).

The definition of A164582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)` (program `A164582.P12284815794475739126`, by `A164582.P12284815794475739126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164582.P12284815794475739126

`5*a(n-1)-a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164582

/-- `5*a(n-1)-a(n-2)` -/
def P12284815794475739126.Spec : Prop :=
  ∀ n, P12284815794475739126.a n = A164582 (n + 1)

theorem P12284815794475739126.correct : P12284815794475739126.Spec := by
  intro n
  simp only [A164582, Nat.add_sub_cancel]

end A164582

/-! ## A164582.P9619386231104812566

`(a(n-1)²+17)/a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A164582.P9619386231104812566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (a (n - 1) ^ 2 + 17) / a (n - 2)

end

end A164582.P9619386231104812566

namespace A164582

/-- `(a(n-1)²+17)/a(n-2)` -/
def P9619386231104812566.Spec : Prop :=
  ∀ n, P9619386231104812566.a n = (A164582 (n + 1) : ℚ)

end A164582

/-! ## A164582.P7962141130602364093

`lcm(5, a(n-1))-a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A164582.P7962141130602364093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2)

end

end A164582.P7962141130602364093

namespace A164582

/-- `lcm(5, a(n-1))-a(n-2)` -/
def P7962141130602364093.Spec : Prop :=
  ∀ n, P7962141130602364093.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P12571646145051588808

`A237255(A004277(n))`
-/

namespace A164582.P12571646145051588808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237255 (A004277 n).toNat

end

end A164582.P12571646145051588808

namespace A164582

/-- `A237255(A004277(n))` -/
def P12571646145051588808.Spec : Prop :=
  ∀ n, P12571646145051588808.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P12863175964719377105

`A237255(A004275(n+1))`
-/

namespace A164582.P12863175964719377105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237255 (A004275 (n + 1)).toNat

end

end A164582.P12863175964719377105

namespace A164582

/-- `A237255(A004275(n+1))` -/
def P12863175964719377105.Spec : Prop :=
  ∀ n, P12863175964719377105.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P6371953510487837136

`A237255(A004273(n)+1)`
-/

namespace A164582.P6371953510487837136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237255 (A004273 n + 1).toNat

end

end A164582.P6371953510487837136

namespace A164582

/-- `A237255(A004273(n)+1)` -/
def P6371953510487837136.Spec : Prop :=
  ∀ n, P6371953510487837136.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P6124696568656490245

`A237255(A008486(n)-n)`
-/

namespace A164582.P6124696568656490245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237255 (A008486 n - (n : ℤ)).toNat

end

end A164582.P6124696568656490245

namespace A164582

/-- `A237255(A008486(n)-n)` -/
def P6124696568656490245.Spec : Prop :=
  ∀ n, P6124696568656490245.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P3102751762595934764

`2*A002310(n)-A004254(n)`
-/

namespace A164582.P3102751762595934764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002310 n - A004254 n

end

end A164582.P3102751762595934764

namespace A164582

/-- `2*A002310(n)-A004254(n)` -/
def P3102751762595934764.Spec : Prop :=
  ∀ n, P3102751762595934764.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P7772776855885144458

`A217787(A008486(n))+A002310(n)`
-/

namespace A164582.P7772776855885144458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (A008486 n).toNat + A002310 n

end

end A164582.P7772776855885144458

namespace A164582

/-- `A217787(A008486(n))+A002310(n)` -/
def P7772776855885144458.Spec : Prop :=
  ∀ n, P7772776855885144458.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P2364057500226704717

`A217787(A008585(n))+A002310(n)`
-/

namespace A164582.P2364057500226704717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (A008585 n).toNat + A002310 n

end

end A164582.P2364057500226704717

namespace A164582

/-- `A217787(A008585(n))+A002310(n)` -/
def P2364057500226704717.Spec : Prop :=
  ∀ n, P2364057500226704717.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P11330397201765698391

`2*A217787(A016777(n))-A004254(n)`
-/

namespace A164582.P11330397201765698391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217787 (A016777 n).toNat - A004254 n

end

end A164582.P11330397201765698391

namespace A164582

/-- `2*A217787(A016777(n))-A004254(n)` -/
def P11330397201765698391.Spec : Prop :=
  ∀ n, P11330397201765698391.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P5279762467401135058

`A217787(A008585(n))+A217787(A016777(n))`
-/

namespace A164582.P5279762467401135058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (A008585 n).toNat + A217787 (A016777 n).toNat

end

end A164582.P5279762467401135058

namespace A164582

/-- `A217787(A008585(n))+A217787(A016777(n))` -/
def P5279762467401135058.Spec : Prop :=
  ∀ n, P5279762467401135058.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P15873598536304321730

`A003501(n)-2*A004254(n)`
-/

namespace A164582.P15873598536304321730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 n - 2 * A004254 n

end

end A164582.P15873598536304321730

namespace A164582

/-- `A003501(n)-2*A004254(n)` -/
def P15873598536304321730.Spec : Prop :=
  ∀ n, P15873598536304321730.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P13504257106296644527

`A004253(n+2)-(A054477(n)+A002320(n))`
-/

namespace A164582.P13504257106296644527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) - (A054477 n + A002320 n)

end

end A164582.P13504257106296644527

namespace A164582

/-- `A004253(n+2)-(A054477(n)+A002320(n))` -/
def P13504257106296644527.Spec : Prop :=
  ∀ n, P13504257106296644527.a n = A164582 (n + 1)

end A164582

/-! ## A164582.P4833942762028653233

`A004253(n+2)+A099867(n)-A099868(n)`
-/

namespace A164582.P4833942762028653233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) + (A099867 n - A099868 n)

end

end A164582.P4833942762028653233

namespace A164582

/-- `A004253(n+2)+A099867(n)-A099868(n)` -/
def P4833942762028653233.Spec : Prop :=
  ∀ n, P4833942762028653233.a n = A164582 (n + 1)

end A164582

/-!
# A164583: a(n) = 4^n*(2n + 1)^2.

The programs for A164583, the canonical program `A164583.P3180638901913928689` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164583 has offset 0).

The definition of A164583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(2*n+1)²` (program `A164583.P3180638901913928689`, by `A164583.P3180638901913928689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164583.P3180638901913928689

`4^n*(2*n+1)²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164583

/-- `4^n*(2*n+1)²` -/
def P3180638901913928689.Spec : Prop :=
  ∀ n, (P3180638901913928689.a n : ℤ) = A164583 n

theorem P3180638901913928689.correct : P3180638901913928689.Spec := by
  intro n
  simp only [A164583]

end A164583

/-! ## A164583.P15238136114542608824

`A014480(n)²`
-/

namespace A164583.P15238136114542608824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n ^ 2

end

end A164583.P15238136114542608824

namespace A164583

/-- `A014480(n)²` -/
def P15238136114542608824.Spec : Prop :=
  ∀ n, P15238136114542608824.a n = A164583 n

end A164583

/-! ## A164583.P7359083054337123675

`lcm(Δ[n²]², 4^n)`
-/

namespace A164583.P7359083054337123675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (4 ^ n : ℤ)

end

end A164583.P7359083054337123675

namespace A164583

/-- `lcm(Δ[n²]², 4^n)` -/
def P7359083054337123675.Spec : Prop :=
  ∀ n, (P7359083054337123675.a n : ℤ) = A164583 n

end A164583

/-! ## A164583.P14397621710794482641

`(2^n*xor(1, 2*n))^2`
-/

namespace A164583.P14397621710794482641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.xor 1 (2 * n)) ^ 2

end

end A164583.P14397621710794482641

namespace A164583

/-- `(2^n*xor(1, 2*n))^2` -/
def P14397621710794482641.Spec : Prop :=
  ∀ n, (P14397621710794482641.a n : ℤ) = A164583 n

end A164583

/-! ## A164583.P11856170336418394286

`A014477(2*n)`
-/

namespace A164583.P11856170336418394286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014477 (2 * n)

end

end A164583.P11856170336418394286

namespace A164583

/-- `A014477(2*n)` -/
def P11856170336418394286.Spec : Prop :=
  ∀ n, P11856170336418394286.a n = A164583 n

end A164583

/-! ## A164583.P14836222189914923997

`∑[A052951(n)]²`
-/

namespace A164583.P14836222189914923997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A164583.P14836222189914923997

namespace A164583

/-- `∑[A052951(n)]²` -/
def P14836222189914923997.Spec : Prop :=
  ∀ n, P14836222189914923997.a n = A164583 n

end A164583

/-! ## A164583.P7140035087457882317

`Δ[A048497(n)]²`
-/

namespace A164583.P7140035087457882317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A164583.P7140035087457882317

namespace A164583

/-- `Δ[A048497(n)]²` -/
def P7140035087457882317.Spec : Prop :=
  ∀ n, P7140035087457882317.a n = A164583 n

end A164583

/-! ## A164583.P9561112697147742111

`(A118417(n)/2)²`
-/

namespace A164583.P9561112697147742111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A118417 n : ℚ) / 2) ^ 2

end

end A164583.P9561112697147742111

namespace A164583

/-- `(A118417(n)/2)²` -/
def P9561112697147742111.Spec : Prop :=
  ∀ n, P9561112697147742111.a n = (A164583 n : ℚ)

end A164583

/-! ## A164583.P16010093481064589076

`A093968(Δ[n²])²`
-/

namespace A164583.P16010093481064589076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A164583.P16010093481064589076

namespace A164583

/-- `A093968(Δ[n²])²` -/
def P16010093481064589076.Spec : Prop :=
  ∀ n, P16010093481064589076.a n = A164583 n

end A164583

/-! ## A164583.P10183815782708554346

`A132344(Δ[n²])²`
-/

namespace A164583.P10183815782708554346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132344 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A164583.P10183815782708554346

namespace A164583

/-- `A132344(Δ[n²])²` -/
def P10183815782708554346.Spec : Prop :=
  ∀ n, P10183815782708554346.a n = A164583 n

end A164583

/-! ## A164583.P6979019139932139310

`A316386(Δ[n²])²`
-/

namespace A164583.P6979019139932139310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A164583.P6979019139932139310

namespace A164583

/-- `A316386(Δ[n²])²` -/
def P6979019139932139310.Spec : Prop :=
  ∀ n, P6979019139932139310.a n = A164583 n

end A164583

/-! ## A164583.P3854634145945928655

`A382500(Δ[n²])²`
-/

namespace A164583.P3854634145945928655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382500 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A164583.P3854634145945928655

namespace A164583

/-- `A382500(Δ[n²])²` -/
def P3854634145945928655.Spec : Prop :=
  ∀ n, P3854634145945928655.a n = A164583 n

end A164583

/-! ## A164583.P17059358815542056127

`A007758(Δ[n²])/2`
-/

namespace A164583.P17059358815542056127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A164583.P17059358815542056127

namespace A164583

/-- `A007758(Δ[n²])/2` -/
def P17059358815542056127.Spec : Prop :=
  ∀ n, P17059358815542056127.a n = (A164583 n : ℚ)

end A164583

/-! ## A164583.P10290812338590008454

`(A143126(n+1)/2)²`
-/

namespace A164583.P10290812338590008454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A143126 (n + 1) : ℚ) / 2) ^ 2

end

end A164583.P10290812338590008454

namespace A164583

/-- `(A143126(n+1)/2)²` -/
def P10290812338590008454.Spec : Prop :=
  ∀ n, P10290812338590008454.a n = (A164583 n : ℚ)

end A164583

/-! ## A164583.P11631561982501499268

`(A271771(n+1)+n)²`
-/

namespace A164583.P11631561982501499268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271771 (n + 1) + (n : ℤ)) ^ 2

end

end A164583.P11631561982501499268

namespace A164583

/-- `(A271771(n+1)+n)²` -/
def P11631561982501499268.Spec : Prop :=
  ∀ n, P11631561982501499268.a n = A164583 n

end A164583

/-! ## A164583.P11362330368210969883

`(A208658(n+1)+n+1)²`
-/

namespace A164583.P11362330368210969883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A208658 (n + 1) + (n + 1 : ℤ)) ^ 2

end

end A164583.P11362330368210969883

namespace A164583

/-- `(A208658(n+1)+n+1)²` -/
def P11362330368210969883.Spec : Prop :=
  ∀ n, P11362330368210969883.a n = A164583 n

end A164583

/-! ## A164583.P16343344353722663313

`(A086950(n+1)/(n+1))²`
-/

namespace A164583.P16343344353722663313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A086950 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A164583.P16343344353722663313

namespace A164583

/-- `(A086950(n+1)/(n+1))²` -/
def P16343344353722663313.Spec : Prop :=
  ∀ n, P16343344353722663313.a n = (A164583 n : ℚ)

end A164583

/-! ## A164583.P14172724205957801871

`(1-A168298(2*n+1))/2`
-/

namespace A164583.P14172724205957801871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A168298 (2 * n + 1) : ℚ) / 2

end

end A164583.P14172724205957801871

namespace A164583

/-- `(1-A168298(2*n+1))/2` -/
def P14172724205957801871.Spec : Prop :=
  ∀ n, P14172724205957801871.a n = (A164583 n : ℚ)

end A164583

/-! ## A164583.P18100088153259543139

`(A248917(2*n+1)-1)/2`
-/

namespace A164583.P18100088153259543139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248917 (2 * n + 1) - 1 : ℚ) / 2

end

end A164583.P18100088153259543139

namespace A164583

/-- `(A248917(2*n+1)-1)/2` -/
def P18100088153259543139.Spec : Prop :=
  ∀ n, P18100088153259543139.a n = (A164583 n : ℚ)

end A164583

/-! ## A164583.P16523768167408686363

`(A048497(n+1)-A048497(n))²`
-/

namespace A164583.P16523768167408686363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048497 (n + 1) - A048497 n) ^ 2

end

end A164583.P16523768167408686363

namespace A164583

/-- `(A048497(n+1)-A048497(n))²` -/
def P16523768167408686363.Spec : Prop :=
  ∀ n, P16523768167408686363.a n = A164583 n

end A164583

/-!
# A164584: Expansion of (1 + 6*x - 12*x^2 - 8*x^3)/(1 - 24*x^2 + 16*x^4).

The programs for A164584, the canonical program `A164584.P13327556387570279466` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164584 has offset 0).

The definition of A164584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164584.P13327556387570279466

`2^n*Δ[A143608(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164584

/-- `2^n*Δ[A143608(n)]` -/
def P13327556387570279466.Spec : Prop :=
  ∀ n, P13327556387570279466.a n = A164584 n

theorem P13327556387570279466.correct : P13327556387570279466.Spec := by
  intro n
  simp only [A164584]

end A164584

/-! ## A164584.P1140730049045100179

`2^n*A001333(3-or(1, 2-n))`
-/

namespace A164584.P1140730049045100179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001333 (3 - Int.lor 1 (2 - (n : ℤ))).toNat

end

end A164584.P1140730049045100179

namespace A164584

/-- `2^n*A001333(3-or(1, 2-n))` -/
def P1140730049045100179.Spec : Prop :=
  ∀ n, P1140730049045100179.a n = A164584 n

end A164584

/-! ## A164584.P17651072943365461448

`Δ[A143608(n)]*A000079(n)`
-/

namespace A164584.P17651072943365461448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A164584.P17651072943365461448

namespace A164584

/-- `Δ[A143608(n)]*A000079(n)` -/
def P17651072943365461448.Spec : Prop :=
  ∀ n, P17651072943365461448.a n = A164584 n

end A164584

/-! ## A164584.P3348080089850983981

`2^n*A001541(A110654(n))`
-/

namespace A164584.P3348080089850983981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001541 (A110654 n).toNat

end

end A164584.P3348080089850983981

namespace A164584

/-- `2^n*A001541(A110654(n))` -/
def P3348080089850983981.Spec : Prop :=
  ∀ n, P3348080089850983981.a n = A164584 n

end A164584

/-! ## A164584.P1023061844818845158

`A000079(n)*A001541(ceil(n/2))`
-/

namespace A164584.P1023061844818845158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001541 ⌈(n : ℚ) / 2⌉.toNat

end

end A164584.P1023061844818845158

namespace A164584

/-- `A000079(n)*A001541(ceil(n/2))` -/
def P1023061844818845158.Spec : Prop :=
  ∀ n, P1023061844818845158.a n = A164584 n

end A164584

/-! ## A164584.P1428537435605221862

`2^n*A001541(∑[A000035(n)])`
-/

namespace A164584.P1428537435605221862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001541 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164584.P1428537435605221862

namespace A164584

/-- `2^n*A001541(∑[A000035(n)])` -/
def P1428537435605221862.Spec : Prop :=
  ∀ n, P1428537435605221862.a n = A164584 n

end A164584

/-! ## A164584.P2528125867396792576

`2^n*A001541(A004526(n+1))`
-/

namespace A164584.P2528125867396792576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001541 (A004526 (n + 1)).toNat

end

end A164584.P2528125867396792576

namespace A164584

/-- `2^n*A001541(A004526(n+1))` -/
def P2528125867396792576.Spec : Prop :=
  ∀ n, P2528125867396792576.a n = A164584 n

end A164584

/-! ## A164584.P13530663757027747347

`2^n*A097564(A007310(n+1))`
-/

namespace A164584.P13530663757027747347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A097564 (A007310 (n + 1)).toNat

end

end A164584.P13530663757027747347

namespace A164584

/-- `2^n*A097564(A007310(n+1))` -/
def P13530663757027747347.Spec : Prop :=
  ∀ n, P13530663757027747347.a n = A164584 n

end A164584

/-!
# A164586: Row sums of generalized rhombic triangle A164585.

The programs for A164586, there is no canonical definition to state claims against.
-/

/-! ## A164586.P7547422194329543197

`A034973(A242587(n))+1-n`
-/

namespace A164586.P7547422194329543197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A242587 n).toNat + (1 - (n : ℤ))

end

end A164586.P7547422194329543197

/-! ## A164586.P1145654054252778212

`A008618(A018064(2*(n+2))+2)`
-/

namespace A164586.P1145654054252778212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A018064 (2 * (n + 2)) + 2).toNat

end

end A164586.P1145654054252778212

/-! ## A164586.P4421431317457669680

`floor(A000217(A151541(n+1))^(1/3))`
-/

namespace A164586.P4421431317457669680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (A151541 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A164586.P4421431317457669680

/-! ## A164586.P13575472062637648462

`A073933(A137955(n))+A061136(n)`
-/

namespace A164586.P13575472062637648462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (A137955 n).toNat + A061136 n

end

end A164586.P13575472062637648462

/-!
# A164587: a(n) = 2*a(n - 2) for n > 2; a(1) = 1, a(2) = 8.

The programs for A164587, the canonical program `A164587.P9288897237418232949` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164587 has offset 1).

The definition of A164587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A164587.P9288897237418232949`, by `A164587.P9288897237418232949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164587.P9288897237418232949

`2*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164587

/-- `2*a(n-2)` -/
def P9288897237418232949.Spec : Prop :=
  ∀ n, (P9288897237418232949.a n : ℤ) = A164587 (n + 1)

theorem P9288897237418232949.correct : P9288897237418232949.Spec := by
  intro n
  simp only [A164587, Nat.add_sub_cancel]

end A164587

/-! ## A164587.P16036003566033035073

`∏[2/a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A164587.P16036003566033035073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164587.P16036003566033035073

namespace A164587

/-- `∏[2/a(n-1)]` -/
def P16036003566033035073.Spec : Prop :=
  ∀ n, P16036003566033035073.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P411780909724309981

`2^∑[1-a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A164587.P411780909724309981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A164587.P411780909724309981

namespace A164587

/-- `2^∑[1-a(n-1)]` -/
def P411780909724309981.Spec : Prop :=
  ∀ n, P411780909724309981.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P15956652925047306443

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A164587.P15956652925047306443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) + a (n - 2)

end

end A164587.P15956652925047306443

namespace A164587

/-- `a(n-2)+a(n-2)` -/
def P15956652925047306443.Spec : Prop :=
  ∀ n, (P15956652925047306443.a n : ℤ) = A164587 (n + 1)

theorem P15956652925047306443.correct : P15956652925047306443.Spec := by
  intro n
  simp only [A164587, Nat.add_sub_cancel, A164587.P15956652925047306443.a, A164587.P9288897237418232949.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164587

/-! ## A164587.P9944741313906260945

`a(n-2)/(1-1/2)` with `a(0)=1, a(1)=8`
-/

namespace A164587.P9944741313906260945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A164587.P9944741313906260945

namespace A164587

/-- `a(n-2)/(1-1/2)` -/
def P9944741313906260945.Spec : Prop :=
  ∀ n, P9944741313906260945.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P284811077870555130

`A112032(n+1)`
-/

namespace A164587.P284811077870555130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 (n + 1)

end

end A164587.P284811077870555130

namespace A164587

/-- `A112032(n+1)` -/
def P284811077870555130.Spec : Prop :=
  ∀ n, P284811077870555130.a n = A164587 (n + 1)

end A164587

/-! ## A164587.P941457647235210882

`2^∑[A049071(n)]`
-/

namespace A164587.P941457647235210882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049071 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A164587.P941457647235210882

namespace A164587

/-- `2^∑[A049071(n)]` -/
def P941457647235210882.Spec : Prop :=
  ∀ n, P941457647235210882.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P15978604055322382744

`2^A084964(n+1)`
-/

namespace A164587.P15978604055322382744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A084964 (n + 1) : ℤ)

end

end A164587.P15978604055322382744

namespace A164587

/-- `2^A084964(n+1)` -/
def P15978604055322382744.Spec : Prop :=
  ∀ n, P15978604055322382744.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P9797487440394469864

`2^A267182(n+2)`
-/

namespace A164587.P9797487440394469864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A267182 (n + 2) : ℤ)

end

end A164587.P9797487440394469864

namespace A164587

/-- `2^A267182(n+2)` -/
def P9797487440394469864.Spec : Prop :=
  ∀ n, P9797487440394469864.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P2550581031363545419

`2^A097065(n+3)`
-/

namespace A164587.P2550581031363545419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A097065 (n + 3) : ℤ)

end

end A164587.P2550581031363545419

namespace A164587

/-- `2^A097065(n+3)` -/
def P2550581031363545419.Spec : Prop :=
  ∀ n, P2550581031363545419.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P14524031193908823724

`A143095(xor(1, n+1))`
-/

namespace A164587.P14524031193908823724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (Nat.xor 1 (n + 1))

end

end A164587.P14524031193908823724

namespace A164587

/-- `A143095(xor(1, n+1))` -/
def P14524031193908823724.Spec : Prop :=
  ∀ n, P14524031193908823724.a n = A164587 (n + 1)

end A164587

/-! ## A164587.P8715497163293329796

`2^(Δ[A097066(n)]+1)`
-/

namespace A164587.P8715497163293329796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097066 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n + 1 : ℤ)

end

end A164587.P8715497163293329796

namespace A164587

/-- `2^(Δ[A097066(n)]+1)` -/
def P8715497163293329796.Spec : Prop :=
  ∀ n, P8715497163293329796.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P11231964919941163629

`2^A267184(2*(n+2))`
-/

namespace A164587.P11231964919941163629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A267184 (2 * (n + 2)) : ℤ)

end

end A164587.P11231964919941163629

namespace A164587

/-- `2^A267184(2*(n+2))` -/
def P11231964919941163629.Spec : Prop :=
  ∀ n, P11231964919941163629.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P7484156307006974170

`A135530(n-(-1)^n+2)`
-/

namespace A164587.P7484156307006974170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 ((n : ℤ) - (-1) ^ n + 2).toNat

end

end A164587.P7484156307006974170

namespace A164587

/-- `A135530(n-(-1)^n+2)` -/
def P7484156307006974170.Spec : Prop :=
  ∀ n, P7484156307006974170.a n = A164587 (n + 1)

end A164587

/-! ## A164587.P18072430031565407836

`2^(A166517(n+1)-(n+1))`
-/

namespace A164587.P18072430031565407836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A166517 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A164587.P18072430031565407836

namespace A164587

/-- `2^(A166517(n+1)-(n+1))` -/
def P18072430031565407836.Spec : Prop :=
  ∀ n, P18072430031565407836.a n = (A164587 (n + 1) : ℚ)

end A164587

/-! ## A164587.P7822977265409386972

`A000079(A084964(n+1))`
-/

namespace A164587.P7822977265409386972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A084964 (n + 1)).toNat

end

end A164587.P7822977265409386972

namespace A164587

/-- `A000079(A084964(n+1))` -/
def P7822977265409386972.Spec : Prop :=
  ∀ n, P7822977265409386972.a n = A164587 (n + 1)

end A164587

/-! ## A164587.P14298461060212025216

`A143095(A004442(n+1))`
-/

namespace A164587.P14298461060212025216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (A004442 (n + 1)).toNat

end

end A164587.P14298461060212025216

namespace A164587

/-- `A143095(A004442(n+1))` -/
def P14298461060212025216.Spec : Prop :=
  ∀ n, P14298461060212025216.a n = A164587 (n + 1)

end A164587

/-! ## A164587.P6390761587785415967

`A060546(A165754(n+1))`
-/

namespace A164587.P6390761587785415967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A165754 (n + 1)).toNat

end

end A164587.P6390761587785415967

namespace A164587

/-- `A060546(A165754(n+1))` -/
def P6390761587785415967.Spec : Prop :=
  ∀ n, P6390761587785415967.a n = A164587 (n + 1)

end A164587

/-!
# A164588: a(n) = ((3 + sqrt(18))*(5 + sqrt(8))^n + (3 - sqrt(18))*(5 - sqrt(8))^n)/6.

The programs for A164588, the canonical program `A164588.P12986370712123123630` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164588 has offset 0).

The definition of A164588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164588.P12986370712123123630

`10*a(n-1)-17*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164588

/-- `10*a(n-1)-17*a(n-2)` -/
def P12986370712123123630.Spec : Prop :=
  ∀ n, P12986370712123123630.a n = A164588 n

theorem P12986370712123123630.correct : P12986370712123123630.Spec := by
  intro n
  simp only [A164588]

end A164588

/-! ## A164588.P1432849643436307148

`((3+sqrt(18))*(5+sqrt(8))^n+(3-sqrt(18))*(5-sqrt(8))^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164588.P1432849643436307148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (18 : ℝ)) * (5 + Real.sqrt (8 : ℝ)) ^ n + (3 - Real.sqrt (18 : ℝ)) * (5 - Real.sqrt (8 : ℝ)) ^ n) / 6

end

end A164588.P1432849643436307148

namespace A164588

/-- `((3+sqrt(18))*(5+sqrt(8))^n+(3-sqrt(18))*(5-sqrt(8))^n)/6` -/
def P1432849643436307148.Spec : Prop :=
  ∀ n, P1432849643436307148.a n = (A164588 n : ℝ)

end A164588

/-! ## A164588.P14420627459376698099

`or(1, Δ[A154340(A028310(n))])`
-/

namespace A164588.P14420627459376698099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154340 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A164588.P14420627459376698099

namespace A164588

/-- `or(1, Δ[A154340(A028310(n))])` -/
def P14420627459376698099.Spec : Prop :=
  ∀ n, P14420627459376698099.a n = A164588 n

end A164588

/-! ## A164588.P13193885073546217063

`2*A164609(n)-A164543(n)`
-/

namespace A164588.P13193885073546217063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164609 n - A164543 n

end

end A164588.P13193885073546217063

namespace A164588

/-- `2*A164609(n)-A164543(n)` -/
def P13193885073546217063.Spec : Prop :=
  ∀ n, P13193885073546217063.a n = A164588 n

end A164588

/-! ## A164588.P6459546091385483802

`2*A154340(n+1)-A164547(n)`
-/

namespace A164588.P6459546091385483802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154340 (n + 1) - A164547 n

end

end A164588.P6459546091385483802

namespace A164588

/-- `2*A154340(n+1)-A164547(n)` -/
def P6459546091385483802.Spec : Prop :=
  ∀ n, P6459546091385483802.a n = A164588 n

end A164588

/-! ## A164588.P1461303266256750127

`A000007(n)+Δ[A154340(A028310(n))]`
-/

namespace A164588.P1461303266256750127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154340 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A164588.P1461303266256750127

namespace A164588

/-- `A000007(n)+Δ[A154340(A028310(n))]` -/
def P1461303266256750127.Spec : Prop :=
  ∀ n, P1461303266256750127.a n = A164588 n

end A164588

/-! ## A164588.P11704411659043322923

`A036987(2*n)+Δ[A154340(A028310(n))]`
-/

namespace A164588.P11704411659043322923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154340 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (f1 (n + 1) - f1 n)

end

end A164588.P11704411659043322923

namespace A164588

/-- `A036987(2*n)+Δ[A154340(A028310(n))]` -/
def P11704411659043322923.Spec : Prop :=
  ∀ n, P11704411659043322923.a n = A164588 n

end A164588

/-! ## A164588.P1695002705894469499

`A090192(2*n)+Δ[A154340(A028310(n))]`
-/

namespace A164588.P1695002705894469499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154340 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * n) + (f1 (n + 1) - f1 n)

end

end A164588.P1695002705894469499

namespace A164588

/-- `A090192(2*n)+Δ[A154340(A028310(n))]` -/
def P1695002705894469499.Spec : Prop :=
  ∀ n, P1695002705894469499.a n = A164588 n

end A164588

/-! ## A164588.P1744049658752013454

`A097331(2*n)+Δ[A154340(A028310(n))]`
-/

namespace A164588.P1744049658752013454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154340 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n) + (f1 (n + 1) - f1 n)

end

end A164588.P1744049658752013454

namespace A164588

/-- `A097331(2*n)+Δ[A154340(A028310(n))]` -/
def P1744049658752013454.Spec : Prop :=
  ∀ n, P1744049658752013454.a n = A164588 n

end A164588

/-! ## A164588.P27673434137466199

`or(1, A154340(n+1)-A154340(A028310(n)))`
-/

namespace A164588.P27673434137466199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A154340 (n + 1) - A154340 (A028310 n).toNat)

end

end A164588.P27673434137466199

namespace A164588

/-- `or(1, A154340(n+1)-A154340(A028310(n)))` -/
def P27673434137466199.Spec : Prop :=
  ∀ n, P27673434137466199.a n = A164588 n

end A164588

/-! ## A164588.P17437643389107062120

`A154340(n+1)+A000007(n)-A154340(A028310(n))`
-/

namespace A164588.P17437643389107062120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154340 (n + 1) + (A000007 n - A154340 (A028310 n).toNat)

end

end A164588.P17437643389107062120

namespace A164588

/-- `A154340(n+1)+A000007(n)-A154340(A028310(n))` -/
def P17437643389107062120.Spec : Prop :=
  ∀ n, P17437643389107062120.a n = A164588 n

end A164588

/-! ## A164588.P6428338829781590877

`Δ[A164547(n)-A154340(n+1)]`
-/

namespace A164588.P6428338829781590877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164547 n - A154340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164588.P6428338829781590877

namespace A164588

/-- `Δ[A164547(n)-A154340(n+1)]` -/
def P6428338829781590877.Spec : Prop :=
  ∀ n, P6428338829781590877.a n = A164588 n

end A164588

/-!
# A164589: a(n) = ((4 + 3*sqrt(2))*(1 + 2*sqrt(2))^n + (4 - 3*sqrt(2))*(1 - 2*sqrt(2))^n)/8.

The programs for A164589, the canonical program `A164589.P4856848706483471735` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164589 has offset 0).

The definition of A164589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164589.P4856848706483471735

`2*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164589

/-- `2*a(n-1)+7*a(n-2)` -/
def P4856848706483471735.Spec : Prop :=
  ∀ n, (P4856848706483471735.a n : ℤ) = A164589 n

theorem P4856848706483471735.correct : P4856848706483471735.Spec := by
  intro n
  simp only [A164589]

end A164589

/-! ## A164589.P17045898504093651044

`A096980(n)-A015519(n)`
-/

namespace A164589.P17045898504093651044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096980 n - A015519 n

end

end A164589.P17045898504093651044

namespace A164589

/-- `A096980(n)-A015519(n)` -/
def P17045898504093651044.Spec : Prop :=
  ∀ n, P17045898504093651044.a n = A164589 n

end A164589

/-! ## A164589.P5455202809573048103

`A305492(n)+∑[A084058(n)]`
-/

namespace A164589.P5455202809573048103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305492 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164589.P5455202809573048103

namespace A164589

/-- `A305492(n)+∑[A084058(n)]` -/
def P5455202809573048103.Spec : Prop :=
  ∀ n, P5455202809573048103.a n = A164589 n

end A164589

/-! ## A164589.P12023243680413345387

`A305492(n)+A015519(n+1)`
-/

namespace A164589.P12023243680413345387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305492 n + A015519 (n + 1)

end

end A164589.P12023243680413345387

namespace A164589

/-- `A305492(n)+A015519(n+1)` -/
def P12023243680413345387.Spec : Prop :=
  ∀ n, P12023243680413345387.a n = A164589 n

end A164589

/-! ## A164589.P7390511222969350722

`A084058(n)+3*A015519(n)`
-/

namespace A164589.P7390511222969350722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 n + 3 * A015519 n

end

end A164589.P7390511222969350722

namespace A164589

/-- `A084058(n)+3*A015519(n)` -/
def P7390511222969350722.Spec : Prop :=
  ∀ n, P7390511222969350722.a n = A164589 n

end A164589

/-! ## A164589.P11852775104789162938

`A096980(n)-A305492(n)/2`
-/

namespace A164589.P11852775104789162938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096980 n : ℚ) - (A305492 n : ℚ) / 2

end

end A164589.P11852775104789162938

namespace A164589

/-- `A096980(n)-A305492(n)/2` -/
def P11852775104789162938.Spec : Prop :=
  ∀ n, P11852775104789162938.a n = (A164589 n : ℚ)

end A164589

/-! ## A164589.P4775829716860170538

`A083100(n)-5*A015519(n)`
-/

namespace A164589.P4775829716860170538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - 5 * A015519 n

end

end A164589.P4775829716860170538

namespace A164589

/-- `A083100(n)-5*A015519(n)` -/
def P4775829716860170538.Spec : Prop :=
  ∀ n, P4775829716860170538.a n = A164589 n

end A164589

/-! ## A164589.P13157121040666942808

`A015519(n+1)+2*A015519(n)`
-/

namespace A164589.P13157121040666942808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1) + 2 * A015519 n

end

end A164589.P13157121040666942808

namespace A164589

/-- `A015519(n+1)+2*A015519(n)` -/
def P13157121040666942808.Spec : Prop :=
  ∀ n, P13157121040666942808.a n = A164589 n

end A164589

/-! ## A164589.P7246313641131072569

`A305492(n)+A305492(n+1)/2`
-/

namespace A164589.P7246313641131072569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305492 n : ℚ) + (A305492 (n + 1) : ℚ) / 2

end

end A164589.P7246313641131072569

namespace A164589

/-- `A305492(n)+A305492(n+1)/2` -/
def P7246313641131072569.Spec : Prop :=
  ∀ n, P7246313641131072569.a n = (A164589 n : ℚ)

end A164589

/-! ## A164589.P5791943511443890590

`Δ[A084136(n)+A015519(n)]-A015519(n)`
-/

namespace A164589.P5791943511443890590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 n + A015519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A015519 n

end

end A164589.P5791943511443890590

namespace A164589

/-- `Δ[A084136(n)+A015519(n)]-A015519(n)` -/
def P5791943511443890590.Spec : Prop :=
  ∀ n, P5791943511443890590.a n = A164589 n

end A164589

/-!
# A164591: a(n) = ((4 + sqrt(18))*(4 + sqrt(8))^n + (4 - sqrt(18))*(4 - sqrt(8))^n)/8 .

The programs for A164591, the canonical program `A164591.P12975036692292858857` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164591 has offset 0).

The definition of A164591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164591.P12975036692292858857

`8*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164591

/-- `8*a(n-1)-8*a(n-2)` -/
def P12975036692292858857.Spec : Prop :=
  ∀ n, P12975036692292858857.a n = A164591 n

theorem P12975036692292858857.correct : P12975036692292858857.Spec := by
  intro n
  simp only [A164591]

end A164591

/-! ## A164591.P4208875215581312370

`((4+sqrt(18))*(4+sqrt(8))^n+(4-sqrt(18))*(4-sqrt(8))^n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164591.P4208875215581312370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (18 : ℝ)) * (4 + Real.sqrt (8 : ℝ)) ^ n + (4 - Real.sqrt (18 : ℝ)) * (4 - Real.sqrt (8 : ℝ)) ^ n) / 8

end

end A164591.P4208875215581312370

namespace A164591

/-- `((4+sqrt(18))*(4+sqrt(8))^n+(4-sqrt(18))*(4-sqrt(8))^n)/8` -/
def P4208875215581312370.Spec : Prop :=
  ∀ n, P4208875215581312370.a n = (A164591 n : ℝ)

end A164591

/-! ## A164591.P12237053543078454019

`8*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A164591.P12237053543078454019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  8 * (a (n - 1) - a (n - 2))

end

end A164591.P12237053543078454019

namespace A164591

/-- `8*(a(n-1)-a(n-2))` -/
def P12237053543078454019.Spec : Prop :=
  ∀ n, P12237053543078454019.a n = A164591 n

theorem P12237053543078454019.correct : P12237053543078454019.Spec := by
  intro n
  simp only [A164591, Nat.add_sub_cancel, A164591.P12237053543078454019.a, A164591.P12975036692292858857.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164591

/-! ## A164591.P4787199695895125843

`2^(n-1)*A020727(n)`
-/

namespace A164591.P4787199695895125843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A020727 n : ℚ)

end

end A164591.P4787199695895125843

namespace A164591

/-- `2^(n-1)*A020727(n)` -/
def P4787199695895125843.Spec : Prop :=
  ∀ n, P4787199695895125843.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P8763203052330701476

`2^(n-1)*Δ[A007052(n)]`
-/

namespace A164591.P8763203052330701476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A164591.P8763203052330701476

namespace A164591

/-- `2^(n-1)*Δ[A007052(n)]` -/
def P8763203052330701476.Spec : Prop :=
  ∀ n, P8763203052330701476.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P10514529123222254914

`2^(n-1)*A003480(n+1)`
-/

namespace A164591.P10514529123222254914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A003480 (n + 1) : ℚ)

end

end A164591.P10514529123222254914

namespace A164591

/-- `2^(n-1)*A003480(n+1)` -/
def P10514529123222254914.Spec : Prop :=
  ∀ n, P10514529123222254914.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P10053140821064092584

`2^(n-2)*A007070(n+1)`
-/

namespace A164591.P10053140821064092584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A007070 (n + 1) : ℚ)

end

end A164591.P10053140821064092584

namespace A164591

/-- `2^(n-2)*A007070(n+1)` -/
def P10053140821064092584.Spec : Prop :=
  ∀ n, P10053140821064092584.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P15634035889647688615

`2^(n-2)*A204089(n+2)`
-/

namespace A164591.P15634035889647688615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A204089 (n + 2) : ℚ)

end

end A164591.P15634035889647688615

namespace A164591

/-- `2^(n-2)*A204089(n+2)` -/
def P15634035889647688615.Spec : Prop :=
  ∀ n, P15634035889647688615.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P3236947315152933431

`Δ[A131577(n)*A204089(n)]`
-/

namespace A164591.P3236947315152933431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A204089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164591.P3236947315152933431

namespace A164591

/-- `Δ[A131577(n)*A204089(n)]` -/
def P3236947315152933431.Spec : Prop :=
  ∀ n, P3236947315152933431.a n = A164591 n

end A164591

/-! ## A164591.P1314526444813383988

`record[A003480(n)*A034008(n)]`
-/

namespace A164591.P1314526444813383988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164591.P1314526444813383988

namespace A164591

/-- `record[A003480(n)*A034008(n)]` -/
def P1314526444813383988.Spec : Prop :=
  ∀ n, P1314526444813383988.a n = A164591 n

end A164591

/-! ## A164591.P6995025932033639185

`A003480(n+1)/2*∑[A011782(n)]`
-/

namespace A164591.P6995025932033639185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003480 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A164591.P6995025932033639185

namespace A164591

/-- `A003480(n+1)/2*∑[A011782(n)]` -/
def P6995025932033639185.Spec : Prop :=
  ∀ n, P6995025932033639185.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P17699126127827662507

`A003480(n+1)/2*A011782(n+1)`
-/

namespace A164591.P17699126127827662507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003480 (n + 1) : ℚ) / 2 * (A011782 (n + 1) : ℚ)

end

end A164591.P17699126127827662507

namespace A164591

/-- `A003480(n+1)/2*A011782(n+1)` -/
def P17699126127827662507.Spec : Prop :=
  ∀ n, P17699126127827662507.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P8006872190946402537

`A003480(n+1)/2*A131577(n+1)`
-/

namespace A164591.P8006872190946402537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003480 (n + 1) : ℚ) / 2 * (A131577 (n + 1) : ℚ)

end

end A164591.P8006872190946402537

namespace A164591

/-- `A003480(n+1)/2*A131577(n+1)` -/
def P8006872190946402537.Spec : Prop :=
  ∀ n, P8006872190946402537.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P2262915754200048523

`A062113(2*n+1)/2*A011782(n+1)`
-/

namespace A164591.P2262915754200048523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062113 (2 * n + 1) : ℚ) / 2 * (A011782 (n + 1) : ℚ)

end

end A164591.P2262915754200048523

namespace A164591

/-- `A062113(2*n+1)/2*A011782(n+1)` -/
def P2262915754200048523.Spec : Prop :=
  ∀ n, P2262915754200048523.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P11871382956078522393

`A217730(2*n+1)/2*A077957(2*n)`
-/

namespace A164591.P11871382956078522393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217730 (2 * n + 1) : ℚ) / 2 * (A077957 (2 * n) : ℚ)

end

end A164591.P11871382956078522393

namespace A164591

/-- `A217730(2*n+1)/2*A077957(2*n)` -/
def P11871382956078522393.Spec : Prop :=
  ∀ n, P11871382956078522393.a n = (A164591 n : ℚ)

end A164591

/-! ## A164591.P16477971936753402902

`A003480(1-A000007(n)+n)*A011782(n)`
-/

namespace A164591.P16477971936753402902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (1 - A000007 n + (n : ℤ)).toNat * A011782 n

end

end A164591.P16477971936753402902

namespace A164591

/-- `A003480(1-A000007(n)+n)*A011782(n)` -/
def P16477971936753402902.Spec : Prop :=
  ∀ n, P16477971936753402902.a n = A164591 n

end A164591

/-!
# A164592: a(n) = 10*a(n-1) - 17*a(n-2) for n > 1; a(0) = 1, a(1) = 8.

The programs for A164592, the canonical program `A164592.P14308211210235352488` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164592 has offset 0).

The definition of A164592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-17*a(n-2)` (program `A164592.P14308211210235352488`, by `A164592.P14308211210235352488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164592.P14308211210235352488

`10*a(n-1)-17*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164592

/-- `10*a(n-1)-17*a(n-2)` -/
def P14308211210235352488.Spec : Prop :=
  ∀ n, P14308211210235352488.a n = A164592 n

theorem P14308211210235352488.correct : P14308211210235352488.Spec := by
  intro n
  simp only [A164592]

end A164592

/-! ## A164592.P11258511989526372814

`((4+sqrt(18))*(5+sqrt(8))^n+(4-sqrt(18))*(5-sqrt(8))^n)/8`
-/

namespace A164592.P11258511989526372814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (18 : ℝ)) * (5 + Real.sqrt (8 : ℝ)) ^ n + (4 - Real.sqrt (18 : ℝ)) * (5 - Real.sqrt (8 : ℝ)) ^ n) / 8

end

end A164592.P11258511989526372814

namespace A164592

/-- `((4+sqrt(18))*(5+sqrt(8))^n+(4-sqrt(18))*(5-sqrt(8))^n)/8` -/
def P11258511989526372814.Spec : Prop :=
  ∀ n, P11258511989526372814.a n = (A164592 n : ℝ)

end A164592

/-! ## A164592.P18334212428889457041

`2*A164588(n)-∑[A164588(n)]`
-/

namespace A164592.P18334212428889457041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164588 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164592.P18334212428889457041

namespace A164592

/-- `2*A164588(n)-∑[A164588(n)]` -/
def P18334212428889457041.Spec : Prop :=
  ∀ n, P18334212428889457041.a n = A164592 n

end A164592

/-! ## A164592.P10382449505385571364

`2*A164588(n)-A154340(n+1)`
-/

namespace A164592.P10382449505385571364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164588 n - A154340 (n + 1)

end

end A164592.P10382449505385571364

namespace A164592

/-- `2*A164588(n)-A154340(n+1)` -/
def P10382449505385571364.Spec : Prop :=
  ∀ n, P10382449505385571364.a n = A164592 n

end A164592

/-! ## A164592.P12905924030110668556

`Δ[A164588(n)/8]`
-/

namespace A164592.P12905924030110668556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164588 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164592.P12905924030110668556

namespace A164592

/-- `Δ[A164588(n)/8]` -/
def P12905924030110668556.Spec : Prop :=
  ∀ n, P12905924030110668556.a n = (A164592 n : ℚ)

end A164592

/-!
# A164593: a(n) = ((5 + sqrt(18))*(2 + sqrt(8))^n + (5 - sqrt(18))*(2 - sqrt(8))^n)/2.

The programs for A164593, the canonical program `A164593.P6558870009680052316` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164593 has offset 0).

The definition of A164593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164593.P6558870009680052316

`4*a(n-1)+4*a(n-2)` with `a(0)=5, a(1)=22`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164593

/-- `4*a(n-1)+4*a(n-2)` -/
def P6558870009680052316.Spec : Prop :=
  ∀ n, (P6558870009680052316.a n : ℤ) = A164593 n

theorem P6558870009680052316.correct : P6558870009680052316.Spec := by
  intro n
  simp only [A164593]

end A164593

/-! ## A164593.P1002076188421619855

`4*(a(n-1)+a(n-2))` with `a(0)=5, a(1)=22`
-/

namespace A164593.P1002076188421619855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 22] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A164593.P1002076188421619855

namespace A164593

/-- `4*(a(n-1)+a(n-2))` -/
def P1002076188421619855.Spec : Prop :=
  ∀ n, (P1002076188421619855.a n : ℤ) = A164593 n

theorem P1002076188421619855.correct : P1002076188421619855.Spec := by
  intro n
  simp only [A164593, Nat.add_sub_cancel, A164593.P1002076188421619855.a, A164593.P6558870009680052316.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164593

/-! ## A164593.P13373917756552876732

`Δ[4*(a(n-1)-ceil(-a(n-2)))]` with `a(0)=1, a(1)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A164593.P13373917756552876732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  4 * (f1 (n - 1) - (-f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164593.P13373917756552876732

namespace A164593

/-- `Δ[4*(a(n-1)-ceil(-a(n-2)))]` -/
def P13373917756552876732.Spec : Prop :=
  ∀ n, P13373917756552876732.a n = A164593 n

end A164593

/-! ## A164593.P9583058386911328533

`Δ[(a(n-1)+a(n-2))/(1/2)²]` with `a(0)=1, a(1)=6`
-/

namespace A164593.P9583058386911328533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  (f1 (n - 1) + f1 (n - 2)) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164593.P9583058386911328533

namespace A164593

/-- `Δ[(a(n-1)+a(n-2))/(1/2)²]` -/
def P9583058386911328533.Spec : Prop :=
  ∀ n, P9583058386911328533.a n = (A164593 n : ℚ)

end A164593

/-! ## A164593.P6807320426980688031

`Δ[A108051(n+1)]`
-/

namespace A164593.P6807320426980688031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164593.P6807320426980688031

namespace A164593

/-- `Δ[A108051(n+1)]` -/
def P6807320426980688031.Spec : Prop :=
  ∀ n, P6807320426980688031.a n = A164593 n

end A164593

/-! ## A164593.P10560766622684126050

`Δ[2^n*A078057(n)]`
-/

namespace A164593.P10560766622684126050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164593.P10560766622684126050

namespace A164593

/-- `Δ[2^n*A078057(n)]` -/
def P10560766622684126050.Spec : Prop :=
  ∀ n, P10560766622684126050.a n = A164593 n

end A164593

/-! ## A164593.P6120935147582256110

`2^n*A048655(n+1)`
-/

namespace A164593.P6120935147582256110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048655 (n + 1)

end

end A164593.P6120935147582256110

namespace A164593

/-- `2^n*A048655(n+1)` -/
def P6120935147582256110.Spec : Prop :=
  ∀ n, P6120935147582256110.a n = A164593 n

end A164593

/-! ## A164593.P11264135111951250270

`Δ[2^n*A001333(n+1)]`
-/

namespace A164593.P11264135111951250270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164593.P11264135111951250270

namespace A164593

/-- `Δ[2^n*A001333(n+1)]` -/
def P11264135111951250270.Spec : Prop :=
  ∀ n, P11264135111951250270.a n = A164593 n

end A164593

/-! ## A164593.P2240551453480358584

`Δ[A106568(n)+A084128(n)]`
-/

namespace A164593.P2240551453480358584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106568 n + A084128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164593.P2240551453480358584

namespace A164593

/-- `Δ[A106568(n)+A084128(n)]` -/
def P2240551453480358584.Spec : Prop :=
  ∀ n, P2240551453480358584.a n = A164593 n

end A164593

/-! ## A164593.P17247170658526849415

`Δ[A048746(n)]*A000079(n)`
-/

namespace A164593.P17247170658526849415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A164593.P17247170658526849415

namespace A164593

/-- `Δ[A048746(n)]*A000079(n)` -/
def P17247170658526849415.Spec : Prop :=
  ∀ n, P17247170658526849415.a n = A164593 n

end A164593

/-! ## A164593.P9165402018288381732

`A084128(n)+A057087(n+1)`
-/

namespace A164593.P9165402018288381732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n + A057087 (n + 1)

end

end A164593.P9165402018288381732

namespace A164593

/-- `A084128(n)+A057087(n+1)` -/
def P9165402018288381732.Spec : Prop :=
  ∀ n, P9165402018288381732.a n = A164593 n

end A164593

/-! ## A164593.P15782655540965537212

`Δ[A094013(n+1)+A084128(n)]`
-/

namespace A164593.P15782655540965537212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094013 (n + 1) + A084128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164593.P15782655540965537212

namespace A164593

/-- `Δ[A094013(n+1)+A084128(n)]` -/
def P15782655540965537212.Spec : Prop :=
  ∀ n, P15782655540965537212.a n = A164593 n

end A164593

/-! ## A164593.P8345738727980290475

`A108051(n+2)-A108051(n+1)`
-/

namespace A164593.P8345738727980290475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108051 (n + 2) - A108051 (n + 1)

end

end A164593.P8345738727980290475

namespace A164593

/-- `A108051(n+2)-A108051(n+1)` -/
def P8345738727980290475.Spec : Prop :=
  ∀ n, P8345738727980290475.a n = A164593 n

end A164593

/-! ## A164593.P17433499178225535017

`A048655(n+1)*A077957(2*n)`
-/

namespace A164593.P17433499178225535017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (n + 1) * A077957 (2 * n)

end

end A164593.P17433499178225535017

namespace A164593

/-- `A048655(n+1)*A077957(2*n)` -/
def P17433499178225535017.Spec : Prop :=
  ∀ n, P17433499178225535017.a n = A164593 n

end A164593

/-! ## A164593.P3668765387221248603

`A048655(n+1)*A143095(2*n)`
-/

namespace A164593.P3668765387221248603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (n + 1) * A143095 (2 * n)

end

end A164593.P3668765387221248603

namespace A164593

/-- `A048655(n+1)*A143095(2*n)` -/
def P3668765387221248603.Spec : Prop :=
  ∀ n, P3668765387221248603.a n = A164593 n

end A164593

/-! ## A164593.P12253322795829899345

`Δ[A001333(n+1)*A011782(n+1)]`
-/

namespace A164593.P12253322795829899345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164593.P12253322795829899345

namespace A164593

/-- `Δ[A001333(n+1)*A011782(n+1)]` -/
def P12253322795829899345.Spec : Prop :=
  ∀ n, P12253322795829899345.a n = A164593 n

end A164593

/-! ## A164593.P10873945338827330750

`Δ[A001333(n+1)*A016116(2*n)]`
-/

namespace A164593.P10873945338827330750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A016116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164593.P10873945338827330750

namespace A164593

/-- `Δ[A001333(n+1)*A016116(2*n)]` -/
def P10873945338827330750.Spec : Prop :=
  ∀ n, P10873945338827330750.a n = A164593 n

end A164593

/-! ## A164593.P12639507422581529190

`A106568(n+1)+A084128(n+1)/2`
-/

namespace A164593.P12639507422581529190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106568 (n + 1) : ℚ) + (A084128 (n + 1) : ℚ) / 2

end

end A164593.P12639507422581529190

namespace A164593

/-- `A106568(n+1)+A084128(n+1)/2` -/
def P12639507422581529190.Spec : Prop :=
  ∀ n, P12639507422581529190.a n = (A164593 n : ℚ)

end A164593

/-! ## A164593.P14356573325754109880

`A048655(n+1)*A076736(2*(n+1))`
-/

namespace A164593.P14356573325754109880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (n + 1) * A076736 (2 * (n + 1))

end

end A164593.P14356573325754109880

namespace A164593

/-- `A048655(n+1)*A076736(2*(n+1))` -/
def P14356573325754109880.Spec : Prop :=
  ∀ n, P14356573325754109880.a n = A164593 n

end A164593

/-!
# A164594: a(n) = ((5 + sqrt(18))*(4 + sqrt(8))^n + (5 - sqrt(18))*(4 - sqrt(8))^n)/2.

The programs for A164594, the canonical program `A164594.P9190275772798710729` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164594 has offset 0).

The definition of A164594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164594.P9190275772798710729

`8*a(n-1)-8*a(n-2)` with `a(0)=5, a(1)=32`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164594

/-- `8*a(n-1)-8*a(n-2)` -/
def P9190275772798710729.Spec : Prop :=
  ∀ n, P9190275772798710729.a n = A164594 n

theorem P9190275772798710729.correct : P9190275772798710729.Spec := by
  intro n
  simp only [A164594]

end A164594

/-! ## A164594.P6360673525934594183

`((5+sqrt(18))*(4+sqrt(8))^n+(5-sqrt(18))*(4-sqrt(8))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164594.P6360673525934594183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (18 : ℝ)) * (4 + Real.sqrt (8 : ℝ)) ^ n + (5 - Real.sqrt (18 : ℝ)) * (4 - Real.sqrt (8 : ℝ)) ^ n) / 2

end

end A164594.P6360673525934594183

namespace A164594

/-- `((5+sqrt(18))*(4+sqrt(8))^n+(5-sqrt(18))*(4-sqrt(8))^n)/2` -/
def P6360673525934594183.Spec : Prop :=
  ∀ n, P6360673525934594183.a n = (A164594 n : ℝ)

end A164594

/-! ## A164594.P4555303302387880031

`8*(a(n-1)-a(n-2))` with `a(0)=5, a(1)=32`
-/

namespace A164594.P4555303302387880031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 32] fun n a =>
  8 * (a (n - 1) - a (n - 2))

end

end A164594.P4555303302387880031

namespace A164594

/-- `8*(a(n-1)-a(n-2))` -/
def P4555303302387880031.Spec : Prop :=
  ∀ n, P4555303302387880031.a n = A164594 n

theorem P4555303302387880031.correct : P4555303302387880031.Spec := by
  intro n
  simp only [A164594, Nat.add_sub_cancel, A164594.P4555303302387880031.a, A164594.P9190275772798710729.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164594

/-! ## A164594.P15747809136047338142

`2^n*A161941(n+1)`
-/

namespace A164594.P15747809136047338142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A161941 (n + 1)

end

end A164594.P15747809136047338142

namespace A164594

/-- `2^n*A161941(n+1)` -/
def P15747809136047338142.Spec : Prop :=
  ∀ n, P15747809136047338142.a n = A164594 n

end A164594

/-! ## A164594.P1910336052793619798

`Δ[A111566(n)]*A000079(n)`
-/

namespace A164594.P1910336052793619798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A164594.P1910336052793619798

namespace A164594

/-- `Δ[A111566(n)]*A000079(n)` -/
def P1910336052793619798.Spec : Prop :=
  ∀ n, P1910336052793619798.a n = A164594 n

end A164594

/-! ## A164594.P2344609456591660989

`Δ[A111566(n)]*record[A077957(n)]`
-/

namespace A164594.P2344609456591660989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A164594.P2344609456591660989

namespace A164594

/-- `Δ[A111566(n)]*record[A077957(n)]` -/
def P2344609456591660989.Spec : Prop :=
  ∀ n, P2344609456591660989.a n = A164594 n

end A164594

/-! ## A164594.P15896838164937963057

`Δ[A111566(n)]*A077957(2*n)`
-/

namespace A164594.P15896838164937963057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A077957 (2 * n)

end

end A164594.P15896838164937963057

namespace A164594

/-- `Δ[A111566(n)]*A077957(2*n)` -/
def P15896838164937963057.Spec : Prop :=
  ∀ n, P15896838164937963057.a n = A164594 n

end A164594

/-! ## A164594.P892223441531882291

`A001882(2*n+3)*A135530(2*n+1)`
-/

namespace A164594.P892223441531882291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 (2 * n + 3) * A135530 (2 * n + 1)

end

end A164594.P892223441531882291

namespace A164594

/-- `A001882(2*n+3)*A135530(2*n+1)` -/
def P892223441531882291.Spec : Prop :=
  ∀ n, P892223441531882291.a n = A164594 n

end A164594

/-! ## A164594.P15572996839953780074

`(A007070(n+1)+A006012(n))*A000079(n)`
-/

namespace A164594.P15572996839953780074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007070 (n + 1) + A006012 n) * A000079 n

end

end A164594.P15572996839953780074

namespace A164594

/-- `(A007070(n+1)+A006012(n))*A000079(n)` -/
def P15572996839953780074.Spec : Prop :=
  ∀ n, P15572996839953780074.a n = A164594 n

end A164594

/-! ## A164594.P14977868834891818147

`(A111566(n+1)-A111566(n))*A000079(n)`
-/

namespace A164594.P14977868834891818147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111566 (n + 1) - A111566 n) * A000079 n

end

end A164594.P14977868834891818147

namespace A164594

/-- `(A111566(n+1)-A111566(n))*A000079(n)` -/
def P14977868834891818147.Spec : Prop :=
  ∀ n, P14977868834891818147.a n = A164594 n

end A164594

/-! ## A164594.P16709279550670996222

`A114479(n+1)+A114479(n+1)-A057084(n)`
-/

namespace A164594.P16709279550670996222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114479 (n + 1) + (A114479 (n + 1) - A057084 n)

end

end A164594.P16709279550670996222

namespace A164594

/-- `A114479(n+1)+A114479(n+1)-A057084(n)` -/
def P16709279550670996222.Spec : Prop :=
  ∀ n, P16709279550670996222.a n = A164594 n

end A164594

/-! ## A164594.P9721457663320364058

`(A007052(n+1)+A006012(n+1))*A000079(n)`
-/

namespace A164594.P9721457663320364058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007052 (n + 1) + A006012 (n + 1)) * A000079 n

end

end A164594.P9721457663320364058

namespace A164594

/-- `(A007052(n+1)+A006012(n+1))*A000079(n)` -/
def P9721457663320364058.Spec : Prop :=
  ∀ n, P9721457663320364058.a n = A164594 n

end A164594

/-! ## A164594.P6928689270293995190

`(A001882(2*n+1)+A001882(2*(n+1)))*A011782(n+1)`
-/

namespace A164594.P6928689270293995190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001882 (2 * n + 1) + A001882 (2 * (n + 1))) * A011782 (n + 1)

end

end A164594.P6928689270293995190

namespace A164594

/-- `(A001882(2*n+1)+A001882(2*(n+1)))*A011782(n+1)` -/
def P6928689270293995190.Spec : Prop :=
  ∀ n, P6928689270293995190.a n = A164594 n

end A164594

/-! ## A164594.P7258696552541431390

`(A001882(2*n+1)+A001882(2*(n+1)))*A016116(2*n)`
-/

namespace A164594.P7258696552541431390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001882 (2 * n + 1) + A001882 (2 * (n + 1))) * A016116 (2 * n)

end

end A164594.P7258696552541431390

namespace A164594

/-- `(A001882(2*n+1)+A001882(2*(n+1)))*A016116(2*n)` -/
def P7258696552541431390.Spec : Prop :=
  ∀ n, P7258696552541431390.a n = A164594 n

end A164594

/-! ## A164594.P13337161520238946494

`A123357(n+1)-A057084(n)`
-/

namespace A164594.P13337161520238946494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123357 (n + 1) - A057084 n

end

end A164594.P13337161520238946494

namespace A164594

/-- `A123357(n+1)-A057084(n)` -/
def P13337161520238946494.Spec : Prop :=
  ∀ n, P13337161520238946494.a n = A164594 n

end A164594

/-! ## A164594.P2136367313269859604

`2*A114479(n+1)-A057084(n)`
-/

namespace A164594.P2136367313269859604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114479 (n + 1) - A057084 n

end

end A164594.P2136367313269859604

namespace A164594

/-- `2*A114479(n+1)-A057084(n)` -/
def P2136367313269859604.Spec : Prop :=
  ∀ n, P2136367313269859604.a n = A164594 n

end A164594

/-!
# A164595: a(n) = 10*a(n-1) - 17*a(n-2) for n > 1; a(0) = 5, a(1) = 37.

The programs for A164595, the canonical program `A164595.P9950197879068879058` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164595 has offset 0).

The definition of A164595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-17*a(n-2)` (program `A164595.P9950197879068879058`, by `A164595.P9950197879068879058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164595.P9950197879068879058

`10*a(n-1)-17*a(n-2)` with `a(0)=5, a(1)=37`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164595

/-- `10*a(n-1)-17*a(n-2)` -/
def P9950197879068879058.Spec : Prop :=
  ∀ n, P9950197879068879058.a n = A164595 n

theorem P9950197879068879058.correct : P9950197879068879058.Spec := by
  intro n
  simp only [A164595]

end A164595

/-! ## A164595.P11969949280442570313

`((5+sqrt(18))*(5+sqrt(8))^n+(5-sqrt(18))*(5-sqrt(8))^n)/2`
-/

namespace A164595.P11969949280442570313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (18 : ℝ)) * (5 + Real.sqrt (8 : ℝ)) ^ n + (5 - Real.sqrt (18 : ℝ)) * (5 - Real.sqrt (8 : ℝ)) ^ n) / 2

end

end A164595.P11969949280442570313

namespace A164595

/-- `((5+sqrt(18))*(5+sqrt(8))^n+(5-sqrt(18))*(5-sqrt(8))^n)/2` -/
def P11969949280442570313.Spec : Prop :=
  ∀ n, P11969949280442570313.a n = (A164595 n : ℝ)

end A164595

/-! ## A164595.P1875568697613843968

`A164588(n)+Δ[A084131(n)]`
-/

namespace A164595.P1875568697613843968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164588 n + (f1 (n + 1) - f1 n)

end

end A164595.P1875568697613843968

namespace A164595

/-- `A164588(n)+Δ[A084131(n)]` -/
def P1875568697613843968.Spec : Prop :=
  ∀ n, P1875568697613843968.a n = A164595 n

end A164595

/-! ## A164595.P18408352621236449924

`Δ[A164609(n)/2]-A164609(n)`
-/

namespace A164595.P18408352621236449924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164609 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A164609 n : ℚ)

end

end A164595.P18408352621236449924

namespace A164595

/-- `Δ[A164609(n)/2]-A164609(n)` -/
def P18408352621236449924.Spec : Prop :=
  ∀ n, P18408352621236449924.a n = (A164595 n : ℚ)

end A164595

/-! ## A164595.P8276452647164217063

`Δ[A164543(n)-A164547(n)]-A164543(n)`
-/

namespace A164595.P8276452647164217063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164543 n - A164547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A164543 n

end

end A164595.P8276452647164217063

namespace A164595

/-- `Δ[A164543(n)-A164547(n)]-A164543(n)` -/
def P8276452647164217063.Spec : Prop :=
  ∀ n, P8276452647164217063.a n = A164595 n

end A164595

/-! ## A164595.P10163808881347674766

`A164588(n)+Δ[2*A164588(n)-A164609(n)]`
-/

namespace A164595.P10163808881347674766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164588 n - A164609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164588 n + (f1 (n + 1) - f1 n)

end

end A164595.P10163808881347674766

namespace A164595

/-- `A164588(n)+Δ[2*A164588(n)-A164609(n)]` -/
def P10163808881347674766.Spec : Prop :=
  ∀ n, P10163808881347674766.a n = A164595 n

end A164595

/-!
# A164596: Squarefree positive integers n where at least one prime divisor of n is < the product of the smaller prime divisors of n.

The programs for A164596, there is no canonical definition to state claims against.
-/

/-! ## A164596.P16387687444754790646

`record[A007947(A291046(n+1))]`
-/

namespace A164596.P16387687444754790646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A291046 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164596.P16387687444754790646

/-! ## A164596.P6054001081211924589

`filter[A291046(n+1), A008966(#)]`
-/

namespace A164596.P6054001081211924589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A164596.P6054001081211924589

/-! ## A164596.P6613088334315334423

`filter[A291046(n+1), A354819(#)]`
-/

namespace A164596.P6613088334315334423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A164596.P6613088334315334423

/-! ## A164596.P7015518842827294864

`∩[A291046(n+1), A350352(n+1)]`
-/

namespace A164596.P7015518842827294864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P7015518842827294864

/-! ## A164596.P758551628643084797

`filter[A289484(n+1), A008966(#)]`
-/

namespace A164596.P758551628643084797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A164596.P758551628643084797

/-! ## A164596.P15947790514882384131

`filter[A289484(n+1), A354819(#)]`
-/

namespace A164596.P15947790514882384131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A164596.P15947790514882384131

/-! ## A164596.P16094266876270230365

`∩[A289484(n+1), A350352(n+1)]`
-/

namespace A164596.P16094266876270230365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P16094266876270230365

/-! ## A164596.P6990832250928716979

`∩[A289484(n+1), A365829(n+1)]`
-/

namespace A164596.P6990832250928716979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P6990832250928716979

/-! ## A164596.P6823868296503193011

`∩[A291046(n+1), A365829(n+1)]`
-/

namespace A164596.P6823868296503193011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P6823868296503193011

/-! ## A164596.P16571684068182482925

`∩[A000469(n+1), A289484(n+1)]`
-/

namespace A164596.P16571684068182482925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P16571684068182482925

/-! ## A164596.P13077334882091725000

`∩[A000469(n+1), A291046(n+1)]`
-/

namespace A164596.P13077334882091725000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P13077334882091725000

/-! ## A164596.P8133763164534578436

`∩[A120944(n+1), A289484(n+1)]`
-/

namespace A164596.P8133763164534578436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P8133763164534578436

/-! ## A164596.P15469435787277879714

`∩[A067582(n+1), A291046(n+1)]`
-/

namespace A164596.P15469435787277879714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P15469435787277879714

/-! ## A164596.P8668886728617687187

`∩[A049197(n+1), A289484(n+1)]`
-/

namespace A164596.P8668886728617687187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P8668886728617687187

/-! ## A164596.P18232393871112310527

`∩[A049197(n+1), A291046(n+1)]`
-/

namespace A164596.P18232393871112310527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P18232393871112310527

/-! ## A164596.P9638439818726134328

`∩[A087249(n+1), A289484(n+1)]`
-/

namespace A164596.P9638439818726134328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P9638439818726134328

/-! ## A164596.P15596728656909068244

`∩[A087249(n+1), A291046(n+1)]`
-/

namespace A164596.P15596728656909068244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P15596728656909068244

/-! ## A164596.P16750973649527937438

`∩[A005117(n+1), A289484(n+1)]`
-/

namespace A164596.P16750973649527937438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P16750973649527937438

/-! ## A164596.P11180567331728802263

`∩[A005117(n+1), A291046(n+1)]`
-/

namespace A164596.P11180567331728802263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P11180567331728802263

/-! ## A164596.P13397531583537158315

`∩[A167207(n+1), A289484(n+1)]`
-/

namespace A164596.P13397531583537158315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164596.P13397531583537158315

/-!
# A164597: a(n) = the largest integer such that {the n-th prime} + k(k + 1) is prime for all k where 0 <= k <= a(n).

The programs for A164597, there is no canonical definition to state claims against.
-/

/-! ## A164597.P16235908935164324791

`A208936(n+1)-1`
-/

namespace A164597.P16235908935164324791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (n + 1) - 1

end

end A164597.P16235908935164324791

/-! ## A164597.P14229396299891739495

`A002837(A208936(n+1))`
-/

namespace A164597.P14229396299891739495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A208936 (n + 1)).toNat

end

end A164597.P14229396299891739495

/-! ## A164597.P8497900671853077971

`A208645(Δ[A007504(n)])-1`
-/

namespace A164597.P8497900671853077971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (f1 (n + 1) - f1 n).toNat - 1

end

end A164597.P8497900671853077971

/-! ## A164597.P2796752860248088740

`A208645(A000040(n+1))-1`
-/

namespace A164597.P2796752860248088740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A000040 (n + 1)).toNat - 1

end

end A164597.P2796752860248088740

/-! ## A164597.P15514655436818398965

`A208645(A078444(n+1))-1`
-/

namespace A164597.P15514655436818398965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A078444 (n + 1)).toNat - 1

end

end A164597.P15514655436818398965

/-! ## A164597.P12888477952556231640

`A208645(A008578(n+2))-1`
-/

namespace A164597.P12888477952556231640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A008578 (n + 2)).toNat - 1

end

end A164597.P12888477952556231640

/-! ## A164597.P2271109163718399554

`A208645(A182986(n+2))-1`
-/

namespace A164597.P2271109163718399554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A182986 (n + 2)).toNat - 1

end

end A164597.P2271109163718399554

/-! ## A164597.P15874056458332130903

`A208645(eq[1, A032741(n)])-1`
-/

namespace A164597.P15874056458332130903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P15874056458332130903

/-! ## A164597.P13777568149315741855

`A208645(eq[2, A005127(n)])-1`
-/

namespace A164597.P13777568149315741855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P13777568149315741855

/-! ## A164597.P7133336008778123815

`A208645(eq[2, A005128(n)])-1`
-/

namespace A164597.P7133336008778123815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P7133336008778123815

/-! ## A164597.P13401216814449967998

`A208645(eq[2, A007012(n)])-1`
-/

namespace A164597.P13401216814449967998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P13401216814449967998

/-! ## A164597.P15961833036683653270

`A208645(eq[2, A053204(n)])-1`
-/

namespace A164597.P15961833036683653270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P15961833036683653270

/-! ## A164597.P9718932204898184037

`A208645(eq[2, A092976(n)])-1`
-/

namespace A164597.P9718932204898184037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P9718932204898184037

/-! ## A164597.P11908962417412382868

`A208645(eq[2, A225244(n)])-1`
-/

namespace A164597.P11908962417412382868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P11908962417412382868

/-! ## A164597.P2735404429996430444

`A208645(eq[2, A322366(n)])-1`
-/

namespace A164597.P2735404429996430444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P2735404429996430444

/-! ## A164597.P7318538783935330520

`A208645(eq[2, A327859(n)])-1`
-/

namespace A164597.P7318538783935330520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P7318538783935330520

/-! ## A164597.P3729846055259360059

`A208645(eq[2, A343371(n)])-1`
-/

namespace A164597.P3729846055259360059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A164597.P3729846055259360059

/-! ## A164597.P3296911281427207339

`A196305(n)%A208936(n+1)`
-/

namespace A164597.P3296911281427207339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A208936 (n + 1))

end

end A164597.P3296911281427207339

/-! ## A164597.P1398033714261073420

`A198277(n)%A208936(n+1)`
-/

namespace A164597.P1398033714261073420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A208936 (n + 1))

end

end A164597.P1398033714261073420

/-!
# A164598: a(n) = 12*a(n-1) - 34*a(n-2), for n > 1, with a(0) = 1, a(1) = 14.

The programs for A164598, the canonical program `A164598.P17247422304881327261` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164598 has offset 0).

The definition of A164598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-34*a(n-2)` (program `A164598.P17247422304881327261`, by `A164598.P17247422304881327261.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164598.P17247422304881327261

`12*a(n-1)-34*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164598

/-- `12*a(n-1)-34*a(n-2)` -/
def P17247422304881327261.Spec : Prop :=
  ∀ n, P17247422304881327261.a n = A164598 n

theorem P17247422304881327261.correct : P17247422304881327261.Spec := by
  intro n
  simp only [A164598]

end A164598

/-! ## A164598.P10573357541901513265

`A147957(n)+8*A081183(n)`
-/

namespace A164598.P10573357541901513265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147957 n + 8 * A081183 n

end

end A164598.P10573357541901513265

namespace A164598

/-- `A147957(n)+8*A081183(n)` -/
def P10573357541901513265.Spec : Prop :=
  ∀ n, P10573357541901513265.a n = A164598 n

end A164598

/-! ## A164598.P12465805666613458030

`((1+4*sqrt(2))*(6+sqrt(2))^n+(1-4*sqrt(2))*(6-sqrt(2))^n)/2`
-/

namespace A164598.P12465805666613458030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 4 * Real.sqrt (2 : ℝ)) * (6 + Real.sqrt (2 : ℝ)) ^ n + (1 - 4 * Real.sqrt (2 : ℝ)) * (6 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164598.P12465805666613458030

namespace A164598

/-- `((1+4*sqrt(2))*(6+sqrt(2))^n+(1-4*sqrt(2))*(6-sqrt(2))^n)/2` -/
def P12465805666613458030.Spec : Prop :=
  ∀ n, P12465805666613458030.a n = (A164598 n : ℝ)

end A164598

/-! ## A164598.P8850551377270104498

`A163458(n)+7*A081183(n)`
-/

namespace A164598.P8850551377270104498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163458 n + 7 * A081183 n

end

end A164598.P8850551377270104498

namespace A164598

/-- `A163458(n)+7*A081183(n)` -/
def P8850551377270104498.Spec : Prop :=
  ∀ n, P8850551377270104498.a n = A164598 n

end A164598

/-! ## A164598.P12738645694259317028

`A081183(n+1)+2*A081183(n)`
-/

namespace A164598.P12738645694259317028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081183 (n + 1) + 2 * A081183 n

end

end A164598.P12738645694259317028

namespace A164598

/-- `A081183(n+1)+2*A081183(n)` -/
def P12738645694259317028.Spec : Prop :=
  ∀ n, P12738645694259317028.a n = A164598 n

end A164598

/-!
# A164599: a(n) = 14*a(n-1) - 47*a(n-2), for n > 1, with a(0) = 1, a(1) = 15.

The programs for A164599, the canonical program `A164599.P4622174747435006174` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164599 has offset 0).

The definition of A164599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-47*a(n-2)` (program `A164599.P4622174747435006174`, by `A164599.P4622174747435006174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164599.P4622174747435006174

`14*a(n-1)-47*a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164599

/-- `14*a(n-1)-47*a(n-2)` -/
def P4622174747435006174.Spec : Prop :=
  ∀ n, P4622174747435006174.a n = A164599 n

theorem P4622174747435006174.correct : P4622174747435006174.Spec := by
  intro n
  simp only [A164599]

end A164599

/-! ## A164599.P9672853476515992354

`A147958(n)+8*A081184(n)`
-/

namespace A164599.P9672853476515992354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147958 n + 8 * A081184 n

end

end A164599.P9672853476515992354

namespace A164599

/-- `A147958(n)+8*A081184(n)` -/
def P9672853476515992354.Spec : Prop :=
  ∀ n, P9672853476515992354.a n = A164599 n

end A164599

/-! ## A164599.P17542471157404184930

`((1+4*sqrt(2))*(sqrt(2)+7)^n+(1-4*sqrt(2))*(7-sqrt(2))^n)/2`
-/

namespace A164599.P17542471157404184930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 4 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 7) ^ n + (1 - 4 * Real.sqrt (2 : ℝ)) * (7 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164599.P17542471157404184930

namespace A164599

/-- `((1+4*sqrt(2))*(sqrt(2)+7)^n+(1-4*sqrt(2))*(7-sqrt(2))^n)/2` -/
def P17542471157404184930.Spec : Prop :=
  ∀ n, P17542471157404184930.a n = (A164599 n : ℝ)

end A164599

/-! ## A164599.P13179931674097103318

`A081184(n+1)+A081184(n)`
-/

namespace A164599.P13179931674097103318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081184 (n + 1) + A081184 n

end

end A164599.P13179931674097103318

namespace A164599

/-- `A081184(n+1)+A081184(n)` -/
def P13179931674097103318.Spec : Prop :=
  ∀ n, P13179931674097103318.a n = A164599 n

end A164599

/-! ## A164599.P7091974714985436289

`2*A163413(n)-A147958(n)`
-/

namespace A164599.P7091974714985436289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163413 n - A147958 n

end

end A164599.P7091974714985436289

namespace A164599

/-- `2*A163413(n)-A147958(n)` -/
def P7091974714985436289.Spec : Prop :=
  ∀ n, P7091974714985436289.a n = A164599 n

end A164599

/-! ## A164599.P7990531098700897652

`abs(Δ[A033999(n)*A081184(n)])`
-/

namespace A164599.P7990531098700897652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164599.P7990531098700897652

namespace A164599

/-- `abs(Δ[A033999(n)*A081184(n)])` -/
def P7990531098700897652.Spec : Prop :=
  ∀ n, P7990531098700897652.a n = A164599 n

end A164599

