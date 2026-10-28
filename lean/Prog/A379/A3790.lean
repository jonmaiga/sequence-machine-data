import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
# A379001: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j), v_2(i) = v_2(j), v_3(i) = v_3(j) and v_5(i) = v_5(j), for all i, j, where v_2 (A007814), v_3 (A007949) and v_5 (A112765) give the 2-, 3- and 5-adic valuations of n respectively.

The programs for A379001, there is no canonical definition to state claims against.
-/

/-! ## A379001.P4191141440423092342

`A007966(A379000(n+1)²)`
-/

namespace A379001.P4191141440423092342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A379000 (n + 1) ^ 2).toNat

end

end A379001.P4191141440423092342

/-! ## A379001.P16872084894348206060

`A379000(n+1)%record[A360458(n+1)]`
-/

namespace A379001.P16872084894348206060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379000 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A379001.P16872084894348206060

/-! ## A379001.P14371478964670858262

`A379000(n+1)+A000007(A003271(n))`
-/

namespace A379001.P14371478964670858262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1) + A000007 (A003271 n).toNat

end

end A379001.P14371478964670858262

/-! ## A379001.P5566637788036490829

`A379000(n+1)+A000038(A117265(n))`
-/

namespace A379001.P5566637788036490829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1) + A000038 (A117265 n).toNat

end

end A379001.P5566637788036490829

/-! ## A379001.P4749455382305920864

`A379000(n+1)%A244071(A387178(n))`
-/

namespace A379001.P4749455382305920864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379000 (n + 1)) (A244071 (A387178 n).toNat)

end

end A379001.P4749455382305920864

/-!
# A379003: Ordinal transform of A132741, where A132741 is the largest divisor of n having the form 2^i*5^j. a(0) = 0 by convention.

The programs for A379003, there is no canonical definition to state claims against.
-/

/-! ## A379003.P3329249411682170756

`∑{e}[A368951(A286378(n)), #]`
-/

namespace A379003.P3329249411682170756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368951 (A286378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A379003.P3329249411682170756

/-! ## A379003.P3292084409575086456

`A002487(n^A331510(n+3))`
-/

namespace A379003.P3292084409575086456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A331510 (n + 3) : ℤ))).toNat

end

end A379003.P3292084409575086456

/-! ## A379003.P3868914757649344304

`gcd(Δ[A327024(2*(n+1))], A002487(n))`
-/

namespace A379003.P3868914757649344304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327024 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A002487 n)

end

end A379003.P3868914757649344304

/-! ## A379003.P8987663158830596606

`A002487(A060818(n)*A106621(n))`
-/

namespace A379003.P8987663158830596606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A060818 n * A106621 n).toNat

end

end A379003.P8987663158830596606

/-! ## A379003.P2822304811758682791

`A002487(n)^A317445(A317445(n))`
-/

namespace A379003.P2822304811758682791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n : ℚ) ^ (A317445 (A317445 n).toNat : ℤ)

end

end A379003.P2822304811758682791

/-!
# A379004: Lexicographically earliest infinite sequence such that a(i) = a(j) => v_2(i) = v_2(j) and v_5(i) = v_5(j), for all i, j, where v_2 (A007814) and v_5 (A112765) give the 2- and 5-adic valuations of n respectively.

The programs for A379004, there is no canonical definition to state claims against.
-/

/-! ## A379004.P1614300355259092421

`A338753(A132741(n+1))+1`
-/

namespace A379004.P1614300355259092421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338753 (A132741 (n + 1)).toNat + 1

end

end A379004.P1614300355259092421

/-! ## A379004.P6160669515912125367

`A338913(A132741(n+1))%A228768(n+2)`
-/

namespace A379004.P6160669515912125367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338913 (A132741 (n + 1)).toNat) (A228768 (n + 2))

end

end A379004.P6160669515912125367

/-! ## A379004.P14223548093078106278

`A090402(A381111(n+2))`
-/

namespace A379004.P14223548093078106278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090402 (A381111 (n + 2)).toNat

end

end A379004.P14223548093078106278

/-! ## A379004.P18252554387443294204

`A307482(gcd(A096259(n+1), A132741(n+1)))`
-/

namespace A379004.P18252554387443294204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307482 (Int.gcd (A096259 (n + 1)) (A132741 (n + 1)))

end

end A379004.P18252554387443294204

/-!
# A379005: Lexicographically earliest infinite sequence such that a(i) = a(j) => v_2(i) = v_2(j), v_3(i) = v_3(j) and v_5(i) = v_5(j), for all i, j, where v_2 (A007814), v_3 (A007949) and v_5 (A112765) give the 2-, 3- and 5-adic valuations of n respectively.

The programs for A379005, the canonical program `A379005.P12563333980607204090` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379005 has offset 1).

The definition of A379005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379005.P12563333980607204090

`A071520(A355582(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A379005

/-- `A071520(A355582(n+1))` -/
def P12563333980607204090.Spec : Prop :=
  ∀ n, P12563333980607204090.a n = A379005 (n + 1)

theorem P12563333980607204090.correct : P12563333980607204090.Spec := by
  intro n
  simp only [A379005, Nat.add_sub_cancel]

end A379005

/-!
# A379006: Ordinal transform of A355582, where A355582 is the largest 5-smooth divisor of n.

The programs for A379006, there is no canonical definition to state claims against.
-/

/-! ## A379006.P14270407547665549726

`A141256(n+1)-1`
-/

namespace A379006.P14270407547665549726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (n + 1) - 1

end

end A379006.P14270407547665549726

/-! ## A379006.P1974390197556627380

`A376604(A102423(n))+A141256(n+1)`
-/

namespace A379006.P1974390197556627380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376604 (A102423 n).toNat + A141256 (n + 1)

end

end A379006.P1974390197556627380

/-! ## A379006.P13405614679773667045

`A280193(2*n+1)+A141256(n+1)`
-/

namespace A379006.P13405614679773667045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A141256 (n + 1)

end

end A379006.P13405614679773667045

/-! ## A379006.P13057196718461940242

`A323191(2*n+1)+A141256(n+1)`
-/

namespace A379006.P13057196718461940242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323191 (2 * n + 1) + A141256 (n + 1)

end

end A379006.P13057196718461940242

/-! ## A379006.P6055387592896110329

`A153881(3*n+2)+A141256(n+1)`
-/

namespace A379006.P6055387592896110329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (3 * n + 2) + A141256 (n + 1)

end

end A379006.P6055387592896110329

/-! ## A379006.P5136769072477317696

`A191932(A141256(2*(n+1))%A337459(n+1))`
-/

namespace A379006.P5136769072477317696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (Int.tmod (A141256 (2 * (n + 1))) (A337459 (n + 1))).toNat

end

end A379006.P5136769072477317696

/-!
# A379007: a(n) = (n^2) XOR ((n^2)-1).

The programs for A379007, the canonical program `A379007.P14069209523982296756` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379007 has offset 1).

The definition of A379007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379007.P11460285381593366301

`xor((n+1)², (n+1)²-1)`
-/

namespace A379007.P11460285381593366301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (((n + 1) ^ 2 : ℤ) - 1)

end

end A379007.P11460285381593366301

namespace A379007

/-- `xor((n+1)², (n+1)²-1)` -/
def P11460285381593366301.Spec : Prop :=
  ∀ n, P11460285381593366301.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P16666647031487803586

`2^(1+2*A007814(n+1))-1`
-/

namespace A379007.P16666647031487803586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + 2 * A007814 (n + 1) : ℤ) - 1

end

end A379007.P16666647031487803586

namespace A379007

/-- `2^(1+2*A007814(n+1))-1` -/
def P16666647031487803586.Spec : Prop :=
  ∀ n, P16666647031487803586.a n = (A379007 (n + 1) : ℚ)

end A379007

/-! ## A379007.P14069209523982296756

`A000225(A037227(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A379007

/-- `A000225(A037227(n+1))` -/
def P14069209523982296756.Spec : Prop :=
  ∀ n, P14069209523982296756.a n = A379007 (n + 1)

theorem P14069209523982296756.correct : P14069209523982296756.Spec := by
  intro n
  simp only [A379007, Nat.add_sub_cancel]

end A379007

/-! ## A379007.P17176505186321394412

`A038712(A000290(n+1))`
-/

namespace A379007.P17176505186321394412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A000290 (n + 1)).toNat

end

end A379007.P17176505186321394412

namespace A379007

/-- `A038712(A000290(n+1))` -/
def P17176505186321394412.Spec : Prop :=
  ∀ n, P17176505186321394412.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P10776354155766258023

`Δ[A001196(n)]-2`
-/

namespace A379007.P10776354155766258023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A379007.P10776354155766258023

namespace A379007

/-- `Δ[A001196(n)]-2` -/
def P10776354155766258023.Spec : Prop :=
  ∀ n, P10776354155766258023.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P1830053243708082204

`A059152(n)/2-1`
-/

namespace A379007.P1830053243708082204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059152 n : ℚ) / 2 - 1

end

end A379007.P1830053243708082204

namespace A379007

/-- `A059152(n)/2-1` -/
def P1830053243708082204.Spec : Prop :=
  ∀ n, P1830053243708082204.a n = (A379007 (n + 1) : ℚ)

end A379007

/-! ## A379007.P8628228207658595749

`A083420(val(n+1, 2))`
-/

namespace A379007.P8628228207658595749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 (SequenceMachineLib.valuation (n + 1) 2)

end

end A379007.P8628228207658595749

namespace A379007

/-- `A083420(val(n+1, 2))` -/
def P8628228207658595749.Spec : Prop :=
  ∀ n, P8628228207658595749.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P11613919834680893828

`3*A276391(n+1)-2`
-/

namespace A379007.P11613919834680893828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A276391 (n + 1) - 2

end

end A379007.P11613919834680893828

namespace A379007

/-- `3*A276391(n+1)-2` -/
def P11613919834680893828.Spec : Prop :=
  ∀ n, P11613919834680893828.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P411464483397840035

`(A065916(n+1)-3)/4`
-/

namespace A379007.P411464483397840035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065916 (n + 1) - 3 : ℚ) / 4

end

end A379007.P411464483397840035

namespace A379007

/-- `(A065916(n+1)-3)/4` -/
def P411464483397840035.Spec : Prop :=
  ∀ n, P411464483397840035.a n = (A379007 (n + 1) : ℚ)

end A379007

/-! ## A379007.P3302999131250701049

`A264619(A135481(n))`
-/

namespace A379007.P3302999131250701049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 (A135481 n).toNat

end

end A379007.P3302999131250701049

namespace A379007

/-- `A264619(A135481(n))` -/
def P3302999131250701049.Spec : Prop :=
  ∀ n, P3302999131250701049.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P11965818781894995064

`A056220(A006519(n+1))`
-/

namespace A379007.P11965818781894995064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A006519 (n + 1)).toNat

end

end A379007.P11965818781894995064

namespace A379007

/-- `A056220(A006519(n+1))` -/
def P11965818781894995064.Spec : Prop :=
  ∀ n, P11965818781894995064.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P3913478374838962847

`A083420(A007814(n+1))`
-/

namespace A379007.P3913478374838962847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 (A007814 (n + 1)).toNat

end

end A379007.P3913478374838962847

namespace A379007

/-- `A083420(A007814(n+1))` -/
def P3913478374838962847.Spec : Prop :=
  ∀ n, P3913478374838962847.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P10703315402724595053

`A157910(n+1)%A059152(n)`
-/

namespace A379007.P10703315402724595053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157910 (n + 1)) (A059152 n)

end

end A379007.P10703315402724595053

namespace A379007

/-- `A157910(n+1)%A059152(n)` -/
def P10703315402724595053.Spec : Prop :=
  ∀ n, P10703315402724595053.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P13315419723971014278

`A157919(n+1)%A059152(n)`
-/

namespace A379007.P13315419723971014278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157919 (n + 1)) (A059152 n)

end

end A379007.P13315419723971014278

namespace A379007

/-- `A157919(n+1)%A059152(n)` -/
def P13315419723971014278.Spec : Prop :=
  ∀ n, P13315419723971014278.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P15847525449963102624

`A158447(n+1)%A059152(n)`
-/

namespace A379007.P15847525449963102624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158447 (n + 1)) (A059152 n)

end

end A379007.P15847525449963102624

namespace A379007

/-- `A158447(n+1)%A059152(n)` -/
def P15847525449963102624.Spec : Prop :=
  ∀ n, P15847525449963102624.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P10664739822828760885

`A158485(n+1)%A059152(n)`
-/

namespace A379007.P10664739822828760885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158485 (n + 1)) (A059152 n)

end

end A379007.P10664739822828760885

namespace A379007

/-- `A158485(n+1)%A059152(n)` -/
def P10664739822828760885.Spec : Prop :=
  ∀ n, P10664739822828760885.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P16173077311392153923

`A158540(n+1)%A059152(n)`
-/

namespace A379007.P16173077311392153923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158540 (n + 1)) (A059152 n)

end

end A379007.P16173077311392153923

namespace A379007

/-- `A158540(n+1)%A059152(n)` -/
def P16173077311392153923.Spec : Prop :=
  ∀ n, P16173077311392153923.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P13280948830860250187

`A158551(n+1)%A059152(n)`
-/

namespace A379007.P13280948830860250187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158551 (n + 1)) (A059152 n)

end

end A379007.P13280948830860250187

namespace A379007

/-- `A158551(n+1)%A059152(n)` -/
def P13280948830860250187.Spec : Prop :=
  ∀ n, P13280948830860250187.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P3810518983126072303

`A158560(n+1)%A059152(n)`
-/

namespace A379007.P3810518983126072303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158560 (n + 1)) (A059152 n)

end

end A379007.P3810518983126072303

namespace A379007

/-- `A158560(n+1)%A059152(n)` -/
def P3810518983126072303.Spec : Prop :=
  ∀ n, P3810518983126072303.a n = A379007 (n + 1)

end A379007

/-! ## A379007.P9453987285391709211

`A158588(n+1)%A059152(n)`
-/

namespace A379007.P9453987285391709211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158588 (n + 1)) (A059152 n)

end

end A379007.P9453987285391709211

namespace A379007

/-- `A158588(n+1)%A059152(n)` -/
def P9453987285391709211.Spec : Prop :=
  ∀ n, P9453987285391709211.a n = A379007 (n + 1)

end A379007

/-!
# A379008: Square array A(n, k) = A294898(A246278(n, k)), read by falling antidiagonals; Difference A005187(n)-A000203(n) applied to the prime shift array.

The programs for A379008, the canonical program `A379008.P3415151612252478945` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379008 has offset 1).

The definition of A379008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379008.P3415151612252478945

`A324348(A253551(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A379008

/-- `A324348(A253551(n+1))` -/
def P3415151612252478945.Spec : Prop :=
  ∀ n, P3415151612252478945.a n = A379008 (n + 1)

theorem P3415151612252478945.correct : P3415151612252478945.Spec := by
  intro n
  simp only [A379008, Nat.add_sub_cancel]

end A379008

/-! ## A379008.P14643433296469905045

`A294898(A246278(n+2))`
-/

namespace A379008.P14643433296469905045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (A246278 (n + 2)).toNat

end

end A379008.P14643433296469905045

namespace A379008

/-- `A294898(A246278(n+2))` -/
def P14643433296469905045.Spec : Prop :=
  ∀ n, P14643433296469905045.a n = A379008 (n + 1)

end A379008

/-! ## A379008.P12586609437767655487

`A294898(A246275(n+1)+1)`
-/

namespace A379008.P12586609437767655487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (A246275 (n + 1) + 1).toNat

end

end A379008.P12586609437767655487

namespace A379008

/-- `A294898(A246275(n+1)+1)` -/
def P12586609437767655487.Spec : Prop :=
  ∀ n, P12586609437767655487.a n = A379008 (n + 1)

end A379008

/-! ## A379008.P10292614983623100640

`A323167(A253561(n+2))`
-/

namespace A379008.P10292614983623100640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323167 (A253561 (n + 2)).toNat

end

end A379008.P10292614983623100640

namespace A379008

/-- `A323167(A253561(n+2))` -/
def P10292614983623100640.Spec : Prop :=
  ∀ n, P10292614983623100640.a n = A379008 (n + 1)

end A379008

/-!
# A379009: a(n) = 2*n^2 XOR 1+sigma(n^2).

The programs for A379009, the canonical program `A379009.P14519861507907130925` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379009 has offset 1).

The definition of A379009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379009.P3869380862364361409

`xor(2*(n+1)², 1+A000203((n+1)²))`
-/

namespace A379009.P3869380862364361409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (n + 1) ^ 2 : ℤ) (1 + A000203 ((n + 1) ^ 2))

end

end A379009.P3869380862364361409

namespace A379009

/-- `xor(2*(n+1)², 1+A000203((n+1)²))` -/
def P3869380862364361409.Spec : Prop :=
  ∀ n, P3869380862364361409.a n = A379009 (n + 1)

end A379009

/-! ## A379009.P14519861507907130925

`A378988(A000290(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A379009

/-- `A378988(A000290(n+1))` -/
def P14519861507907130925.Spec : Prop :=
  ∀ n, P14519861507907130925.a n = A379009 (n + 1)

theorem P14519861507907130925.correct : P14519861507907130925.Spec := by
  intro n
  simp only [A379009, Nat.add_sub_cancel]

end A379009

/-! ## A379009.P2960411214881512137

`A378988((n+1)²)`
-/

namespace A379009.P2960411214881512137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378988 ((n + 1) ^ 2)

end

end A379009.P2960411214881512137

namespace A379009

/-- `A378988((n+1)²)` -/
def P2960411214881512137.Spec : Prop :=
  ∀ n, P2960411214881512137.a n = A379009 (n + 1)

end A379009

/-!
# A379010: Square array A(n, k) = phi(A246278(n, k)), read by falling antidiagonals; Euler totient function applied to the prime shift array.

The programs for A379010, the canonical program `A379010.P3489266451828955209` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379010 has offset 1).

The definition of A379010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379010.P3489266451828955209

`A290077(A253551(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A379010

/-- `A290077(A253551(n+1))` -/
def P3489266451828955209.Spec : Prop :=
  ∀ n, P3489266451828955209.a n = A379010 (n + 1)

theorem P3489266451828955209.correct : P3489266451828955209.Spec := by
  intro n
  simp only [A379010, Nat.add_sub_cancel]

end A379010

/-! ## A379010.P13628641172056063838

`A000010(A246278(n+2))`
-/

namespace A379010.P13628641172056063838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A246278 (n + 2)).toNat

end

end A379010.P13628641172056063838

namespace A379010

/-- `A000010(A246278(n+2))` -/
def P13628641172056063838.Spec : Prop :=
  ∀ n, P13628641172056063838.a n = A379010 (n + 1)

end A379010

/-! ## A379010.P17067125989257489970

`A000010(A246275(n+1)+1)`
-/

namespace A379010.P17067125989257489970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A246275 (n + 1) + 1).toNat

end

end A379010.P17067125989257489970

namespace A379010

/-- `A000010(A246275(n+1)+1)` -/
def P17067125989257489970.Spec : Prop :=
  ∀ n, P17067125989257489970.a n = A379010 (n + 1)

end A379010

/-! ## A379010.P10916433842336376434

`A000010(A388285(n+1)-A378979(n+1))`
-/

namespace A379010.P10916433842336376434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A388285 (n + 1) - A378979 (n + 1)).toNat

end

end A379010.P10916433842336376434

namespace A379010

/-- `A000010(A388285(n+1)-A378979(n+1))` -/
def P10916433842336376434.Spec : Prop :=
  ∀ n, P10916433842336376434.a n = A379010 (n + 1)

end A379010

/-! ## A379010.P3073999843568835809

`A000010(A341606(n+1)*A355925(n+1))`
-/

namespace A379010.P3073999843568835809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A379010.P3073999843568835809

namespace A379010

/-- `A000010(A341606(n+1)*A355925(n+1))` -/
def P3073999843568835809.Spec : Prop :=
  ∀ n, P3073999843568835809.a n = A379010 (n + 1)

end A379010

/-! ## A379010.P1101797258216815624

`A000010(A379499(n+1)/A355927(n+1))`
-/

namespace A379010.P1101797258216815624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A379499 (n + 1) : ℚ) / (A355927 (n + 1) : ℚ))).toNat

end

end A379010.P1101797258216815624

namespace A379010

/-- `A000010(A379499(n+1)/A355927(n+1))` -/
def P1101797258216815624.Spec : Prop :=
  ∀ n, P1101797258216815624.a n = A379010 (n + 1)

end A379010

/-! ## A379010.P12412575137771608552

`A000010(A355925(n+1)/A341605(n+1)*A379500(n+1))`
-/

namespace A379010.P12412575137771608552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A355925 (n + 1) : ℚ) / (A341605 (n + 1) : ℚ) * (A379500 (n + 1) : ℚ))).toNat

end

end A379010.P12412575137771608552

namespace A379010

/-- `A000010(A355925(n+1)/A341605(n+1)*A379500(n+1))` -/
def P12412575137771608552.Spec : Prop :=
  ∀ n, P12412575137771608552.a n = A379010 (n + 1)

end A379010

/-! ## A379010.P8310561976247628924

`∑{d}[A246278(n+2), A007431(#)]`
-/

namespace A379010.P8310561976247628924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A379010.P8310561976247628924

namespace A379010

/-- `∑{d}[A246278(n+2), A007431(#)]` -/
def P8310561976247628924.Spec : Prop :=
  ∀ n, P8310561976247628924.a n = A379010 (n + 1)

end A379010

/-!
# A379011: Square array A(n, k) = 2*phi(A246278(n, k)) - A246278(n, k), read by falling antidiagonals; A083254, (2*phi(n)-n), applied to the prime shift array.

The programs for A379011, the canonical program `A379011.P5118616404565365073` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379011 has offset 1).

The definition of A379011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379011.P5118616404565365073

`2*A379010(n+1)-A246278(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A379011

/-- `2*A379010(n+1)-A246278(n+2)` -/
def P5118616404565365073.Spec : Prop :=
  ∀ n, P5118616404565365073.a n = A379011 (n + 1)

theorem P5118616404565365073.correct : P5118616404565365073.Spec := by
  intro n
  simp only [A379011, Nat.add_sub_cancel]

end A379011

/-! ## A379011.P8110947347822940269

`A324052(A253551(n+1))`
-/

namespace A379011.P8110947347822940269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324052 (A253551 (n + 1)).toNat

end

end A379011.P8110947347822940269

namespace A379011

/-- `A324052(A253551(n+1))` -/
def P8110947347822940269.Spec : Prop :=
  ∀ n, P8110947347822940269.a n = A379011 (n + 1)

end A379011

/-! ## A379011.P1392078103079885396

`A083254(A246278(n+2))`
-/

namespace A379011.P1392078103079885396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A246278 (n + 2)).toNat

end

end A379011.P1392078103079885396

namespace A379011

/-- `A083254(A246278(n+2))` -/
def P1392078103079885396.Spec : Prop :=
  ∀ n, P1392078103079885396.a n = A379011 (n + 1)

end A379011

/-! ## A379011.P417964984893856385

`A083254(A246275(n+1)+1)`
-/

namespace A379011.P417964984893856385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A246275 (n + 1) + 1).toNat

end

end A379011.P417964984893856385

namespace A379011

/-- `A083254(A246275(n+1)+1)` -/
def P417964984893856385.Spec : Prop :=
  ∀ n, P417964984893856385.a n = A379011 (n + 1)

end A379011

/-! ## A379011.P13469124653861188254

`A083254(A388285(n+1)-A378979(n+1))`
-/

namespace A379011.P13469124653861188254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A388285 (n + 1) - A378979 (n + 1)).toNat

end

end A379011.P13469124653861188254

namespace A379011

/-- `A083254(A388285(n+1)-A378979(n+1))` -/
def P13469124653861188254.Spec : Prop :=
  ∀ n, P13469124653861188254.a n = A379011 (n + 1)

end A379011

/-!
# A379012: a(n) = A034444(n) if n is powerful (A001694), and 0 otherwise.

The programs for A379012, the canonical program `A379012.P2257624155455655702` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379012 has offset 1).

The definition of A379012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379012.P2257624155455655702

`A112526(n+1)*A034444(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379012

/-- `A112526(n+1)*A034444(n+1)` -/
def P2257624155455655702.Spec : Prop :=
  ∀ n, P2257624155455655702.a n = A379012 (n + 1)

theorem P2257624155455655702.correct : P2257624155455655702.Spec := by
  intro n
  simp only [A379012, Nat.add_sub_cancel]

end A379012

/-! ## A379012.P10587070427470445358

`A112526(n+1)*2^A001221(n+1)`
-/

namespace A379012.P10587070427470445358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112526 (n + 1) : ℚ) * (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A379012.P10587070427470445358

namespace A379012

/-- `A112526(n+1)*2^A001221(n+1)` -/
def P10587070427470445358.Spec : Prop :=
  ∀ n, P10587070427470445358.a n = (A379012 (n + 1) : ℚ)

end A379012

/-! ## A379012.P1599815500925145294

`∏{e}[n+1, 2%#²]`
-/

namespace A379012.P1599815500925145294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 % Nat.factorization (f1 n) p ^ 2

end

end A379012.P1599815500925145294

namespace A379012

/-- `∏{e}[n+1, 2%#²]` -/
def P1599815500925145294.Spec : Prop :=
  ∀ n, (P1599815500925145294.a n : ℤ) = A379012 (n + 1)

end A379012

/-! ## A379012.P9017674174325506410

`∏{e}[n+1, 2-C(2, #²)]`
-/

namespace A379012.P9017674174325506410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.choose 2 (Nat.factorization (f1 n) p ^ 2) : ℤ))

end

end A379012.P9017674174325506410

namespace A379012

/-- `∏{e}[n+1, 2-C(2, #²)]` -/
def P9017674174325506410.Spec : Prop :=
  ∀ n, P9017674174325506410.a n = A379012 (n + 1)

end A379012

/-! ## A379012.P8871192183247091902

`∏{e}[n+1, #-abs(2-#)]`
-/

namespace A379012.P8871192183247091902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - |2 - (Nat.factorization (f1 n) p : ℤ)|)

end

end A379012.P8871192183247091902

namespace A379012

/-- `∏{e}[n+1, #-abs(2-#)]` -/
def P8871192183247091902.Spec : Prop :=
  ∀ n, P8871192183247091902.a n = A379012 (n + 1)

end A379012

/-! ## A379012.P6901120444440784544

`A197881(A007948(n+1))`
-/

namespace A379012.P6901120444440784544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197881 (A007948 (n + 1)).toNat

end

end A379012.P6901120444440784544

namespace A379012

/-- `A197881(A007948(n+1))` -/
def P6901120444440784544.Spec : Prop :=
  ∀ n, P6901120444440784544.a n = A379012 (n + 1)

end A379012

/-! ## A379012.P10988163063871169123

`A369309(A058035(n+1))`
-/

namespace A379012.P10988163063871169123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369309 (A058035 (n + 1)).toNat

end

end A379012.P10988163063871169123

namespace A379012

/-- `A369309(A058035(n+1))` -/
def P10988163063871169123.Spec : Prop :=
  ∀ n, P10988163063871169123.a n = A379012 (n + 1)

end A379012

/-! ## A379012.P9663326883148654031

`A034444(n+1)*A112526(n+1)`
-/

namespace A379012.P9663326883148654031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A112526 (n + 1)

end

end A379012.P9663326883148654031

namespace A379012

/-- `A034444(n+1)*A112526(n+1)` -/
def P9663326883148654031.Spec : Prop :=
  ∀ n, P9663326883148654031.a n = A379012 (n + 1)

theorem P9663326883148654031.correct : P9663326883148654031.Spec := by
  intro n
  simp only [A379012, Nat.add_sub_cancel, A379012.P9663326883148654031.a, A379012.P2257624155455655702.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A379012

/-! ## A379012.P8595117080720398870

`A112526(n+1)*A333749(n+1)`
-/

namespace A379012.P8595117080720398870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) * A333749 (n + 1)

end

end A379012.P8595117080720398870

namespace A379012

/-- `A112526(n+1)*A333749(n+1)` -/
def P8595117080720398870.Spec : Prop :=
  ∀ n, P8595117080720398870.a n = A379012 (n + 1)

end A379012

/-! ## A379012.P12132675435498742309

`lcm(A307423(n+1), A323308(n+1))`
-/

namespace A379012.P12132675435498742309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A307423 (n + 1)) (A323308 (n + 1))

end

end A379012.P12132675435498742309

namespace A379012

/-- `lcm(A307423(n+1), A323308(n+1))` -/
def P12132675435498742309.Spec : Prop :=
  ∀ n, (P12132675435498742309.a n : ℤ) = A379012 (n + 1)

end A379012

/-! ## A379012.P12827196820959066267

`lcm(A317528(n+1), A355683(n+1))`
-/

namespace A379012.P12827196820959066267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A317528 (n + 1)) (A355683 (n + 1))

end

end A379012.P12827196820959066267

namespace A379012

/-- `lcm(A317528(n+1), A355683(n+1))` -/
def P12827196820959066267.Spec : Prop :=
  ∀ n, (P12827196820959066267.a n : ℤ) = A379012 (n + 1)

end A379012

/-! ## A379012.P12536259129720362068

`lcm(A333749(n+1), A355684(n+1))`
-/

namespace A379012.P12536259129720362068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A333749 (n + 1)) (A355684 (n + 1))

end

end A379012.P12536259129720362068

namespace A379012

/-- `lcm(A333749(n+1), A355684(n+1))` -/
def P12536259129720362068.Spec : Prop :=
  ∀ n, (P12536259129720362068.a n : ℤ) = A379012 (n + 1)

end A379012

/-! ## A379012.P13240799393800609445

`and(A034444(n+1), A323308(n+1))`
-/

namespace A379012.P13240799393800609445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034444 (n + 1)) (A323308 (n + 1))

end

end A379012.P13240799393800609445

namespace A379012

/-- `and(A034444(n+1), A323308(n+1))` -/
def P13240799393800609445.Spec : Prop :=
  ∀ n, P13240799393800609445.a n = A379012 (n + 1)

end A379012

/-! ## A379012.P12074144555197719676

`A307423(n+1)²*A034444(n+1)`
-/

namespace A379012.P12074144555197719676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307423 (n + 1) ^ 2 * A034444 (n + 1)

end

end A379012.P12074144555197719676

namespace A379012

/-- `A307423(n+1)²*A034444(n+1)` -/
def P12074144555197719676.Spec : Prop :=
  ∀ n, P12074144555197719676.a n = A379012 (n + 1)

end A379012

/-! ## A379012.P2638045250746013847

`∑{d}[n+1, A008683(#)*A360908((n+1)/#)]`
-/

namespace A379012.P2638045250746013847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A360908 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379012.P2638045250746013847

namespace A379012

/-- `∑{d}[n+1, A008683(#)*A360908((n+1)/#)]` -/
def P2638045250746013847.Spec : Prop :=
  ∀ n, P2638045250746013847.a n = A379012 (n + 1)

end A379012

/-! ## A379012.P11066721555126209281

`(A277698(n+1)-A080368(n+1))*A034444(n+1)`
-/

namespace A379012.P11066721555126209281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277698 (n + 1) - A080368 (n + 1)) * A034444 (n + 1)

end

end A379012.P11066721555126209281

namespace A379012

/-- `(A277698(n+1)-A080368(n+1))*A034444(n+1)` -/
def P11066721555126209281.Spec : Prop :=
  ∀ n, P11066721555126209281.a n = A379012 (n + 1)

end A379012

/-! ## A379012.P11912401010670287639

`A034444(n+1)*A369309(n+1)/A369310(n+1)`
-/

namespace A379012.P11912401010670287639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) * A369309 (n + 1) : ℚ) / (A369310 (n + 1) : ℚ)

end

end A379012.P11912401010670287639

namespace A379012

/-- `A034444(n+1)*A369309(n+1)/A369310(n+1)` -/
def P11912401010670287639.Spec : Prop :=
  ∀ n, P11912401010670287639.a n = (A379012 (n + 1) : ℚ)

end A379012

/-! ## A379012.P17842756516645183379

`A037234(A397412(n+1))`
-/

namespace A379012.P17842756516645183379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (A397412 (n + 1)).toNat

end

end A379012.P17842756516645183379

namespace A379012

/-- `A037234(A397412(n+1))` -/
def P17842756516645183379.Spec : Prop :=
  ∀ n, P17842756516645183379.a n = A379012 (n + 1)

end A379012

/-!
# A379013: Positions of zeros in A378505.

The programs for A379013, there is no canonical definition to state claims against.
-/

/-! ## A379013.P12454718213820749981

`eq[0, A378505(n)]`
-/

namespace A379013.P12454718213820749981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379013.P12454718213820749981

/-! ## A379013.P7123982778318097283

`lt[A378505(n), A095791(n)]`
-/

namespace A379013.P7123982778318097283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379013.P7123982778318097283

/-! ## A379013.P75785653641371389

`lt[A378505(n), A061336(n)!]`
-/

namespace A379013.P75785653641371389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A061336 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379013.P75785653641371389

/-! ## A379013.P11708520802900548384

`lt[A378505(n), A000010(n+1)]`
-/

namespace A379013.P11708520802900548384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379013.P11708520802900548384

/-! ## A379013.P4680502274766958421

`lt[A378505(n), A003557(n+1)]`
-/

namespace A379013.P4680502274766958421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379013.P4680502274766958421

/-!
# A379014: Least number k such that prime(n) + prime(k) is a multiple of n, or -1 if no such number exists.

The programs for A379014, there is no canonical definition to state claims against.
-/

/-! ## A379014.P6997071252595830649

`A000720(A294639(n+1))`
-/

namespace A379014.P6997071252595830649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A294639 (n + 1)).toNat

end

end A379014.P6997071252595830649

/-! ## A379014.P8310253066819866293

`A061395(2*A294639(n+1))`
-/

namespace A379014.P8310253066819866293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A294639 (n + 1)).toNat

end

end A379014.P8310253066819866293

/-! ## A379014.P9150158028141105478

`∑{d}[A294639(n+1), A055396(#)]`
-/

namespace A379014.P9150158028141105478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A379014.P9150158028141105478

/-! ## A379014.P837377973984152774

`A056239(A294639(n+1))%A004767(n)`
-/

namespace A379014.P837377973984152774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A294639 (n + 1)).toNat) (A004767 n)

end

end A379014.P837377973984152774

/-! ## A379014.P2954941276195419860

`lcm(A055396(A294639(n+1)), A106400(n))`
-/

namespace A379014.P2954941276195419860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055396 (A294639 (n + 1)).toNat) (A106400 n)

end

end A379014.P2954941276195419860

/-! ## A379014.P9312840334424226070

`A055396(A294639(n+1)%A003381(n+1))`
-/

namespace A379014.P9312840334424226070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A294639 (n + 1)) (A003381 (n + 1))).toNat

end

end A379014.P9312840334424226070

/-!
# A379017: a(n) is the number of distinct sums s(m) + s(m+1) + ... + s(m+n-1), where s = A000002, and m >= 1.

The programs for A379017, there is no canonical definition to state claims against.
-/

/-! ## A379017.P2683585727833659043

`A005812(3*n+2)%record[A232783(n+1)]`
-/

namespace A379017.P2683585727833659043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005812 (3 * n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A379017.P2683585727833659043

/-! ## A379017.P436036103467520563

`(A005812(n+1)+1)%A226448(3*n+1)`
-/

namespace A379017.P436036103467520563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005812 (n + 1) + 1) (A226448 (3 * n + 1))

end

end A379017.P436036103467520563

/-! ## A379017.P13073344012467895374

`A005812(n+1)%A325881(3*n+4)+1`
-/

namespace A379017.P13073344012467895374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005812 (n + 1)) (A325881 (3 * n + 4)) + 1

end

end A379017.P13073344012467895374

/-! ## A379017.P4201469402868284861

`A304042(A011782(n))+A005812(n+1)`
-/

namespace A379017.P4201469402868284861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A011782 n).toNat + A005812 (n + 1)

end

end A379017.P4201469402868284861

/-! ## A379017.P4934621888860009393

`A005812(n+1)+A001065(A006992(n+1))`
-/

namespace A379017.P4934621888860009393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (n + 1) + A001065 (A006992 (n + 1)).toNat

end

end A379017.P4934621888860009393

/-!
# A379021: Expansion of (1/x) * Series_Reversion( x * ((1 - x - x^2)/(1 + x))^2 ).

The programs for A379021, the canonical program `A379021.P14409963467412324420` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379021 has offset 0).

The definition of A379021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379021.P14409963467412324420

`1/(n+1)*∑{#}[n, C(2*n+#+1, #)*C(2*n+#+2, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379021

/-- `1/(n+1)*∑{#}[n, C(2*n+#+1, #)*C(2*n+#+2, n-#)]` -/
def P14409963467412324420.Spec : Prop :=
  ∀ n, P14409963467412324420.a n = (A379021 n : ℚ)

end A379021

/-! ## A379021.P6590634939166172533

`A368968(n)+A186763(A051118(n))`
-/

namespace A379021.P6590634939166172533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368968 n + A186763 (A051118 n).toNat

end

end A379021.P6590634939166172533

namespace A379021

/-- `A368968(n)+A186763(A051118(n))` -/
def P6590634939166172533.Spec : Prop :=
  ∀ n, P6590634939166172533.a n = A379021 n

end A379021

/-!
# A379022: a(n) = Sum_{k=0..n} binomial(2*n+k-1,k) * binomial(2*n+k,n-k).

The programs for A379022, there is no canonical definition to state claims against.
-/

/-! ## A379022.P3593416552865447322

`record[A000122(n)*A193589(2*n)]`
-/

namespace A379022.P3593416552865447322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A193589 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379022.P3593416552865447322

/-! ## A379022.P1157544366219994833

`A155112(xor(n, -1)+∑[9*n]+1)`
-/

namespace A379022.P1157544366219994833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (Int.xor (n : ℤ) (-1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A379022.P1157544366219994833

/-! ## A379022.P7821502756072938682

`A155112(A062728(n))`
-/

namespace A379022.P7821502756072938682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (A062728 n).toNat

end

end A379022.P7821502756072938682

/-! ## A379022.P15946768257796828387

`A155112(A027468(n)-n)`
-/

namespace A379022.P15946768257796828387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (A027468 n - (n : ℤ)).toNat

end

end A379022.P15946768257796828387

/-! ## A379022.P6729565945870676491

`A155112(A000124(3*n+1)-(n+2))`
-/

namespace A379022.P6729565945870676491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (A000124 (3 * n + 1) - (n + 2 : ℤ)).toNat

end

end A379022.P6729565945870676491

/-!
# A379023: Expansion of (1/x) * Series_Reversion( x * ((1 - x - x^2)/(1 + x))^3 ).

The programs for A379023, the canonical program `A379023.P1871152131880199578` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379023 has offset 0).

The definition of A379023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379023.P1871152131880199578

`1/(n+1)*∑{#}[n, C(3*n+#+2, #)*C(3*n+#+3, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379023

/-- `1/(n+1)*∑{#}[n, C(3*n+#+2, #)*C(3*n+#+3, n-#)]` -/
def P1871152131880199578.Spec : Prop :=
  ∀ n, P1871152131880199578.a n = (A379023 n : ℚ)

end A379023

/-!
# A379024: Expansion of (1/x) * Series_Reversion( x * ((1 - x - x^2)/(1 + x))^4 ).

The programs for A379024, the canonical program `A379024.P5213639734912899085` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379024 has offset 0).

The definition of A379024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379024.P5213639734912899085

`1/(n+1)*∑{#}[n, C(4*n+#+3, #)*C(4*n+#+4, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379024

/-- `1/(n+1)*∑{#}[n, C(4*n+#+3, #)*C(4*n+#+4, n-#)]` -/
def P5213639734912899085.Spec : Prop :=
  ∀ n, P5213639734912899085.a n = (A379024 n : ℚ)

end A379024

/-!
# A379025: a(n) = Sum_{k=0..n} binomial(3*n+k-1,k) * binomial(3*n+k,n-k).

The programs for A379025, there is no canonical definition to state claims against.
-/

/-! ## A379025.P7072453624554138406

`A155112(A139277(n))`
-/

namespace A379025.P7072453624554138406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (A139277 n).toNat

end

end A379025.P7072453624554138406

/-! ## A379025.P9651356348036832805

`A155112(A033586(n)+n)`
-/

namespace A379025.P9651356348036832805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (A033586 n + (n : ℤ)).toNat

end

end A379025.P9651356348036832805

/-! ## A379025.P18062636745923767272

`A155112(A046092(2*n)+n)`
-/

namespace A379025.P18062636745923767272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (A046092 (2 * n) + (n : ℤ)).toNat

end

end A379025.P18062636745923767272

/-!
# A379027: Irregular table read by rows in which the n-th row lists the modified exponential divisors of n.

The programs for A379027, there is no canonical definition to state claims against.
-/

/-! ## A379027.P16083936113901836114

`A027750(lt[A387183(n+1), A273672(n+1)])`
-/

namespace A379027.P16083936113901836114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379027.P16083936113901836114

/-! ## A379027.P17163522482374245028

`A077609(A087889(3*(n+1))+n)`
-/

namespace A379027.P17163522482374245028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (A087889 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A379027.P17163522482374245028

/-! ## A379027.P12185639206462366281

`A077609(A185284(2*n+3)+n+1)`
-/

namespace A379027.P12185639206462366281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (A185284 (2 * n + 3) + (n + 1 : ℤ)).toNat

end

end A379027.P12185639206462366281

/-!
# A379028: The number of modified exponential divisors of n.

The programs for A379028, the canonical program `A379028.P1083358816384689747` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379028 has offset 1).

The definition of A379028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379028.P2769335959988862460

`∏{e}[n+1, A000005(#+1)]`
-/

namespace A379028.P2769335959988862460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p + 1)

end

end A379028.P2769335959988862460

namespace A379028

/-- `∏{e}[n+1, A000005(#+1)]` -/
def P2769335959988862460.Spec : Prop :=
  ∀ n, P2769335959988862460.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P1083358816384689747

`∏{e}[n+1, A252505(#+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A379028

/-- `∏{e}[n+1, A252505(#+1)]` -/
def P1083358816384689747.Spec : Prop :=
  ∀ n, P1083358816384689747.a n = A379028 (n + 1)

theorem P1083358816384689747.correct : P1083358816384689747.Spec := by
  intro n
  simp only [A379028, Nat.add_sub_cancel]

end A379028

/-! ## A379028.P8892320971169255591

`∏{e}[n+1, A049419((#+1)²)]`
-/

namespace A379028.P8892320971169255591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A049419 ((Nat.factorization (f1 n) p + 1) ^ 2)

end

end A379028.P8892320971169255591

namespace A379028

/-- `∏{e}[n+1, A049419((#+1)²)]` -/
def P8892320971169255591.Spec : Prop :=
  ∀ n, P8892320971169255591.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P15380680523396960550

`∏{e}[(n+1)*∏{p}[n+1, #], A286605(#)]`
-/

namespace A379028.P15380680523396960550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A286605 (Nat.factorization (f1 n) p)

end

end A379028.P15380680523396960550

namespace A379028

/-- `∏{e}[(n+1)*∏{p}[n+1, #], A286605(#)]` -/
def P15380680523396960550.Spec : Prop :=
  ∀ n, P15380680523396960550.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P7795194855139249078

`∏{e}[(n+1)*∏{p}[n+1, #], A299701(#)]`
-/

namespace A379028.P7795194855139249078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A299701 (Nat.factorization (f1 n) p)

end

end A379028.P7795194855139249078

namespace A379028

/-- `∏{e}[(n+1)*∏{p}[n+1, #], A299701(#)]` -/
def P7795194855139249078.Spec : Prop :=
  ∀ n, P7795194855139249078.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P12219997858027300276

`A049419(A064549(n+1))`
-/

namespace A379028.P12219997858027300276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A064549 (n + 1)).toNat

end

end A379028.P12219997858027300276

namespace A379028

/-- `A049419(A064549(n+1))` -/
def P12219997858027300276.Spec : Prop :=
  ∀ n, P12219997858027300276.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P1216056472611636953

`A049419((n+1)*A007947(n+1))`
-/

namespace A379028.P1216056472611636953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A379028.P1216056472611636953

namespace A379028

/-- `A049419((n+1)*A007947(n+1))` -/
def P1216056472611636953.Spec : Prop :=
  ∀ n, P1216056472611636953.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P7054786539584463501

`A049419((n+1)*A384558(n+1))`
-/

namespace A379028.P7054786539584463501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 ((n + 1 : ℤ) * A384558 (n + 1)).toNat

end

end A379028.P7054786539584463501

namespace A379028

/-- `A049419((n+1)*A384558(n+1))` -/
def P7054786539584463501.Spec : Prop :=
  ∀ n, P7054786539584463501.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P18205864958385083405

`A049419(A355038(n+1)/(n+1))`
-/

namespace A379028.P18205864958385083405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (SequenceMachineLib.roundAway ((A355038 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A379028.P18205864958385083405

namespace A379028

/-- `A049419(A355038(n+1)/(n+1))` -/
def P18205864958385083405.Spec : Prop :=
  ∀ n, P18205864958385083405.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P1180553207179185390

`A049419((n+1)*A051377(A331737(n+1)))`
-/

namespace A379028.P1180553207179185390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 ((n + 1 : ℤ) * A051377 (A331737 (n + 1)).toNat).toNat

end

end A379028.P1180553207179185390

namespace A379028

/-- `A049419((n+1)*A051377(A331737(n+1)))` -/
def P1180553207179185390.Spec : Prop :=
  ∀ n, P1180553207179185390.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P10380400022054035871

`A049419((n+1)*A331737(A066990(n+1)))`
-/

namespace A379028.P10380400022054035871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 ((n + 1 : ℤ) * A331737 (A066990 (n + 1)).toNat).toNat

end

end A379028.P10380400022054035871

namespace A379028

/-- `A049419((n+1)*A331737(A066990(n+1)))` -/
def P10380400022054035871.Spec : Prop :=
  ∀ n, P10380400022054035871.a n = A379028 (n + 1)

end A379028

/-! ## A379028.P590002530521186852

`A049419((n+1)*A384556(A331737(n+1)))`
-/

namespace A379028.P590002530521186852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 ((n + 1 : ℤ) * A384556 (A331737 (n + 1)).toNat).toNat

end

end A379028.P590002530521186852

namespace A379028

/-- `A049419((n+1)*A384556(A331737(n+1)))` -/
def P590002530521186852.Spec : Prop :=
  ∀ n, P590002530521186852.a n = A379028 (n + 1)

end A379028

/-!
# A379029: Modified exponential abundant numbers: numbers k such that A241405(k) > 2*k.

The programs for A379029, there is no canonical definition to state claims against.
-/

/-! ## A379029.P12293315712643863550

`∪[A034683(n+1), A379030(n+1)]`
-/

namespace A379029.P12293315712643863550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379029.P12293315712643863550

/-! ## A379029.P13931900786449910220

`∪[A087248(n+1), A379030(n+1)]`
-/

namespace A379029.P13931900786449910220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379029.P13931900786449910220

/-! ## A379029.P3997879541512998441

`A065475(lt[A065475(2*n+1), A241405(n+1)])`
-/

namespace A379029.P3997879541512998441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379029.P3997879541512998441

/-! ## A379029.P1530651432751273762

`A114637(lt[A114637(2*(n+1)), A241405(n+1)])`
-/

namespace A379029.P1530651432751273762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379029.P1530651432751273762

/-! ## A379029.P8990854949307080061

`∩[A152444(n+1), A308127(n+1)]`
-/

namespace A379029.P8990854949307080061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379029.P8990854949307080061

/-!
# A379030: Nonsquarefree modified exponential abundant numbers: nonsquarefree numbers k such that A241405(k) > 2*k.

The programs for A379030, there is no canonical definition to state claims against.
-/

/-! ## A379030.P17022105237071310359

`∩[A013929(n+1), A379029(n+1)]`
-/

namespace A379030.P17022105237071310359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P17022105237071310359

/-! ## A379030.P744892193678715418

`filter[A379029(n+1), A355447(#)]`
-/

namespace A379030.P744892193678715418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A379030.P744892193678715418

/-! ## A379030.P1123946322776607733

`filter[A379029(n+1), A087049(#)]`
-/

namespace A379030.P1123946322776607733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A379030.P1123946322776607733

/-! ## A379030.P11708753239260622981

`filter[A379029(n+1), A389905(#)]`
-/

namespace A379030.P11708753239260622981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A379030.P11708753239260622981

/-! ## A379030.P3159968218521689890

`∩[A087245(n+1), A379029(n+1)]`
-/

namespace A379030.P3159968218521689890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P3159968218521689890

/-! ## A379030.P3163048117232491634

`∩[A379029(n+1), A389212(n+1)]`
-/

namespace A379030.P3163048117232491634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P3163048117232491634

/-! ## A379030.P9822519486786551605

`∩[A379029(n+1), A389214(n+1)]`
-/

namespace A379030.P9822519486786551605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P9822519486786551605

/-! ## A379030.P9024027974063225005

`∩[A379029(n+1), A392288(n+1)]`
-/

namespace A379030.P9024027974063225005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P9024027974063225005

/-! ## A379030.P13161203527257105629

`∩[A375055(n+1), A379029(n+1)]`
-/

namespace A379030.P13161203527257105629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P13161203527257105629

/-! ## A379030.P11403680554759017363

`∩[A379029(n+1), A391026(n+1)]`
-/

namespace A379030.P11403680554759017363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P11403680554759017363

/-! ## A379030.P17528543313469753291

`∩[A363101(n+1), A379029(n+1)]`
-/

namespace A379030.P17528543313469753291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P17528543313469753291

/-! ## A379030.P18273839096589902276

`∩[A379029(n+1), A379336(n+1)]`
-/

namespace A379030.P18273839096589902276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P18273839096589902276

/-! ## A379030.P4548012286067835288

`∩[A376271(n+1), A379029(n+1)]`
-/

namespace A379030.P4548012286067835288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P4548012286067835288

/-! ## A379030.P11895964116753885373

`∩[A062171(n+1), A379029(n+1)]`
-/

namespace A379030.P11895964116753885373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P11895964116753885373

/-! ## A379030.P4874406070685379178

`∩[A065303(n+1), A379029(n+1)]`
-/

namespace A379030.P4874406070685379178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P4874406070685379178

/-! ## A379030.P4613998064552255162

`∩[A332785(n+1), A379029(n+1)]`
-/

namespace A379030.P4613998064552255162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P4613998064552255162

/-! ## A379030.P11090555181404486012

`∩[A317616(n+1), A379029(n+1)]`
-/

namespace A379030.P11090555181404486012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379030.P11090555181404486012

/-!
# A379031: 

The programs for A379031, there is no canonical definition to state claims against.
-/

/-! ## A379031.P15307553548661304282

`∩[A127666(n+1), A333950(n+1)]`
-/

namespace A379031.P15307553548661304282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379031.P15307553548661304282

/-! ## A379031.P7885107732317473753

`∩[A293186(n+1), A333950(n+1)]`
-/

namespace A379031.P7885107732317473753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379031.P7885107732317473753

/-!
# A379033: Numbers that are the product of exactly three (not necessarily distinct) primes and these primes are sides of a nondegenerate triangle.

The programs for A379033, there is no canonical definition to state claims against.
-/

/-! ## A379033.P6026789589550371292

`filter[A389414(n+1), A340369(#)]`
-/

namespace A379033.P6026789589550371292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A379033.P6026789589550371292

/-! ## A379033.P17070629959892505600

`filter[A392380(n+1), A340369(#)]`
-/

namespace A379033.P17070629959892505600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A379033.P17070629959892505600

/-! ## A379033.P3328392791797751784

`∩[A014612(n+1), A389414(n+1)]`
-/

namespace A379033.P3328392791797751784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379033.P3328392791797751784

/-! ## A379033.P1851183747670687659

`∩[A014612(n+1), A392380(n+1)]`
-/

namespace A379033.P1851183747670687659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379033.P1851183747670687659

/-! ## A379033.P9545593435744573311

`∩[A298207(n+1), A389414(n+1)]`
-/

namespace A379033.P9545593435744573311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379033.P9545593435744573311

/-! ## A379033.P14406710900965468866

`∩[A298207(n+1), A392380(n+1)]`
-/

namespace A379033.P14406710900965468866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379033.P14406710900965468866

/-! ## A379033.P2616546066065491993

`∩[A168645(n+1), A389414(n+1)]`
-/

namespace A379033.P2616546066065491993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379033.P2616546066065491993

/-! ## A379033.P4785808235289493743

`∩[A168645(n+1), A392380(n+1)]`
-/

namespace A379033.P4785808235289493743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379033.P4785808235289493743

/-! ## A379033.P6873593943569013147

`∩[A037144(n+1), A389414(n+1)]`
-/

namespace A379033.P6873593943569013147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379033.P6873593943569013147

/-! ## A379033.P9690257024724871336

`∩[A037144(n+1), A392380(n+1)]`
-/

namespace A379033.P9690257024724871336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379033.P9690257024724871336

/-! ## A379033.P4635804202400632589

`∩[A289555(n+1), A392380(n+1)]`
-/

namespace A379033.P4635804202400632589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379033.P4635804202400632589

/-! ## A379033.P11921182689024088473

`filter[A389414(n+1), A101605(#)]`
-/

namespace A379033.P11921182689024088473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A379033.P11921182689024088473

/-! ## A379033.P1783070311746039560

`filter[A392380(n+1), A101605(#)]`
-/

namespace A379033.P1783070311746039560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A379033.P1783070311746039560

/-!
# A379034: Number of intervals in the lattice of Motzkin paths of length n.

The programs for A379034, the canonical program `A379034.P12083049047450536619` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379034 has offset 0).

The definition of A379034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151483, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379034.P12083049047450536619

`A151483(n)*A151483(n+1)/4^n`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A379034

/-- `A151483(n)*A151483(n+1)/4^n` -/
def P12083049047450536619.Spec : Prop :=
  ∀ n, P12083049047450536619.a n = (A379034 n : ℚ)

end A379034

/-! ## A379034.P9106666018172607119

`A285870(A273958(n+1)+A125657(n))`
-/

namespace A379034.P9106666018172607119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A273958 (n + 1) + A125657 n).toNat

end

end A379034.P9106666018172607119

namespace A379034

/-- `A285870(A273958(n+1)+A125657(n))` -/
def P9106666018172607119.Spec : Prop :=
  ∀ n, P9106666018172607119.a n = A379034 n

end A379034

/-!
# A379035: Number of intervals in the lattice of Schroeder paths of length 2*n.

The programs for A379035, there is no canonical definition to state claims against.
-/

/-! ## A379035.P7867671171048052129

`A137564(A386613(n)+A161688(n))`
-/

namespace A379035.P7867671171048052129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A386613 n + A161688 n).toNat

end

end A379035.P7867671171048052129

/-!
# A379036: Indices of zeros in binary concatenation of primes.

The programs for A379036, there is no canonical definition to state claims against.
-/

/-! ## A379036.P15303618249646158188

`eq[0, A191232(n+1)]`
-/

namespace A379036.P15303618249646158188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191232 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379036.P15303618249646158188

/-! ## A379036.P3790664387108542436

`lt[A191232(n+2), 1]+1`
-/

namespace A379036.P3790664387108542436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191232 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A379036.P3790664387108542436

/-! ## A379036.P1480033612578240089

`lt[A191232(A000027(n+1)), 1]`
-/

namespace A379036.P1480033612578240089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191232 (A000027 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379036.P1480033612578240089

/-! ## A379036.P16252807651689832976

`lt[A191233(n+1), A095375(n+1)]`
-/

namespace A379036.P16252807651689832976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379036.P16252807651689832976

/-!
# A379037: G.f. A(x) satisfies A(x) = ( (1 + x) * (1 + x*A(x)^(3/2)) )^2.

The programs for A379037, the canonical program `A379037.P7027776206327358246` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379037 has offset 0).

The definition of A379037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379037.P7027776206327358246

`2*∑{#}[n, C(3*#+2, #)*C(3*#+2, n-#)/(3*#+2)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379037

/-- `2*∑{#}[n, C(3*#+2, #)*C(3*#+2, n-#)/(3*#+2)]` -/
def P7027776206327358246.Spec : Prop :=
  ∀ n, P7027776206327358246.a n = (A379037 n : ℚ)

end A379037

/-! ## A379037.P1949418571443413474

`abs(1-A366357(n+1))`
-/

namespace A379037.P1949418571443413474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A366357 (n + 1)|

end

end A379037.P1949418571443413474

namespace A379037

/-- `abs(1-A366357(n+1))` -/
def P1949418571443413474.Spec : Prop :=
  ∀ n, P1949418571443413474.a n = A379037 n

end A379037

/-!
# A379038: G.f. A(x) satisfies A(x) = ( (1 + x) * (1 + x*A(x)^(4/3)) )^3.

The programs for A379038, the canonical program `A379038.P5658214051930330599` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379038 has offset 0).

The definition of A379038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379038.P5658214051930330599

`3*∑{#}[n, C(4*#+3, #)*C(4*#+3, n-#)/(4*#+3)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379038

/-- `3*∑{#}[n, C(4*#+3, #)*C(4*#+3, n-#)/(4*#+3)]` -/
def P5658214051930330599.Spec : Prop :=
  ∀ n, P5658214051930330599.a n = (A379038 n : ℚ)

end A379038

/-! ## A379038.P15561787763662019683

`abs(1-A366358(n+1))`
-/

namespace A379038.P15561787763662019683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A366358 (n + 1)|

end

end A379038.P15561787763662019683

namespace A379038

/-- `abs(1-A366358(n+1))` -/
def P15561787763662019683.Spec : Prop :=
  ∀ n, P15561787763662019683.a n = A379038 n

end A379038

/-!
# A379039: G.f. A(x) satisfies A(x) = ( (1 + x) * (1 + x*A(x)^2) )^2.

The programs for A379039, the canonical program `A379039.P9104002659719284069` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379039 has offset 0).

The definition of A379039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379039.P9104002659719284069

`∑{#}[n, C(4*#+2, #)*C(4*#+2, n-#)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379039

/-- `∑{#}[n, C(4*#+2, #)*C(4*#+2, n-#)/(2*#+1)]` -/
def P9104002659719284069.Spec : Prop :=
  ∀ n, P9104002659719284069.a n = (A379039 n : ℚ)

end A379039

/-!
# A379040: Fixed points in A379015.

The programs for A379040, there is no canonical definition to state claims against.
-/

/-! ## A379040.P12696048203966323189

`eq[n, A379015(n)]`
-/

namespace A379040.P12696048203966323189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379040.P12696048203966323189

/-! ## A379040.P5555078661786018553

`eq[n, A003816(A377477(n))]`
-/

namespace A379040.P5555078661786018553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A377477 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379040.P5555078661786018553

/-! ## A379040.P6143705444100103782

`record[gcd(A003816(n), A379015(n))]`
-/

namespace A379040.P6143705444100103782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003816 n) (A379015 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379040.P6143705444100103782

/-! ## A379040.P5673243185080348509

`eq[A128382(n+1), A135993(A298909(n+1))]`
-/

namespace A379040.P5673243185080348509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135993 (A298909 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379040.P5673243185080348509

/-! ## A379040.P14281660056724062167

`eq[A117569(n), A177815(n)]`
-/

namespace A379040.P14281660056724062167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379040.P14281660056724062167

/-!
# A379049: a(n) = prime(i)*dp(n,i) + prime(i)*dn(n,i) where dp(n,i) = 1 when the i-th trit of n is 1, dn(n,i) = 1 when the i-th trit of n is T, and dp(n,i) = dn(n,i) = 0 when the i-th trit of n is 0.

The programs for A379049, there is no canonical definition to state claims against.
-/

/-! ## A379049.P2226371646557900214

`A097248(2^A343229(n))+A097247(A060840(n+1))`
-/

namespace A379049.P2226371646557900214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A343229 n : ℤ))).toNat + A097247 (A060840 (n + 1)).toNat

end

end A379049.P2226371646557900214

/-!
# A379054: a(n) = composite(2*n+2) - composite(2*n).

The programs for A379054, the canonical program `A379054.P762129589633278871` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379054 has offset 1).

The definition of A379054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(2*(n+1)+2)-A002808(2*(n+1))` (program `A379054.P762129589633278871`, by `A379054.P762129589633278871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A379054.P762129589633278871

`A002808(2*(n+1)+2)-A002808(2*(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A379054

/-- `A002808(2*(n+1)+2)-A002808(2*(n+1))` -/
def P762129589633278871.Spec : Prop :=
  ∀ n, P762129589633278871.a n = A379054 (n + 1)

theorem P762129589633278871.correct : P762129589633278871.Spec := by
  intro n
  simp only [A379054, Nat.add_sub_cancel]

end A379054

/-! ## A379054.P8796397969431837503

`Δ[A099862(n+1)]`
-/

namespace A379054.P8796397969431837503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P8796397969431837503

namespace A379054

/-- `Δ[A099862(n+1)]` -/
def P8796397969431837503.Spec : Prop :=
  ∀ n, P8796397969431837503.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P17674574492716352447

`A099862(n+2)-A099862(n+1)`
-/

namespace A379054.P17674574492716352447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099862 (n + 2) - A099862 (n + 1)

end

end A379054.P17674574492716352447

namespace A379054

/-- `A099862(n+2)-A099862(n+1)` -/
def P17674574492716352447.Spec : Prop :=
  ∀ n, P17674574492716352447.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P9207775050030360673

`Δ[A377900(a(n-1))]` with `a(0)=6`
-/

namespace A379054.P9207775050030360673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A377900 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P9207775050030360673

namespace A379054

/-- `Δ[A377900(a(n-1))]` -/
def P9207775050030360673.Spec : Prop :=
  ∀ n, P9207775050030360673.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P14498511838042342114

`Δ[A002808(2*(n+1))]`
-/

namespace A379054.P14498511838042342114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P14498511838042342114

namespace A379054

/-- `Δ[A002808(2*(n+1))]` -/
def P14498511838042342114.Spec : Prop :=
  ∀ n, P14498511838042342114.a n = A379054 (n + 1)

theorem P14498511838042342114.correct : P14498511838042342114.Spec := by
  intro n
  simp only [A379054, Nat.add_sub_cancel, A379054.P14498511838042342114.f1, A379054.P14498511838042342114.a, A379054.P762129589633278871.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A379054

/-! ## A379054.P1539154200889688079

`Δ[∩[A018252(2*n+1), A018252(n+2)]]`
-/

namespace A379054.P1539154200889688079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A379054.P1539154200889688079

namespace A379054

/-- `Δ[∩[A018252(2*n+1), A018252(n+2)]]` -/
def P1539154200889688079.Spec : Prop :=
  ∀ n, P1539154200889688079.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P14932372989861400812

`Δ[A118742(Δ[n²])]`
-/

namespace A379054.P14932372989861400812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P14932372989861400812

namespace A379054

/-- `Δ[A118742(Δ[n²])]` -/
def P14932372989861400812.Spec : Prop :=
  ∀ n, P14932372989861400812.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P11545179329722888389

`A161811(2*(n+2))`
-/

namespace A379054.P11545179329722888389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161811 (2 * (n + 2))

end

end A379054.P11545179329722888389

namespace A379054

/-- `A161811(2*(n+2))` -/
def P11545179329722888389.Spec : Prop :=
  ∀ n, P11545179329722888389.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P5702543175128194365

`Δ[A056653(2*(n+1))]`
-/

namespace A379054.P5702543175128194365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P5702543175128194365

namespace A379054

/-- `Δ[A056653(2*(n+1))]` -/
def P5702543175128194365.Spec : Prop :=
  ∀ n, P5702543175128194365.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P7067217848414306472

`Δ[A072668(2*(n+1))]`
-/

namespace A379054.P7067217848414306472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P7067217848414306472

namespace A379054

/-- `Δ[A072668(2*(n+1))]` -/
def P7067217848414306472.Spec : Prop :=
  ∀ n, P7067217848414306472.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P14225220643599634817

`Δ[A079696(2*(n+1))]`
-/

namespace A379054.P14225220643599634817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P14225220643599634817

namespace A379054

/-- `Δ[A079696(2*(n+1))]` -/
def P14225220643599634817.Spec : Prop :=
  ∀ n, P14225220643599634817.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P392940513297827730

`Δ[A164028(2*(n+1))]`
-/

namespace A379054.P392940513297827730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P392940513297827730

namespace A379054

/-- `Δ[A164028(2*(n+1))]` -/
def P392940513297827730.Spec : Prop :=
  ∀ n, P392940513297827730.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P17118620254072271181

`Δ[A073169(2*(n+1))]+2`
-/

namespace A379054.P17118620254072271181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A379054.P17118620254072271181

namespace A379054

/-- `Δ[A073169(2*(n+1))]+2` -/
def P17118620254072271181.Spec : Prop :=
  ∀ n, P17118620254072271181.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P2251472854252898958

`Δ[A161537(2*(n+1))]-2`
-/

namespace A379054.P2251472854252898958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A379054.P2251472854252898958

namespace A379054

/-- `Δ[A161537(2*(n+1))]-2` -/
def P2251472854252898958.Spec : Prop :=
  ∀ n, P2251472854252898958.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P13472058366990443234

`Δ[A282671(2*(n+1))/2]`
-/

namespace A379054.P13472058366990443234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282671 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P13472058366990443234

namespace A379054

/-- `Δ[A282671(2*(n+1))/2]` -/
def P13472058366990443234.Spec : Prop :=
  ∀ n, P13472058366990443234.a n = (A379054 (n + 1) : ℚ)

end A379054

/-! ## A379054.P16550846443273009712

`Δ[A066251(4*(n+1))]`
-/

namespace A379054.P16550846443273009712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P16550846443273009712

namespace A379054

/-- `Δ[A066251(4*(n+1))]` -/
def P16550846443273009712.Spec : Prop :=
  ∀ n, P16550846443273009712.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P17267244151966962859

`Δ[A067747(4*(n+1))]`
-/

namespace A379054.P17267244151966962859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P17267244151966962859

namespace A379054

/-- `Δ[A067747(4*(n+1))]` -/
def P17267244151966962859.Spec : Prop :=
  ∀ n, P17267244151966962859.a n = A379054 (n + 1)

end A379054

/-! ## A379054.P14801626165117508841

`dr(Δ[A073866(2*(n+1))])`
-/

namespace A379054.P14801626165117508841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073866 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A379054.P14801626165117508841

namespace A379054

/-- `dr(Δ[A073866(2*(n+1))])` -/
def P14801626165117508841.Spec : Prop :=
  ∀ n, (P14801626165117508841.a n : ℤ) = A379054 (n + 1)

end A379054

/-!
# A379055: a(n) = composite(2*n+3) - composite(2*n+1).

The programs for A379055, the canonical program `A379055.P14974910481515750343` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379055 has offset 0).

The definition of A379055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(2*n+3)-A002808(2*n+1)` (program `A379055.P14974910481515750343`, by `A379055.P14974910481515750343.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A379055.P14974910481515750343

`A002808(2*n+3)-A002808(2*n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A379055

/-- `A002808(2*n+3)-A002808(2*n+1)` -/
def P14974910481515750343.Spec : Prop :=
  ∀ n, P14974910481515750343.a n = A379055 n

theorem P14974910481515750343.correct : P14974910481515750343.Spec := by
  intro n
  simp only [A379055]

end A379055

/-! ## A379055.P2266250960866040724

`Δ[A099861(n+1)]`
-/

namespace A379055.P2266250960866040724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P2266250960866040724

namespace A379055

/-- `Δ[A099861(n+1)]` -/
def P2266250960866040724.Spec : Prop :=
  ∀ n, P2266250960866040724.a n = A379055 n

end A379055

/-! ## A379055.P5920389313189683790

`A099861(n+2)-A099861(n+1)`
-/

namespace A379055.P5920389313189683790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (n + 2) - A099861 (n + 1)

end

end A379055.P5920389313189683790

namespace A379055

/-- `A099861(n+2)-A099861(n+1)` -/
def P5920389313189683790.Spec : Prop :=
  ∀ n, P5920389313189683790.a n = A379055 n

end A379055

/-! ## A379055.P7591017592409607451

`Δ[A002808(Δ[n²])]`
-/

namespace A379055.P7591017592409607451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P7591017592409607451

namespace A379055

/-- `Δ[A002808(Δ[n²])]` -/
def P7591017592409607451.Spec : Prop :=
  ∀ n, P7591017592409607451.a n = A379055 n

end A379055

/-! ## A379055.P3663230679300916197

`Δ[A018252(2*(n+1))]`
-/

namespace A379055.P3663230679300916197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P3663230679300916197

namespace A379055

/-- `Δ[A018252(2*(n+1))]` -/
def P3663230679300916197.Spec : Prop :=
  ∀ n, P3663230679300916197.a n = A379055 n

end A379055

/-! ## A379055.P2006764933484402316

`abs(Δ[A002808(2*n+1)])`
-/

namespace A379055.P2006764933484402316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A379055.P2006764933484402316

namespace A379055

/-- `abs(Δ[A002808(2*n+1)])` -/
def P2006764933484402316.Spec : Prop :=
  ∀ n, P2006764933484402316.a n = A379055 n

end A379055

/-! ## A379055.P11556137913856168750

`A018252(A103517(n+1))-A018252(2*(n+1))`
-/

namespace A379055.P11556137913856168750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A103517 (n + 1)).toNat - A018252 (2 * (n + 1))

end

end A379055.P11556137913856168750

namespace A379055

/-- `A018252(A103517(n+1))-A018252(2*(n+1))` -/
def P11556137913856168750.Spec : Prop :=
  ∀ n, P11556137913856168750.a n = A379055 n

end A379055

/-! ## A379055.P10505292454700859229

`A018252(A051755(n+3))-A018252(2*(n+1))`
-/

namespace A379055.P10505292454700859229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A051755 (n + 3)).toNat - A018252 (2 * (n + 1))

end

end A379055.P10505292454700859229

namespace A379055

/-- `A018252(A051755(n+3))-A018252(2*(n+1))` -/
def P10505292454700859229.Spec : Prop :=
  ∀ n, P10505292454700859229.a n = A379055 n

end A379055

/-! ## A379055.P11403996146463911057

`A073783(2*n+1)+A073783(2*(n+1))`
-/

namespace A379055.P11403996146463911057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (2 * n + 1) + A073783 (2 * (n + 1))

end

end A379055.P11403996146463911057

namespace A379055

/-- `A073783(2*n+1)+A073783(2*(n+1))` -/
def P11403996146463911057.Spec : Prop :=
  ∀ n, P11403996146463911057.a n = A379055 n

end A379055

/-! ## A379055.P8324245472098581574

`Δ[A072668(Δ[n²])]`
-/

namespace A379055.P8324245472098581574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P8324245472098581574

namespace A379055

/-- `Δ[A072668(Δ[n²])]` -/
def P8324245472098581574.Spec : Prop :=
  ∀ n, P8324245472098581574.a n = A379055 n

end A379055

/-! ## A379055.P12796305066422703535

`Δ[A079696(Δ[n²])]`
-/

namespace A379055.P12796305066422703535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P12796305066422703535

namespace A379055

/-- `Δ[A079696(Δ[n²])]` -/
def P12796305066422703535.Spec : Prop :=
  ∀ n, P12796305066422703535.a n = A379055 n

end A379055

/-! ## A379055.P12014058280496568590

`Δ[A164028(Δ[n²])]`
-/

namespace A379055.P12014058280496568590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P12014058280496568590

namespace A379055

/-- `Δ[A164028(Δ[n²])]` -/
def P12014058280496568590.Spec : Prop :=
  ∀ n, P12014058280496568590.a n = A379055 n

end A379055

/-! ## A379055.P2718207117584109299

`A161811(2*n+3)`
-/

namespace A379055.P2718207117584109299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161811 (2 * n + 3)

end

end A379055.P2718207117584109299

namespace A379055

/-- `A161811(2*n+3)` -/
def P2718207117584109299.Spec : Prop :=
  ∀ n, P2718207117584109299.a n = A379055 n

end A379055

/-! ## A379055.P9239511800062803930

`Δ[A060462(2*(n+1))]`
-/

namespace A379055.P9239511800062803930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P9239511800062803930

namespace A379055

/-- `Δ[A060462(2*(n+1))]` -/
def P9239511800062803930.Spec : Prop :=
  ∀ n, P9239511800062803930.a n = A379055 n

end A379055

/-! ## A379055.P3134516811773315802

`Δ[sqrt(A062312(2*(n+1)))]`
-/

namespace A379055.P3134516811773315802
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062312 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P3134516811773315802

namespace A379055

/-- `Δ[sqrt(A062312(2*(n+1)))]` -/
def P3134516811773315802.Spec : Prop :=
  ∀ n, P3134516811773315802.a n = (A379055 n : ℝ)

end A379055

/-! ## A379055.P5428934240171269352

`Δ[A073169(2*n+1)]+2`
-/

namespace A379055.P5428934240171269352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A379055.P5428934240171269352

namespace A379055

/-- `Δ[A073169(2*n+1)]+2` -/
def P5428934240171269352.Spec : Prop :=
  ∀ n, P5428934240171269352.a n = A379055 n

theorem P5428934240171269352.correct : P5428934240171269352.Spec := by
  intro n
  simp only [A379055, Nat.add_sub_cancel, A379055.P5428934240171269352.f1, A379055.P5428934240171269352.a, A379055.P14974910481515750343.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A073169, A073169.P14738260624206914448.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379055

/-! ## A379055.P1805106393353158567

`Δ[A073425(2*n+1)]+2`
-/

namespace A379055.P1805106393353158567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A379055.P1805106393353158567

namespace A379055

/-- `Δ[A073425(2*n+1)]+2` -/
def P1805106393353158567.Spec : Prop :=
  ∀ n, P1805106393353158567.a n = A379055 n

end A379055

/-! ## A379055.P16338459724716985973

`Δ[A161537(2*n+1)]-2`
-/

namespace A379055.P16338459724716985973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A379055.P16338459724716985973

namespace A379055

/-- `Δ[A161537(2*n+1)]-2` -/
def P16338459724716985973.Spec : Prop :=
  ∀ n, P16338459724716985973.a n = A379055 n

theorem P16338459724716985973.correct : P16338459724716985973.Spec := by
  intro n
  simp only [A379055, Nat.add_sub_cancel, A379055.P16338459724716985973.f1, A379055.P16338459724716985973.a, A379055.P14974910481515750343.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A161537, A161537.P5701896001486132994.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379055

/-! ## A379055.P3716712698245464090

`Δ[A139270(2*(n+1))/2]`
-/

namespace A379055.P3716712698245464090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139270 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P3716712698245464090

namespace A379055

/-- `Δ[A139270(2*(n+1))/2]` -/
def P3716712698245464090.Spec : Prop :=
  ∀ n, P3716712698245464090.a n = (A379055 n : ℚ)

end A379055

/-! ## A379055.P8047201330213694696

`Δ[A282671(2*n+1)/2]`
-/

namespace A379055.P8047201330213694696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282671 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379055.P8047201330213694696

namespace A379055

/-- `Δ[A282671(2*n+1)/2]` -/
def P8047201330213694696.Spec : Prop :=
  ∀ n, P8047201330213694696.a n = (A379055 n : ℚ)

theorem P8047201330213694696.correct : P8047201330213694696.Spec := by
  intro n
  simp only [A379055, Nat.add_sub_cancel, A379055.P8047201330213694696.f1, A379055.P8047201330213694696.a, A379055.P14974910481515750343.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A282671, A282671.P11944958329678511137.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379055

/-!
# A379057: a(0) = 0; thereafter a(n) is the least integer (in absolute value) not yet in the sequence such that the absolute difference between a(n-1) and a(n) is a square > 1; in case of a tie, preference is given to the positive value.

The programs for A379057, there is no canonical definition to state claims against.
-/

/-! ## A379057.P7136246027797531215

`∑[A379058(n)]-A379058(n)`
-/

namespace A379057.P7136246027797531215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A379058 n

end

end A379057.P7136246027797531215

/-! ## A379057.P13555832756595421423

`Δ[A380313(n)]-A379058(n)`
-/

namespace A379057.P13555832756595421423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A379058 n

end

end A379057.P13555832756595421423

/-! ## A379057.P6216097983126851351

`A380313(n+1)-(A380313(n)+A379058(n))`
-/

namespace A379057.P6216097983126851351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380313 (n + 1) - (A380313 n + A379058 n)

end

end A379057.P6216097983126851351

/-!
# A379058: First differences of A379057.

The programs for A379058, there is no canonical definition to state claims against.
-/

/-! ## A379058.P12058198710603781862

`Δ[A379057(n)]`
-/

namespace A379058.P12058198710603781862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379058.P12058198710603781862

/-! ## A379058.P8322831215342084271

`A379057(n+1)-A379057(n)`
-/

namespace A379058.P8322831215342084271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379057 (n + 1) - A379057 n

end

end A379058.P8322831215342084271

/-!
# A379059: Index of n in A377091, or -1 if n does not appear there.

The programs for A379059, there is no canonical definition to state claims against.
-/

/-! ## A379059.P14207507345865873238

`A379786(n)+2*n`
-/

namespace A379059.P14207507345865873238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379786 n + (2 * n : ℤ)

end

end A379059.P14207507345865873238

/-! ## A379059.P17159291300794808364

`A379063(n)+A379064(n)-A379060(n)`
-/

namespace A379059.P17159291300794808364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 n + (A379064 n - A379060 n)

end

end A379059.P17159291300794808364

/-! ## A379059.P7330929323902500918

`A379060(n)+A379786(n)-A379787(n)`
-/

namespace A379059.P7330929323902500918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 n + (A379786 n - A379787 n)

end

end A379059.P7330929323902500918

/-!
# A379060: Index of -n in A377091, or -1 if n does not appear there.

The programs for A379060, there is no canonical definition to state claims against.
-/

/-! ## A379060.P12820416574470187478

`A379787(n)+2*n`
-/

namespace A379060.P12820416574470187478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379787 n + (2 * n : ℤ)

end

end A379060.P12820416574470187478

/-! ## A379060.P16115740322102659821

`A379063(n)+A379064(n)-A379059(n)`
-/

namespace A379060.P16115740322102659821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 n + (A379064 n - A379059 n)

end

end A379060.P16115740322102659821

/-! ## A379060.P17443620492841020050

`A379059(n)+A379787(n)-A379786(n)`
-/

namespace A379060.P17443620492841020050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n + (A379787 n - A379786 n)

end

end A379060.P17443620492841020050

/-!
# A379061: First differences of A377091.

The programs for A379061, there is no canonical definition to state claims against.
-/

/-! ## A379061.P14871918171715851926

`A377091(n+1)-A377091(n)`
-/

namespace A379061.P14871918171715851926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (n + 1) - A377091 n

end

end A379061.P14871918171715851926

/-! ## A379061.P2469795237377974982

`Δ[A377091(n)]`
-/

namespace A379061.P2469795237377974982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379061.P2469795237377974982

/-! ## A379061.P11982715447281926647

`abs(A379062(n))*A379062(n)`
-/

namespace A379061.P11982715447281926647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A379062 n| * A379062 n

end

end A379061.P11982715447281926647

/-! ## A379061.P13069181036423904608

`A079643(A379062(n)²)*A379062(n)`
-/

namespace A379061.P13069181036423904608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (A379062 n ^ 2).toNat * A379062 n

end

end A379061.P13069181036423904608

/-!
# A379063: a(n) = min{A379059(n), A379060(n)}.

The programs for A379063, there is no canonical definition to state claims against.
-/

/-! ## A379063.P952856516626044500

`A379064(n)-A379065(n)`
-/

namespace A379063.P952856516626044500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379064 n - A379065 n

end

end A379063.P952856516626044500

/-! ## A379063.P16068289322592997887

`A379059(n)+A379060(n)-A379064(n)`
-/

namespace A379063.P16068289322592997887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n + (A379060 n - A379064 n)

end

end A379063.P16068289322592997887

/-! ## A379063.P4917503699836180597

`A379064(n)-abs(A379060(n)-(A379786(n)+2*n))`
-/

namespace A379063.P4917503699836180597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379064 n - |A379060 n - (A379786 n + (2 * n : ℤ))|

end

end A379063.P4917503699836180597

/-!
# A379064: a(n) = max{A379059(n), A379060(n)}.

The programs for A379064, there is no canonical definition to state claims against.
-/

/-! ## A379064.P11704813306566171448

`A379065(n)+A379063(n)`
-/

namespace A379064.P11704813306566171448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379065 n + A379063 n

end

end A379064.P11704813306566171448

/-! ## A379064.P7442871648414631316

`A379059(n)+A379060(n)-A379063(n)`
-/

namespace A379064.P7442871648414631316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n + (A379060 n - A379063 n)

end

end A379064.P7442871648414631316

/-! ## A379064.P13009647094866067771

`A379063(n)+abs(A379060(n)-(A379786(n)+2*n))`
-/

namespace A379064.P13009647094866067771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 n + |A379060 n - (A379786 n + (2 * n : ℤ))|

end

end A379064.P13009647094866067771

/-!
# A379065: a(n) = A379064(n) - A379063(n).

The programs for A379065, there is no canonical definition to state claims against.
-/

/-! ## A379065.P4317563884432807716

`A379064(n)-A379063(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379065.P4317563884432807716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379064 n - A379063 n

end

end A379065.P4317563884432807716

/-! ## A379065.P9736516502493268259

`abs(A379059(n)-A379060(n))`
-/

namespace A379065.P9736516502493268259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A379059 n - A379060 n|

end

end A379065.P9736516502493268259

/-! ## A379065.P6394899668260318248

`abs(A379786(n)-A379787(n))`
-/

namespace A379065.P6394899668260318248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A379786 n - A379787 n|

end

end A379065.P6394899668260318248

/-! ## A379065.P3294318983824036599

`abs(A379059(n)-(A379787(n)+2*n))`
-/

namespace A379065.P3294318983824036599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A379059 n - (A379787 n + (2 * n : ℤ))|

end

end A379065.P3294318983824036599

/-! ## A379065.P18011051384068038864

`abs(A379060(n)-(A379786(n)+2*n))`
-/

namespace A379065.P18011051384068038864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A379060 n - (A379786 n + (2 * n : ℤ))|

end

end A379065.P18011051384068038864

/-! ## A379065.P5527318890190924030

`A379059(n)+A379060(n)-A379063(n)-A379063(n)`
-/

namespace A379065.P5527318890190924030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n + (A379060 n - A379063 n) - A379063 n

end

end A379065.P5527318890190924030

/-! ## A379065.P10924888649848381066

`A379064(n)-(A379059(n)+A379060(n)-A379064(n))`
-/

namespace A379065.P10924888649848381066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379064 n - (A379059 n + (A379060 n - A379064 n))

end

end A379065.P10924888649848381066

/-!
# A379066: Indices in A377091 where there is a record upward jump from a negative term to a positive term.

The programs for A379066, there is no canonical definition to state claims against.
-/

/-! ## A379066.P15639566544312071786

`A379788(n+1)-A057427(A028660(n))`
-/

namespace A379066.P15639566544312071786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 1) - A057427 (A028660 n).toNat

end

end A379066.P15639566544312071786

/-! ## A379066.P9026745456289074562

`A379788(n+1)-A351202(A118751(n))`
-/

namespace A379066.P9026745456289074562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 1) - A351202 (A118751 n).toNat

end

end A379066.P9026745456289074562

/-! ## A379066.P2354502831777244695

`A379788(n+1)+A008683(A000043(n+1))`
-/

namespace A379066.P2354502831777244695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 1) + A008683 (A000043 (n + 1)).toNat

end

end A379066.P2354502831777244695

/-! ## A379066.P4139406123108838343

`A379788(n+1)-A286518(A007519(n+1))`
-/

namespace A379066.P4139406123108838343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 1) - A286518 (A007519 (n + 1)).toNat

end

end A379066.P4139406123108838343

/-! ## A379066.P6913960049418365384

`A379788(n+1)+A057427(A293211(n+1))-2`
-/

namespace A379066.P6913960049418365384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 1) + A057427 (A293211 (n + 1)).toNat - 2

end

end A379066.P6913960049418365384

/-!
# A379067: Smallest missing positive number after A377091(n) has been found.

The programs for A379067, there is no canonical definition to state claims against.
-/

/-! ## A379067.P1132543732705791356

`A398500(n)+1`
-/

namespace A379067.P1132543732705791356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398500 n + 1

end

end A379067.P1132543732705791356

/-! ## A379067.P6492414299175991713

`A398501(n)-A398499(n)`
-/

namespace A379067.P6492414299175991713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n - A398499 n

end

end A379067.P6492414299175991713

/-! ## A379067.P1137174823264163459

`A398502(n)-A398504(n)`
-/

namespace A379067.P1137174823264163459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398502 n - A398504 n

end

end A379067.P1137174823264163459

/-!
# A379068: Absolute value of smallest (in magnitude) missing negative number after A377091(n) has been found.

The programs for A379068, there is no canonical definition to state claims against.
-/

/-! ## A379068.P2706785071713380903

`A398499(n)+1`
-/

namespace A379068.P2706785071713380903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398499 n + 1

end

end A379068.P2706785071713380903

/-! ## A379068.P16109018397894818218

`A398501(n)-A398500(n)`
-/

namespace A379068.P16109018397894818218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n - A398500 n

end

end A379068.P16109018397894818218

/-! ## A379068.P18211972824082096845

`A398503(n)-A398505(n)`
-/

namespace A379068.P18211972824082096845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398503 n - A398505 n

end

end A379068.P18211972824082096845

/-!
# A379069: Nonnegative numbers k such that the index of -k in A377091 is <= the index of k.

The programs for A379069, there is no canonical definition to state claims against.
-/

/-! ## A379069.P14938564985437733675

`eq[A379059(n), A379064(n)]`
-/

namespace A379069.P14938564985437733675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379069.P14938564985437733675

/-! ## A379069.P13146212775240069226

`eq[A379060(n), A379063(n)]`
-/

namespace A379069.P13146212775240069226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379069.P13146212775240069226

/-! ## A379069.P2488793882607559950

`eq[A379786(n)+2*n, A379064(n)]`
-/

namespace A379069.P2488793882607559950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379786 n + (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379069.P2488793882607559950

/-! ## A379069.P4479280641870780028

`eq[A379787(n)+2*n, A379063(n)]`
-/

namespace A379069.P4479280641870780028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379787 n + (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379069.P4479280641870780028

/-! ## A379069.P8337072692450161040

`lt[A377091(A379063(n)), A008619(n)]`
-/

namespace A379069.P8337072692450161040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379069.P8337072692450161040

/-! ## A379069.P7076646823247057550

`lt[A377091(A379063(n)), A121373(n)]`
-/

namespace A379069.P7076646823247057550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379069.P7076646823247057550

/-! ## A379069.P5810185876404278782

`lt[A377091(A379063(n)), A185118(n)]`
-/

namespace A379069.P5810185876404278782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379069.P5810185876404278782

/-! ## A379069.P9782299129556029722

`lt[A377091(A379063(n)), A134866(n+1)]`
-/

namespace A379069.P9782299129556029722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379069.P9782299129556029722

/-! ## A379069.P856093429682727017

`lt[A377091(A379063(n)), A293482(n+1)]`
-/

namespace A379069.P856093429682727017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379069.P856093429682727017

/-! ## A379069.P8353303623134422677

`lt[A377091(A379063(n)), A379071(n+1)]`
-/

namespace A379069.P8353303623134422677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379069.P8353303623134422677

/-! ## A379069.P2637500141539567945

`lt[A377091(A379063(n)), A124010(2*n+3)]`
-/

namespace A379069.P2637500141539567945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379069.P2637500141539567945

/-! ## A379069.P17734148497877561731

`lt[A377091(A379063(n)), A380417(n+1)]`
-/

namespace A379069.P17734148497877561731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379069.P17734148497877561731

/-!
# A379070: a(n) = |A377091(n)|.

The programs for A379070, there is no canonical definition to state claims against.
-/

/-! ## A379070.P15796512534818341481

`abs(A377091(n))`
-/

namespace A379070.P15796512534818341481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A377091 n|

end

end A379070.P15796512534818341481

/-! ## A379070.P1515516894533241076

`A379071(n)+A004526(n)`
-/

namespace A379070.P1515516894533241076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379071 n + A004526 n

end

end A379070.P1515516894533241076

/-! ## A379070.P16328898625575283026

`lcm(A106400(n), A377091(n))`
-/

namespace A379070.P16328898625575283026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A377091 n)

end

end A379070.P16328898625575283026

/-! ## A379070.P12806699330904841267

`∑{d}[A377091(n), A000010(#)]`
-/

namespace A379070.P12806699330904841267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A379070.P12806699330904841267

/-! ## A379070.P16141207757737853167

`abs(∑[A379061(n)]-A379061(n))`
-/

namespace A379070.P16141207757737853167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A379061 n|

end

end A379070.P16141207757737853167

/-! ## A379070.P10045239688001040076

`gcd(round(A003849(n)/3), A377091(n))`
-/

namespace A379070.P10045239688001040076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A003849 n : ℚ) / 3)) (A377091 n)

end

end A379070.P10045239688001040076

/-! ## A379070.P13108935550613005430

`gcd(-A377091(n), A146076(2*n+1))`
-/

namespace A379070.P13108935550613005430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A377091 n) (A146076 (2 * n + 1))

end

end A379070.P13108935550613005430

/-! ## A379070.P15042618532299580782

`gcd(A000122(A016825(n)), A377091(n))`
-/

namespace A379070.P15042618532299580782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A016825 n).toNat) (A377091 n)

end

end A379070.P15042618532299580782

/-! ## A379070.P12253317084768982745

`gcd(A119944(n), A377091(n))`
-/

namespace A379070.P12253317084768982745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119944 n) (A377091 n)

end

end A379070.P12253317084768982745

/-!
# A379071: a(n) = |A377091[n]| - floor(n/2).

The programs for A379071, there is no canonical definition to state claims against.
-/

/-! ## A379071.P13646513403415677584

`abs(A377091(n))-floor(n/2)`
-/

namespace A379071.P13646513403415677584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A377091 n| - ⌊(n : ℚ) / 2⌋

end

end A379071.P13646513403415677584

/-! ## A379071.P9605849094850507221

`A379070(n)-A004526(n)`
-/

namespace A379071.P9605849094850507221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 n - A004526 n

end

end A379071.P9605849094850507221

/-! ## A379071.P13543348965813967882

`lcm(A106400(n), A377091(n))-A004526(n)`
-/

namespace A379071.P13543348965813967882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A106400 n) (A377091 n) : ℤ) - A004526 n

end

end A379071.P13543348965813967882

/-! ## A379071.P10076760364031672054

`∑{d}[A377091(n), A000010(#)]-A004526(n)`
-/

namespace A379071.P10076760364031672054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d - A004526 n

end

end A379071.P10076760364031672054

/-! ## A379071.P10808536965584566649

`A379070(n)-A002265(A276151(2*n+1))`
-/

namespace A379071.P10808536965584566649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 n - A002265 (A276151 (2 * n + 1)).toNat

end

end A379071.P10808536965584566649

/-! ## A379071.P71170763645212632

`gcd(-A377091(n), A146076(2*n+1))-A004526(n)`
-/

namespace A379071.P71170763645212632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (-A377091 n) (A146076 (2 * n + 1)) : ℤ) - A004526 n

end

end A379071.P71170763645212632

/-! ## A379071.P12386380616642268720

`gcd(A119944(n), A377091(n))-A004526(n)`
-/

namespace A379071.P12386380616642268720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A119944 n) (A377091 n) : ℤ) - A004526 n

end

end A379071.P12386380616642268720

/-!
# A379072: Indices k such that A377091(k) >= 0.

The programs for A379072, there is no canonical definition to state claims against.
-/

/-! ## A379072.P5793739568465825218

`lt[-1, A377091(n)]`
-/

namespace A379072.P5793739568465825218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379072.P5793739568465825218

/-! ## A379072.P14483953710325068701

`A379059(A379873(n))`
-/

namespace A379072.P14483953710325068701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A379873 n).toNat

end

end A379072.P14483953710325068701

/-! ## A379072.P1185947477419757759

`eq[A377091(n), A379070(n)]`
-/

namespace A379072.P1185947477419757759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379072.P1185947477419757759

/-! ## A379072.P18421739242109889712

`comp[A379060(n+1)]`
-/

namespace A379072.P18421739242109889712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A379072.P18421739242109889712

/-! ## A379072.P2953183676130314653

`comp[A000027(comp[A379059(n)])]`
-/

namespace A379072.P2953183676130314653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A379072.P2953183676130314653

/-!
# A379073: Indices k such that A377091(k) <= 0.

The programs for A379073, there is no canonical definition to state claims against.
-/

/-! ## A379073.P16255054194604877817

`comp[A379072(n+2)]`
-/

namespace A379073.P16255054194604877817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379072 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A379073.P16255054194604877817

/-! ## A379073.P16269141477785309506

`lt[A377091(n), 1]`
-/

namespace A379073.P16269141477785309506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379073.P16269141477785309506

/-! ## A379073.P5744294369427163179

`A379060(A379874(n))`
-/

namespace A379073.P5744294369427163179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (A379874 n).toNat

end

end A379073.P5744294369427163179

/-! ## A379073.P9029041892906443778

`eq[n, A379060(A379070(n))]`
-/

namespace A379073.P9029041892906443778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (A379070 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379073.P9029041892906443778

/-! ## A379073.P14430178664717491704

`comp[A379059(n+1)]`
-/

namespace A379073.P14430178664717491704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A379073.P14430178664717491704

/-! ## A379073.P6863579659889447552

`lt[∑[A379061(n)]-A379061(n), 1]`
-/

namespace A379073.P6863579659889447552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A379061 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A379073.P6863579659889447552

/-! ## A379073.P5969523743150911672

`lt[0, char[A379060(n)]]`
-/

namespace A379073.P5969523743150911672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379073.P5969523743150911672

/-!
# A379074: Record (positive) high points in A377091.

The programs for A379074, there is no canonical definition to state claims against.
-/

/-! ## A379074.P4838708723220927927

`record[A377091(n)]`
-/

namespace A379074.P4838708723220927927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379074.P4838708723220927927

/-! ## A379074.P6828905546653647062

`A377091(A379075(n+1))`
-/

namespace A379074.P6828905546653647062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379075 (n + 1)).toNat

end

end A379074.P6828905546653647062

/-! ## A379074.P7093324297749815692

`A379070(A379075(2*n+1-n))`
-/

namespace A379074.P7093324297749815692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379075 (2 * n + 1 - n)).toNat

end

end A379074.P7093324297749815692

/-! ## A379074.P2266152198566787891

`record[A379873(n)]`
-/

namespace A379074.P2266152198566787891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379074.P2266152198566787891

/-! ## A379074.P7709648479765371640

`A380250(A379075(n+2)-1)`
-/

namespace A379074.P7709648479765371640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380250 (A379075 (n + 2) - 1).toNat

end

end A379074.P7709648479765371640

/-! ## A379074.P4215369738172962859

`A377091(eq[A377091(n), A380250(n)])`
-/

namespace A379074.P4215369738172962859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A379074.P4215369738172962859

/-!
# A379075: Indices in A377091 of the records shown in A379074.

The programs for A379075, there is no canonical definition to state claims against.
-/

/-! ## A379075.P2660173855107129126

`A379059(record[A377091(n)])`
-/

namespace A379075.P2660173855107129126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379075.P2660173855107129126

/-! ## A379075.P10259682016947144424

`A379059(record[A379873(n)])`
-/

namespace A379075.P10259682016947144424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379075.P10259682016947144424

/-! ## A379075.P6677449686729755506

`A379059(A379074(n+1))`
-/

namespace A379075.P6677449686729755506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A379074 (n + 1)).toNat

end

end A379075.P6677449686729755506

/-! ## A379075.P2268149244868310348

`eq[A377091(n), A380250(n)]`
-/

namespace A379075.P2268149244868310348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379075.P2268149244868310348

/-! ## A379075.P11476072070801768509

`A379059(eq[1, char[A380250(n)]])`
-/

namespace A379075.P11476072070801768509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380250 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A379075.P11476072070801768509

/-!
# A379076: Record high points in the negation of A377091.

The programs for A379076, there is no canonical definition to state claims against.
-/

/-! ## A379076.P15754283684374607516

`record[A379874(n)]`
-/

namespace A379076.P15754283684374607516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379076.P15754283684374607516

/-! ## A379076.P1083726618818654051

`record[-A377091(n)]`
-/

namespace A379076.P1083726618818654051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379076.P1083726618818654051

/-! ## A379076.P6303515207435250722

`A379070(A379077(n+1))`
-/

namespace A379076.P6303515207435250722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379077 (n + 1)).toNat

end

end A379076.P6303515207435250722

/-! ## A379076.P9050773966325296146

`record[A379070(A379073(n+1))]`
-/

namespace A379076.P9050773966325296146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379076.P9050773966325296146

/-! ## A379076.P3541150699396905218

`record[A057428(n)*A377091(n)]`
-/

namespace A379076.P3541150699396905218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379076.P3541150699396905218

/-! ## A379076.P4399524319125490351

`record[A096268(2*n)-A377091(n)]`
-/

namespace A379076.P4399524319125490351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (2 * n) - A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379076.P4399524319125490351

/-! ## A379076.P10485981740615957822

`record[A000035(2*(n+1))-A377091(n)]`
-/

namespace A379076.P10485981740615957822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1)) - A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379076.P10485981740615957822

/-! ## A379076.P12352970194714413729

`record[A007814(2*n+3)-A377091(n)]`
-/

namespace A379076.P12352970194714413729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 3) - A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379076.P12352970194714413729

/-!
# A379077: Indices in A377091 of the records shown in A379076.

The programs for A379077, there is no canonical definition to state claims against.
-/

/-! ## A379077.P672944499603380872

`A379060(record[A379874(n)])`
-/

namespace A379077.P672944499603380872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379077.P672944499603380872

/-! ## A379077.P17316108604582588122

`A379060(A379076(n+1))`
-/

namespace A379077.P17316108604582588122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (A379076 (n + 1)).toNat

end

end A379077.P17316108604582588122

/-! ## A379077.P16218414088622340455

`A379060(record[-A377091(n)])`
-/

namespace A379077.P16218414088622340455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379077.P16218414088622340455

/-! ## A379077.P3281136569380271050

`A379060(record[A185012(n)-A377091(n)])`
-/

namespace A379077.P3281136569380271050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n - A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379077.P3281136569380271050

/-! ## A379077.P8691238078959509607

`A379060(record[A057428(n)*A377091(n)])`
-/

namespace A379077.P8691238078959509607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379077.P8691238078959509607

/-! ## A379077.P978493351878849604

`A379060(record[A096268(2*n)-A377091(n)])`
-/

namespace A379077.P978493351878849604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (2 * n) - A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379077.P978493351878849604

/-! ## A379077.P15049117250887501930

`A379060(record[A000035(2*(n+1))-A377091(n)])`
-/

namespace A379077.P15049117250887501930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1)) - A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379077.P15049117250887501930

/-! ## A379077.P14581241974839380889

`A379060(record[A000007(3*n+2)-A377091(n)])`
-/

namespace A379077.P14581241974839380889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 2) - A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379077.P14581241974839380889

/-!
# A379078: Partial sums of A377091.

The programs for A379078, there is no canonical definition to state claims against.
-/

/-! ## A379078.P8060044381559467347

`∑[A377091(n)]`
-/

namespace A379078.P8060044381559467347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379078.P8060044381559467347

/-! ## A379078.P13823103553466759693

`A377091(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A379078.P13823103553466759693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A377091 n + a (A023443 n).toNat

end

end A379078.P13823103553466759693

/-! ## A379078.P15817609026974255601

`∑[∑[A379061(n)]-A379061(n)]`
-/

namespace A379078.P15817609026974255601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A379061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379078.P15817609026974255601

/-!
# A379079: Positions of 1's in the digit stream of A379651.

The programs for A379079, there is no canonical definition to state claims against.
-/

/-! ## A379079.P10229436867513465429

`record[(n+1)*A379651(n)]`
-/

namespace A379079.P10229436867513465429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A379651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379079.P10229436867513465429

/-!
# A379080: Expansion of (1/x) * Series_Reversion( x * (1/(1 + x) - x^2)^2 ).

The programs for A379080, there is no canonical definition to state claims against.
-/

/-! ## A379080.P15536106940114940161

`A105353(A000108(n))+A079291(n)`
-/

namespace A379080.P15536106940114940161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105353 (A000108 n).toNat + A079291 n

end

end A379080.P15536106940114940161

/-! ## A379080.P11839765760600367921

`A369267(n)+A086077(A161731(n))`
-/

namespace A379080.P11839765760600367921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369267 n + A086077 (A161731 n).toNat

end

end A379080.P11839765760600367921

/-!
# A379081: Expansion of (1/x) * Series_Reversion( x * (1/(1 + x) - x^2)^3 ).

The programs for A379081, there is no canonical definition to state claims against.
-/

/-! ## A379081.P2320216960199305370

`A369270(n)+A004273(A051118(n))`
-/

namespace A379081.P2320216960199305370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369270 n + A004273 (A051118 n).toNat

end

end A379081.P2320216960199305370

/-! ## A379081.P3355958744420337099

`A132270(A354436(n))+A103210(n)`
-/

namespace A379081.P3355958744420337099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A354436 n).toNat + A103210 n

end

end A379081.P3355958744420337099

/-!
# A379082: Expansion of (1/x) * Series_Reversion( x * (1/(1 + x) - x^3)^2 ).

The programs for A379082, there is no canonical definition to state claims against.
-/

/-! ## A379082.P13102980665942857430

`A318612(A101399(n))`
-/

namespace A379082.P13102980665942857430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (A101399 n).toNat

end

end A379082.P13102980665942857430

/-! ## A379082.P3422859874267185592

`A261585(A179598(n))+n`
-/

namespace A379082.P3422859874267185592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A179598 n).toNat + (n : ℤ)

end

end A379082.P3422859874267185592

/-!
# A379083: Expansion of (1/x) * Series_Reversion( x * (1/(1 + x) - x^3)^3 ).

The programs for A379083, there is no canonical definition to state claims against.
-/

/-! ## A379083.P13500659833070368886

`A003963(round(9^n/sqrt(5))+1)`
-/

namespace A379083.P13500659833070368886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((9 ^ n : ℝ) / Real.sqrt (5 : ℝ)) + 1).toNat

end

end A379083.P13500659833070368886

/-!
# A379085: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n+k-1,k) * binomial(2*n+k,n-3*k).

The programs for A379085, there is no canonical definition to state claims against.
-/

/-! ## A379085.P212697133791606216

`record[A168315(∑[A297167(n+4)])]`
-/

namespace A379085.P212697133791606216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379085.P212697133791606216

/-! ## A379085.P5678040744112335054

`A341307(A341320(n)+A001850(n))`
-/

namespace A379085.P5678040744112335054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (A341320 n + A001850 n).toNat

end

end A379085.P5678040744112335054

/-!
# A379086: a(n) = Sum_{k=0..floor(n/2)} binomial(3*n+k-1,k) * binomial(3*n+k,n-2*k).

The programs for A379086, there is no canonical definition to state claims against.
-/

/-! ## A379086.P4614451536254290961

`A028310(A257675(n))`
-/

namespace A379086.P4614451536254290961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A257675 n).toNat

end

end A379086.P4614451536254290961

/-!
# A379087: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n+k-1,k) * binomial(3*n+k,n-3*k).

The programs for A379087, there is no canonical definition to state claims against.
-/

/-! ## A379087.P5032468611582350217

`A333861(a(n-1)²+3)` with `a(0)=1`
-/

namespace A379087.P5032468611582350217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333861 (a (n - 1) ^ 2 + 3).toNat

end

end A379087.P5032468611582350217

/-!
# A379088: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3) * (1 + x^2*A(x)^7).

The programs for A379088, there is no canonical definition to state claims against.
-/

/-! ## A379088.P8981885761193273267

`A049980(A372236(n)+A061696(n))`
-/

namespace A379088.P8981885761193273267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (A372236 n + A061696 n).toNat

end

end A379088.P8981885761193273267

/-! ## A379088.P9522680252672939036

`A364478(n)-A378370(A225029(n))`
-/

namespace A379088.P9522680252672939036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364478 n - A378370 (A225029 n).toNat

end

end A379088.P9522680252672939036

/-!
# A379089: G.f. A(x) satisfies A(x) = (1 + x*A(x)^2) * (1 + x^3*A(x)^7).

The programs for A379089, there is no canonical definition to state claims against.
-/

/-! ## A379089.P3199798633815911738

`A097992(A150862(n))`
-/

namespace A379089.P3199798633815911738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A150862 n).toNat

end

end A379089.P3199798633815911738

/-! ## A379089.P12775427425372651756

`A110656(∑[A150876(n)])`
-/

namespace A379089.P12775427425372651756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A379089.P12775427425372651756

/-!
# A379090: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3) * (1 + x^3*A(x)^10).

The programs for A379090, there is no canonical definition to state claims against.
-/

/-! ## A379090.P10464623739902001727

`A261213(A051354(n))`
-/

namespace A379090.P10464623739902001727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261213 (A051354 n).toNat

end

end A379090.P10464623739902001727

/-! ## A379090.P2779528635736421400

`A003051(2*A007840(n))`
-/

namespace A379090.P2779528635736421400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (2 * A007840 n).toNat

end

end A379090.P2779528635736421400

/-!
# A379094: Numbers whose factors in the canonical prime factorization neither increase weakly nor decrease weakly.

The programs for A379094, there is no canonical definition to state claims against.
-/

/-! ## A379094.P10000458476643100430

`∪[A253385(n+1), A379097(n+1)]`
-/

namespace A379094.P10000458476643100430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379094.P10000458476643100430

/-! ## A379094.P4944156542993406998

`∪[A379093(n+1), A379097(n+1)]`
-/

namespace A379094.P4944156542993406998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379094.P4944156542993406998

/-! ## A379094.P15082903138430540084

`∩[A000977(n+1), A357863(n+1)]`
-/

namespace A379094.P15082903138430540084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379094.P15082903138430540084

/-! ## A379094.P17365230562130251624

`∩[A299991(n+1), A357863(n+1)]`
-/

namespace A379094.P17365230562130251624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379094.P17365230562130251624

/-! ## A379094.P15713252214212455936

`∩[A357863(n+1), A375055(n+1)]`
-/

namespace A379094.P15713252214212455936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379094.P15713252214212455936

/-!
# A379095: The water sealings of numbers that are not waterproof (A379097).

The programs for A379095, there is no canonical definition to state claims against.
-/

/-! ## A379095.P7572114419879645374

`A379098(n+1)/A379097(n+1)`
-/

namespace A379095.P7572114419879645374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379098 (n + 1) : ℚ) / (A379097 (n + 1) : ℚ)

end

end A379095.P7572114419879645374

/-!
# A379096: Waterproof numbers >= 60.

The programs for A379096, there is no canonical definition to state claims against.
-/

/-! ## A379096.P7830652855840437860

`filter[A266916(n+2), A014306(#)]`
-/

namespace A379096.P7830652855840437860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266916 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A379096.P7830652855840437860

/-! ## A379096.P14641185001857966536

`comp[A256863(A033648(n+1))]+61`
-/

namespace A379096.P14641185001857966536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256863 (A033648 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 61

end

end A379096.P14641185001857966536

/-! ## A379096.P15319346669664317388

`comp[A354583(A002203(n))-1]+61`
-/

namespace A379096.P15319346669664317388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354583 (A002203 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 61

end

end A379096.P15319346669664317388

/-!
# A379097: Numbers that are not waterproof.

The programs for A379097, there is no canonical definition to state claims against.
-/

/-! ## A379097.P1416926399832425351

`A379098(n+1)/A379095(n+1)`
-/

namespace A379097.P1416926399832425351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379098 (n + 1) : ℚ) / (A379095 (n + 1) : ℚ)

end

end A379097.P1416926399832425351

/-! ## A379097.P15604239387678227738

`∩[A126855(n+1), A350140(n+1)]`
-/

namespace A379097.P15604239387678227738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379097.P15604239387678227738

/-! ## A379097.P5179611038069680235

`∩[A126855(n+1), A335377(n+1)]`
-/

namespace A379097.P5179611038069680235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379097.P5179611038069680235

/-! ## A379097.P6845057001291693808

`∩[A126855(n+1), A383517(n+1)]`
-/

namespace A379097.P6845057001291693808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379097.P6845057001291693808

/-! ## A379097.P15150451349925408099

`∩[A126855(n+1), A383531(n+1)]`
-/

namespace A379097.P15150451349925408099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379097.P15150451349925408099

/-!
# A379098: The waterproof hulls of numbers that are not waterproof (A379097).

The programs for A379098, there is no canonical definition to state claims against.
-/

/-! ## A379098.P6521539537544763356

`A379095(n+1)*A379097(n+1)`
-/

namespace A379098.P6521539537544763356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379095 (n + 1) * A379097 (n + 1)

end

end A379098.P6521539537544763356

/-! ## A379098.P3796312290131877777

`A146094(A325986(3*(n+1)))*A379097(n+1)`
-/

namespace A379098.P3796312290131877777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146094 (A325986 (3 * (n + 1))).toNat * A379097 (n + 1)

end

end A379098.P3796312290131877777

/-! ## A379098.P13641293501081937714

`A083953(A029747(3*n+5))*A379097(n+1)`
-/

namespace A379098.P13641293501081937714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (A029747 (3 * n + 5)).toNat * A379097 (n + 1)

end

end A379098.P13641293501081937714

/-! ## A379098.P16362606256237914868

`A120360(A120397(3*(n+1))+2)`
-/

namespace A379098.P16362606256237914868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120360 (A120397 (3 * (n + 1)) + 2).toNat

end

end A379098.P16362606256237914868

/-!
# A379099: a(n) = Sum_{k=0..n} binomial(2*k, k)*binomial(2*n, n)/(n + 1). Row sums of A379100.

The programs for A379099, the canonical program `A379099.P6794364004104742208` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379099 has offset 0).

The definition of A379099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379099.P6794364004104742208

`A000108(n)*A006134(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A379099

/-- `A000108(n)*A006134(n)` -/
def P6794364004104742208.Spec : Prop :=
  ∀ n, P6794364004104742208.a n = A379099 n

theorem P6794364004104742208.correct : P6794364004104742208.Spec := by
  intro n
  simp only [A379099]

end A379099

/-! ## A379099.P1985994973812961502

`∑{#}[n, C(2*#, #)*C(2*n, n)/(n+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379099.P1985994973812961502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * k) k * Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A379099.P1985994973812961502

namespace A379099

/-- `∑{#}[n, C(2*#, #)*C(2*n, n)/(n+1)]` -/
def P1985994973812961502.Spec : Prop :=
  ∀ n, P1985994973812961502.a n = (A379099 n : ℚ)

end A379099

/-! ## A379099.P17635575740533498710

`∑[A000984(n)]*A000108(n)`
-/

namespace A379099.P17635575740533498710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 n

end

end A379099.P17635575740533498710

namespace A379099

/-- `∑[A000984(n)]*A000108(n)` -/
def P17635575740533498710.Spec : Prop :=
  ∀ n, P17635575740533498710.a n = A379099 n

end A379099

/-! ## A379099.P8732577318573148923

`A000108(n)*A100066(2*n+1)`
-/

namespace A379099.P8732577318573148923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A100066 (2 * n + 1)

end

end A379099.P8732577318573148923

namespace A379099

/-- `A000108(n)*A100066(2*n+1)` -/
def P8732577318573148923.Spec : Prop :=
  ∀ n, P8732577318573148923.a n = A379099 n

end A379099

/-! ## A379099.P5760282552060835537

`A000108(n)*A124642(2*n+1)`
-/

namespace A379099.P5760282552060835537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A124642 (2 * n + 1)

end

end A379099.P5760282552060835537

namespace A379099

/-- `A000108(n)*A124642(2*n+1)` -/
def P5760282552060835537.Spec : Prop :=
  ∀ n, P5760282552060835537.a n = A379099 n

end A379099

/-! ## A379099.P10811234630347969673

`A000108(n)*A174783(2*n+1)`
-/

namespace A379099.P10811234630347969673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A174783 (2 * n + 1)

end

end A379099.P10811234630347969673

namespace A379099

/-- `A000108(n)*A174783(2*n+1)` -/
def P10811234630347969673.Spec : Prop :=
  ∀ n, P10811234630347969673.a n = A379099 n

end A379099

/-! ## A379099.P18201338756516083613

`∑[A001405(2*n)]*A057977(2*n)`
-/

namespace A379099.P18201338756516083613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057977 (2 * n)

end

end A379099.P18201338756516083613

namespace A379099

/-- `∑[A001405(2*n)]*A057977(2*n)` -/
def P18201338756516083613.Spec : Prop :=
  ∀ n, P18201338756516083613.a n = A379099 n

end A379099

/-! ## A379099.P3384282264008654217

`∑[A001405(2*n)]*A208355(2*n)`
-/

namespace A379099.P3384282264008654217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A208355 (2 * n)

end

end A379099.P3384282264008654217

namespace A379099

/-- `∑[A001405(2*n)]*A208355(2*n)` -/
def P3384282264008654217.Spec : Prop :=
  ∀ n, P3384282264008654217.a n = A379099 n

end A379099

/-! ## A379099.P6709026783758866130

`∑[A089849(2*n)]*A089849(2*n+1)`
-/

namespace A379099.P6709026783758866130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A089849 (2 * n + 1)

end

end A379099.P6709026783758866130

namespace A379099

/-- `∑[A089849(2*n)]*A089849(2*n+1)` -/
def P6709026783758866130.Spec : Prop :=
  ∀ n, P6709026783758866130.a n = A379099 n

end A379099

/-! ## A379099.P5042107110178715902

`(A307354(n)+A306409(n))*A000108(n)`
-/

namespace A379099.P5042107110178715902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A307354 n + A306409 n) * A000108 n

end

end A379099.P5042107110178715902

namespace A379099

/-- `(A307354(n)+A306409(n))*A000108(n)` -/
def P5042107110178715902.Spec : Prop :=
  ∀ n, P5042107110178715902.a n = A379099 n

end A379099

