import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A305800: Filter sequence for a(prime) = constant sequences.

The programs for A305800, the canonical program `A305800.P15822938426651104625` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305800 has offset 1).

The definition of A305800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305800.P11766389721580331132

`A305801(ceil(sqrt(n²+4)))-1`
-/

namespace A305800.P11766389721580331132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat - 1

end

end A305800.P11766389721580331132

namespace A305800

/-- `A305801(ceil(sqrt(n²+4)))-1` -/
def P11766389721580331132.Spec : Prop :=
  ∀ n, P11766389721580331132.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P15822938426651104625

`A066246(n+1)+2-A000007(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A305800

/-- `A066246(n+1)+2-A000007(n)` -/
def P15822938426651104625.Spec : Prop :=
  ∀ n, P15822938426651104625.a n = A305800 (n + 1)

theorem P15822938426651104625.correct : P15822938426651104625.Spec := by
  intro n
  simp only [A305800, Nat.add_sub_cancel]

end A305800

/-! ## A305800.P4771127755478896472

`A038573(n)%2+A066246(n+1)+1`
-/

namespace A305800.P4771127755478896472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038573 n) 2 + (A066246 (n + 1) + 1)

end

end A305800.P4771127755478896472

namespace A305800

/-- `A038573(n)%2+A066246(n+1)+1` -/
def P4771127755478896472.Spec : Prop :=
  ∀ n, P4771127755478896472.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P8360516967750490530

`A066246(n+1)+A000032(C(2, n+2))`
-/

namespace A305800.P8360516967750490530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A000032 (Nat.choose 2 (n + 2))

end

end A305800.P8360516967750490530

namespace A305800

/-- `A066246(n+1)+A000032(C(2, n+2))` -/
def P8360516967750490530.Spec : Prop :=
  ∀ n, P8360516967750490530.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P7372902013997853484

`A066246(n+1)+2-A010051(2*(n+1))`
-/

namespace A305800.P7372902013997853484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + (2 - A010051 (2 * (n + 1)))

end

end A305800.P7372902013997853484

namespace A305800

/-- `A066246(n+1)+2-A010051(2*(n+1))` -/
def P7372902013997853484.Spec : Prop :=
  ∀ n, P7372902013997853484.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P11593825539968597207

`A112046(and(1, a(n-1))+1)+A066246(n+1)` with `a(0)=1`
-/

namespace A305800.P11593825539968597207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112046 (Int.land 1 (a (n - 1)) + 1).toNat + A066246 (n + 1)

end

end A305800.P11593825539968597207

namespace A305800

/-- `A112046(and(1, a(n-1))+1)+A066246(n+1)` -/
def P11593825539968597207.Spec : Prop :=
  ∀ n, P11593825539968597207.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P6205765909866396722

`A066246(n+1)+A020639(A004277(n))`
-/

namespace A305800.P6205765909866396722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A020639 (A004277 n).toNat

end

end A305800.P6205765909866396722

namespace A305800

/-- `A066246(n+1)+A020639(A004277(n))` -/
def P6205765909866396722.Spec : Prop :=
  ∀ n, P6205765909866396722.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P11677300042810716423

`A066246(n+1)+A020639(A103517(n))`
-/

namespace A305800.P11677300042810716423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A020639 (A103517 n).toNat

end

end A305800.P11677300042810716423

namespace A305800

/-- `A066246(n+1)+A020639(A103517(n))` -/
def P11677300042810716423.Spec : Prop :=
  ∀ n, P11677300042810716423.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P6558682020950289128

`A066246(n+1)+A139770(A020639(n+1))`
-/

namespace A305800.P6558682020950289128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A139770 (A020639 (n + 1)).toNat

end

end A305800.P6558682020950289128

namespace A305800

/-- `A066246(n+1)+A139770(A020639(n+1))` -/
def P6558682020950289128.Spec : Prop :=
  ∀ n, P6558682020950289128.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P10120894887610001619

`A066246(n+1)+A303809(A006530(n+1))`
-/

namespace A305800.P10120894887610001619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A303809 (A006530 (n + 1)).toNat

end

end A305800.P10120894887610001619

namespace A305800

/-- `A066246(n+1)+A303809(A006530(n+1))` -/
def P10120894887610001619.Spec : Prop :=
  ∀ n, P10120894887610001619.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P2998475042094900382

`A010051(n+1)+A239968(n+1)+A057427(n)`
-/

namespace A305800.P2998475042094900382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A239968 (n + 1) + A057427 n)

end

end A305800.P2998475042094900382

namespace A305800

/-- `A010051(n+1)+A239968(n+1)+A057427(n)` -/
def P2998475042094900382.Spec : Prop :=
  ∀ n, P2998475042094900382.a n = A305800 (n + 1)

theorem P2998475042094900382.correct : P2998475042094900382.Spec := by
  intro n
  simp only [A305800, Nat.add_sub_cancel, A305800.P2998475042094900382.a, A305800.P15822938426651104625.a, A000007, A000007.P6599383543502402472.a, A010051, A010051.P15078252821583414300.a, A057427, A057427.P3058147525557661423.a, A066246, A066246.P11504023463901313022.a, A239968, A239968.P9247355313622841393.a, A005171, A005171.P15860856746370777121.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A305800

/-! ## A305800.P1230543195392009601

`A007814(A000010(n+1)+1)-(1-A305801(n+1))`
-/

namespace A305800.P1230543195392009601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000010 (n + 1) + 1).toNat - (1 - A305801 (n + 1))

end

end A305800.P1230543195392009601

namespace A305800

/-- `A007814(A000010(n+1)+1)-(1-A305801(n+1))` -/
def P1230543195392009601.Spec : Prop :=
  ∀ n, P1230543195392009601.a n = A305800 (n + 1)

end A305800

/-! ## A305800.P18314878587938587356

`A066246(n+1)+A001222(A001747(n+1))`
-/

namespace A305800.P18314878587938587356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A001222 (A001747 (n + 1)).toNat

end

end A305800.P18314878587938587356

namespace A305800

/-- `A066246(n+1)+A001222(A001747(n+1))` -/
def P18314878587938587356.Spec : Prop :=
  ∀ n, P18314878587938587356.a n = A305800 (n + 1)

end A305800

/-!
# A305801: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n is an odd prime, with f(n) = n for all other n.

The programs for A305801, the canonical program `A305801.P4138315772594876190` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305801 has offset 1).

The definition of A305801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305801.P7543334632617360824

`A158799(n)+A066246(n+1)`
-/

namespace A305801.P7543334632617360824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n + A066246 (n + 1)

end

end A305801.P7543334632617360824

namespace A305801

/-- `A158799(n)+A066246(n+1)` -/
def P7543334632617360824.Spec : Prop :=
  ∀ n, P7543334632617360824.a n = A305801 (n + 1)

end A305801

/-! ## A305801.P4138315772594876190

`A305800(n+1)+A157928(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A305801

/-- `A305800(n+1)+A157928(n)` -/
def P4138315772594876190.Spec : Prop :=
  ∀ n, P4138315772594876190.a n = A305801 (n + 1)

theorem P4138315772594876190.correct : P4138315772594876190.Spec := by
  intro n
  simp only [A305801, Nat.add_sub_cancel]

end A305801

/-! ## A305801.P16029354799110069003

`A305800(n+1)+char[A305800(n+2)]`
-/

namespace A305801.P16029354799110069003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305801.P16029354799110069003

namespace A305801

/-- `A305800(n+1)+char[A305800(n+2)]` -/
def P16029354799110069003.Spec : Prop :=
  ∀ n, P16029354799110069003.a n = A305801 (n + 1)

end A305801

/-! ## A305801.P8179285336561044643

`A305800(n+1)+n²-A132411(n)`
-/

namespace A305801.P8179285336561044643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + ((n ^ 2 : ℤ) - A132411 n)

end

end A305801.P8179285336561044643

namespace A305801

/-- `A305800(n+1)+n²-A132411(n)` -/
def P8179285336561044643.Spec : Prop :=
  ∀ n, P8179285336561044643.a n = A305801 (n + 1)

end A305801

/-! ## A305801.P2649387067466699537

`A305800(n+1)+(A000010(n+1)+1)%2`
-/

namespace A305801.P2649387067466699537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + Int.tmod (A000010 (n + 1) + 1) 2

end

end A305801.P2649387067466699537

namespace A305801

/-- `A305800(n+1)+(A000010(n+1)+1)%2` -/
def P2649387067466699537.Spec : Prop :=
  ∀ n, P2649387067466699537.a n = A305801 (n + 1)

end A305801

/-! ## A305801.P6856712308691658483

`A305800(n+1)+A157230(A157230(n+1)+2)`
-/

namespace A305801.P6856712308691658483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + A157230 (A157230 (n + 1) + 2).toNat

end

end A305801.P6856712308691658483

namespace A305801

/-- `A305800(n+1)+A157230(A157230(n+1)+2)` -/
def P6856712308691658483.Spec : Prop :=
  ∀ n, P6856712308691658483.a n = A305801 (n + 1)

end A305801

/-! ## A305801.P827086118302698068

`A305800(n+1)+A276086(A000010(n+1))%2`
-/

namespace A305801.P827086118302698068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + Int.tmod (A276086 (A000010 (n + 1)).toNat) 2

end

end A305801.P827086118302698068

namespace A305801

/-- `A305800(n+1)+A276086(A000010(n+1))%2` -/
def P827086118302698068.Spec : Prop :=
  ∀ n, P827086118302698068.a n = A305801 (n + 1)

end A305801

/-! ## A305801.P17387904539969386690

`A305800(n+1)+A319349(n+1)-A319348(n+1)`
-/

namespace A305801.P17387904539969386690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + (A319349 (n + 1) - A319348 (n + 1))

end

end A305801.P17387904539969386690

namespace A305801

/-- `A305800(n+1)+A319349(n+1)-A319348(n+1)` -/
def P17387904539969386690.Spec : Prop :=
  ∀ n, P17387904539969386690.a n = A305801 (n + 1)

end A305801

/-! ## A305801.P9316970943696616638

`A319704(n+1)+A322805(n+1)-A323081(n+1)`
-/

namespace A305801.P9316970943696616638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1) + (A322805 (n + 1) - A323081 (n + 1))

end

end A305801.P9316970943696616638

namespace A305801

/-- `A319704(n+1)+A322805(n+1)-A323081(n+1)` -/
def P9316970943696616638.Spec : Prop :=
  ∀ n, P9316970943696616638.a n = A305801 (n + 1)

end A305801

/-! ## A305801.P13670765169440176254

`A305800(n+1)+and(1, Δ[A052126(n+1)])`
-/

namespace A305801.P13670765169440176254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + Int.land 1 (f1 (n + 1) - f1 n)

end

end A305801.P13670765169440176254

namespace A305801

/-- `A305800(n+1)+and(1, Δ[A052126(n+1)])` -/
def P13670765169440176254.Spec : Prop :=
  ∀ n, P13670765169440176254.a n = A305801 (n + 1)

end A305801

/-!
# A305802: Difference in number of prime factors (when counted with multiplicity) between GF(2)[X] (carryless binary) and ordinary factorization: a(n) = A091222(n) - A001222(n).

The programs for A305802, there is no canonical definition to state claims against.
-/

/-! ## A305802.P14780628254666490666

`A091222(n+1)-A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305802.P14780628254666490666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (n + 1) - A001222 (n + 1)

end

end A305802.P14780628254666490666

/-! ## A305802.P4431794331556589648

`A001222(A278233(n+1))-A001222(n+1)`
-/

namespace A305802.P4431794331556589648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278233 (n + 1)).toNat - A001222 (n + 1)

end

end A305802.P4431794331556589648

/-! ## A305802.P7458618227978506933

`A001222(A286383(2*(n+1)))-(A001222(n+1)+1)`
-/

namespace A305802.P7458618227978506933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286383 (2 * (n + 1))).toNat - (A001222 (n + 1) + 1)

end

end A305802.P7458618227978506933

/-! ## A305802.P7139796333647918730

`A091222(n+1)-A091222(A091202(n+1))`
-/

namespace A305802.P7139796333647918730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (n + 1) - A091222 (A091202 (n + 1)).toNat

end

end A305802.P7139796333647918730

/-! ## A305802.P3373541945888011585

`A001222(A091203(n+1))-A001222(n+1)`
-/

namespace A305802.P3373541945888011585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A091203 (n + 1)).toNat - A001222 (n + 1)

end

end A305802.P3373541945888011585

/-! ## A305802.P16378969695606947157

`A001222(A235042(n+1))-A001222(n+1)`
-/

namespace A305802.P16378969695606947157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A235042 (n + 1)).toNat - A001222 (n + 1)

end

end A305802.P16378969695606947157

/-! ## A305802.P790295155992742513

`A001222(sqrt(A278238(n+1)))-A001222(n+1)`
-/

namespace A305802.P790295155992742513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A278238 (n + 1) : ℝ))).toNat - A001222 (n + 1)

end

end A305802.P790295155992742513

/-!
# A305804: Möbius-transform of A078898.

The programs for A305804, there is no canonical definition to state claims against.
-/

/-! ## A305804.P13563137630761886792

`∑{d}[n+1, A008683(#)*A078898((n+1)/#)]`
-/

namespace A305804.P13563137630761886792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A078898 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305804.P13563137630761886792

/-! ## A305804.P5312222216835018736

`A300236(n+1)/A336643(2^n)`
-/

namespace A305804.P5312222216835018736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300236 (n + 1) : ℚ) / (A336643 (2 ^ n) : ℚ)

end

end A305804.P5312222216835018736

/-! ## A305804.P17890703604368432905

`A300236(n+1)/A040001(A023105(n))`
-/

namespace A305804.P17890703604368432905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300236 (n + 1) : ℚ) / (A040001 (A023105 n).toNat : ℚ)

end

end A305804.P17890703604368432905

/-! ## A305804.P4966332747295563727

`A300236(n+1)/A177702(A037953(n))`
-/

namespace A305804.P4966332747295563727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300236 (n + 1) : ℚ) / (A177702 (A037953 n).toNat : ℚ)

end

end A305804.P4966332747295563727

/-! ## A305804.P7301224865558620062

`A300236(n+1)/A040001(A192959(n))`
-/

namespace A305804.P7301224865558620062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300236 (n + 1) : ℚ) / (A040001 (A192959 n).toNat : ℚ)

end

end A305804.P7301224865558620062

/-!
# A305806: Möbius transform of A175851.

The programs for A305806, the canonical program `A305806.P3970338452477566814` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305806 has offset 1).

The definition of A305806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305806.P3970338452477566814

`∑{d}[n+1, A008683(#)*A175851((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A305806

/-- `∑{d}[n+1, A008683(#)*A175851((n+1)/#)]` -/
def P3970338452477566814.Spec : Prop :=
  ∀ n, P3970338452477566814.a n = A305806 (n + 1)

theorem P3970338452477566814.correct : P3970338452477566814.Spec := by
  intro n
  simp only [A305806, Nat.add_sub_cancel]

end A305806

/-! ## A305806.P11840325786326193437

`A006530(n+1)-A305079(∑{d}[n+1, 2^#-1])`
-/

namespace A305806.P11840325786326193437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A305079 (∑ d ∈ Nat.divisors (f1 n), ((2 ^ d : ℤ) - 1)).toNat

end

end A305806.P11840325786326193437

namespace A305806

/-- `A006530(n+1)-A305079(∑{d}[n+1, 2^#-1])` -/
def P11840325786326193437.Spec : Prop :=
  ∀ n, P11840325786326193437.a n = A305806 (n + 1)

end A305806

/-! ## A305806.P11548198385540964794

`A340146(n+1)-A309785(A119586(n+1))`
-/

namespace A305806.P11548198385540964794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340146 (n + 1) - A309785 (A119586 (n + 1)).toNat

end

end A305806.P11548198385540964794

namespace A305806

/-- `A340146(n+1)-A309785(A119586(n+1))` -/
def P11548198385540964794.Spec : Prop :=
  ∀ n, P11548198385540964794.a n = A305806 (n + 1)

end A305806

/-! ## A305806.P3491932915367840286

`A340146(n+1)^A203752(A000700(n+4))-A352514(2*n)`
-/

namespace A305806.P3491932915367840286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340146 (n + 1) : ℚ) ^ (A203752 (A000700 (n + 4)).toNat : ℤ) - (A352514 (2 * n) : ℚ)

end

end A305806.P3491932915367840286

namespace A305806

/-- `A340146(n+1)^A203752(A000700(n+4))-A352514(2*n)` -/
def P3491932915367840286.Spec : Prop :=
  ∀ n, P3491932915367840286.a n = (A305806 (n + 1) : ℚ)

end A305806

/-! ## A305806.P1358187486598212435

`A261015(n+1)-A030308(A158487(n+1))`
-/

namespace A305806.P1358187486598212435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261015 (n + 1) - A030308 (A158487 (n + 1)).toNat

end

end A305806.P1358187486598212435

namespace A305806

/-- `A261015(n+1)-A030308(A158487(n+1))` -/
def P1358187486598212435.Spec : Prop :=
  ∀ n, P1358187486598212435.a n = A305806 (n + 1)

end A305806

/-!
# A305807: Dirichlet inverse of A032742 (the largest proper divisor of n).

The programs for A305807, there is no canonical definition to state claims against.
-/

/-! ## A305807.P5781068256715035429

`A366292(n+1)%A156829(A238279(n))`
-/

namespace A305807.P5781068256715035429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366292 (n + 1)) (A156829 (A238279 n).toNat)

end

end A305807.P5781068256715035429

/-! ## A305807.P17858764214830665040

`A355032(A000230(n))*A366292(n+1)`
-/

namespace A305807.P17858764214830665040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355032 (A000230 n).toNat * A366292 (n + 1)

end

end A305807.P17858764214830665040

/-! ## A305807.P9503829838585533916

`A351083(A055875(n))*A366292(n+1)`
-/

namespace A305807.P9503829838585533916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351083 (A055875 n).toNat * A366292 (n + 1)

end

end A305807.P9503829838585533916

/-! ## A305807.P16002454244895626458

`A366292(n+1)+A000007(A000032(n+1))`
-/

namespace A305807.P16002454244895626458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366292 (n + 1) + A000007 (A000032 (n + 1)).toNat

end

end A305807.P16002454244895626458

/-! ## A305807.P4633854518336835780

`A366292(n+1)+A366289(A267010(n+1))`
-/

namespace A305807.P4633854518336835780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366292 (n + 1) + A366289 (A267010 (n + 1)).toNat

end

end A305807.P4633854518336835780

/-!
# A305808: Dirichlet convolution of A032742 (the largest proper divisor of n) with itself.

The programs for A305808, there is no canonical definition to state claims against.
-/

/-! ## A305808.P7175979017584232696

`∑{d}[n+1, A032742(#)*A032742((n+1)/#)]`
-/

namespace A305808.P7175979017584232696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032742 d * A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305808.P7175979017584232696

/-! ## A305808.P11541255096245528674

`∑{d}[n+1, A143112(#)*A300236((n+1)/#)]`
-/

namespace A305808.P11541255096245528674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143112 d * A300236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305808.P11541255096245528674

/-! ## A305808.P10532485773886317765

`∑{d}[A187829(n+1), A244149(#)]`
-/

namespace A305808.P10532485773886317765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A244149 d

end

end A305808.P10532485773886317765

/-!
# A305809: Dirichlet convolution of A003415 (Arithmetic derivative) with itself.

The programs for A305809, the canonical program `A305809.P1603223688838508842` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305809 has offset 1).

The definition of A305809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305809.P18142432067805151604

`∑{d}[n+1, A003415(#)*A003415((n+1)/#)]`
-/

namespace A305809.P18142432067805151604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305809.P18142432067805151604

namespace A305809

/-- `∑{d}[n+1, A003415(#)*A003415((n+1)/#)]` -/
def P18142432067805151604.Spec : Prop :=
  ∀ n, P18142432067805151604.a n = A305809 (n + 1)

end A305809

/-! ## A305809.P1603223688838508842

`∑{d}[n+1, A300251(#)*A319684((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A305809

/-- `∑{d}[n+1, A300251(#)*A319684((n+1)/#)]` -/
def P1603223688838508842.Spec : Prop :=
  ∀ n, P1603223688838508842.a n = A305809 (n + 1)

theorem P1603223688838508842.correct : P1603223688838508842.Spec := by
  intro n
  simp only [A305809, Nat.add_sub_cancel]

end A305809

/-! ## A305809.P4114527332078619348

`∑{d}[n+1, A347130(#)*A349394((n+1)/#)]`
-/

namespace A305809.P4114527332078619348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347130 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305809.P4114527332078619348

namespace A305809

/-- `∑{d}[n+1, A347130(#)*A349394((n+1)/#)]` -/
def P4114527332078619348.Spec : Prop :=
  ∀ n, P4114527332078619348.a n = A305809 (n + 1)

end A305809

/-! ## A305809.P9609123339452027786

`∑{d}[n+1, A347955(#)*A349380((n+1)/#)]`
-/

namespace A305809.P9609123339452027786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347955 d * A349380 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305809.P9609123339452027786

namespace A305809

/-- `∑{d}[n+1, A347955(#)*A349380((n+1)/#)]` -/
def P9609123339452027786.Spec : Prop :=
  ∀ n, P9609123339452027786.a n = A305809 (n + 1)

end A305809

/-! ## A305809.P9504512811500923012

`∑{d}[n+1, A349133(#)*A349620((n+1)/#)]`
-/

namespace A305809.P9504512811500923012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349133 d * A349620 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305809.P9504512811500923012

namespace A305809

/-- `∑{d}[n+1, A349133(#)*A349620((n+1)/#)]` -/
def P9504512811500923012.Spec : Prop :=
  ∀ n, P9504512811500923012.a n = A305809 (n + 1)

end A305809

/-! ## A305809.P1257711615218763353

`∑{d}[n+1, A349173(#)*A349621((n+1)/#)]`
-/

namespace A305809.P1257711615218763353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349173 d * A349621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305809.P1257711615218763353

namespace A305809

/-- `∑{d}[n+1, A349173(#)*A349621((n+1)/#)]` -/
def P1257711615218763353.Spec : Prop :=
  ∀ n, P1257711615218763353.a n = A305809 (n + 1)

end A305809

/-!
# A305812: a(1) = 0; for n > 1, a(n) = Product_{d|n, 1 < d < n} prime(A305788(d)-1).

The programs for A305812, there is no canonical definition to state claims against.
-/

/-! ## A305812.P1078333185316248979

`A052126(A305814(n+1))%(2^n)`
-/

namespace A305812.P1078333185316248979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052126 (A305814 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A305812.P1078333185316248979

/-! ## A305812.P1054607927579031993

`A052126(A305814(n+1))-A000007(n)`
-/

namespace A305812.P1054607927579031993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A305814 (n + 1)).toNat - A000007 n

end

end A305812.P1054607927579031993

/-! ## A305812.P533978323740435894

`lcm(A001221(n+1), A052126(A305814(n+1)))`
-/

namespace A305812.P533978323740435894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 1)) (A052126 (A305814 (n + 1)).toNat)

end

end A305812.P533978323740435894

/-! ## A305812.P10176617112113366179

`and(1, A000040(n+1))*A052126(A305814(n+1))`
-/

namespace A305812.P10176617112113366179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A052126 (A305814 (n + 1)).toNat

end

end A305812.P10176617112113366179

/-! ## A305812.P18297231652276433188

`A052126(A305814(n+1))-A000045(C(2, n+2))`
-/

namespace A305812.P18297231652276433188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A305814 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A305812.P18297231652276433188

/-!
# A305813: Restricted growth sequence transform of A305812, a filter sequence constructed from the GF(2)[X]-factorization signatures of the proper divisors of n.

The programs for A305813, there is no canonical definition to state claims against.
-/

/-! ## A305813.P10338117674405994682

`or(A284932(A284908(n)), A290110(n+1))`
-/

namespace A305813.P10338117674405994682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284932 (A284908 n).toNat) (A290110 (n + 1))

end

end A305813.P10338117674405994682

/-! ## A305813.P914123510366982798

`or(A290098(A056391(n+1)), A290110(n+1))`
-/

namespace A305813.P914123510366982798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290098 (A056391 (n + 1)).toNat) (A290110 (n + 1))

end

end A305813.P914123510366982798

/-! ## A305813.P3665351744119318041

`A181819(n+1)+A011745(A344432(n))`
-/

namespace A305813.P3665351744119318041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1) + A011745 (A344432 n).toNat

end

end A305813.P3665351744119318041

/-! ## A305813.P5937791599928866952

`A181837(A181815(n+1))+A181819(n+1)`
-/

namespace A305813.P5937791599928866952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181837 (A181815 (n + 1)).toNat + A181819 (n + 1)

end

end A305813.P5937791599928866952

/-! ## A305813.P12804636005752403237

`A277143(A367759(n+2))+A101296(n+1)`
-/

namespace A305813.P12804636005752403237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277143 (A367759 (n + 2)).toNat + A101296 (n + 1)

end

end A305813.P12804636005752403237

/-!
# A305816: a(n) = 1 if n is a prime whose binary expansion encodes a (0,1)-polynomial which is irreducible when factored over GF(2), 0 otherwise.

The programs for A305816, there is no canonical definition to state claims against.
-/

/-! ## A305816.P8588092253889101273

`A010051(n+1)*A091225(n+1)`
-/

namespace A305816.P8588092253889101273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A091225 (n + 1)

end

end A305816.P8588092253889101273

/-! ## A305816.P10688683347225621632

`char[A091206(n+1)-1]`
-/

namespace A305816.P10688683347225621632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091206 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305816.P10688683347225621632

/-! ## A305816.P9115487108716489051

`char[eq[2, A305815(n+1)]]`
-/

namespace A305816.P9115487108716489051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305815 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A305816.P9115487108716489051

/-! ## A305816.P6845255122176493196

`char[p?[A305419(n+1)]-1]`
-/

namespace A305816.P6845255122176493196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305419 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305816.P6845255122176493196

/-! ## A305816.P10552487050746696578

`A091225(A061397(n+1))`
-/

namespace A305816.P10552487050746696578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A061397 (n + 1)).toNat

end

end A305816.P10552487050746696578

/-! ## A305816.P4134319868511156245

`A091225(A089026(n+1))`
-/

namespace A305816.P4134319868511156245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A089026 (n + 1)).toNat

end

end A305816.P4134319868511156245

/-! ## A305816.P6921900932819960904

`A091225(A135680(n+1))`
-/

namespace A305816.P6921900932819960904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A135680 (n + 1)).toNat

end

end A305816.P6921900932819960904

/-! ## A305816.P14860369366421450782

`A091225(A135681(n+1))`
-/

namespace A305816.P14860369366421450782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A135681 (n + 1)).toNat

end

end A305816.P14860369366421450782

/-! ## A305816.P7214904359878297091

`A091225(A234741(n+1))`
-/

namespace A305816.P7214904359878297091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A234741 (n + 1)).toNat

end

end A305816.P7214904359878297091

/-! ## A305816.P7026166435354498848

`char[A000010(A091206(n+1))]`
-/

namespace A305816.P7026166435354498848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A091206 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305816.P7026166435354498848

/-! ## A305816.P9962872714000007647

`A010051(n+1)*A294883(n+1)`
-/

namespace A305816.P9962872714000007647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A294883 (n + 1)

end

end A305816.P9962872714000007647

/-! ## A305816.P17255742490230395632

`A080339(n+1)*A294883(n+1)`
-/

namespace A305816.P17255742490230395632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) * A294883 (n + 1)

end

end A305816.P17255742490230395632

/-! ## A305816.P6598791424538457077

`A294883(n+1)%A049076(n+1)`
-/

namespace A305816.P6598791424538457077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294883 (n + 1)) (A049076 (n + 1))

end

end A305816.P6598791424538457077

/-! ## A305816.P5337746672361764076

`lcm(A129950(n+1), A294883(n+1))`
-/

namespace A305816.P5337746672361764076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129950 (n + 1)) (A294883 (n + 1))

end

end A305816.P5337746672361764076

/-! ## A305816.P18264106524285358567

`C(A294883(n+1), A048671(n+1))`
-/

namespace A305816.P18264106524285358567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294883 (n + 1)).toNat (A048671 (n + 1)).toNat

end

end A305816.P18264106524285358567

/-! ## A305816.P16351546598160304078

`and(A010051(n+1), A246201(n+1))`
-/

namespace A305816.P16351546598160304078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A246201 (n + 1))

end

end A305816.P16351546598160304078

/-! ## A305816.P2888482181850609290

`and(A010051(n+1), A246203(n+1))`
-/

namespace A305816.P2888482181850609290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A246203 (n + 1))

end

end A305816.P2888482181850609290

/-! ## A305816.P1267848700696949994

`and(A010051(n+1), A294884(n+1))`
-/

namespace A305816.P1267848700696949994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A294884 (n + 1))

end

end A305816.P1267848700696949994

/-! ## A305816.P12721503250521155370

`(1-A005171(n+1))*A294883(n+1)`
-/

namespace A305816.P12721503250521155370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A005171 (n + 1)) * A294883 (n + 1)

end

end A305816.P12721503250521155370

/-! ## A305816.P4660045119525999271

`char[p?[A234750(n+1)]-1]`
-/

namespace A305816.P4660045119525999271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234750 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305816.P4660045119525999271

/-!
# A305817: Number of terms of A091206 <= n; Partial sums of A305816.

The programs for A305817, there is no canonical definition to state claims against.
-/

/-! ## A305817.P7923085999744575744

`∑[A305816(n+1)]`
-/

namespace A305817.P7923085999744575744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P7923085999744575744

/-! ## A305817.P13558315510529237272

`∑[char[A091206(n+1)-1]]`
-/

namespace A305817.P13558315510529237272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091206 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P13558315510529237272

/-! ## A305817.P16972219451845005102

`∑[char[p?[A305419(n+1)]-1]]`
-/

namespace A305817.P16972219451845005102
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P16972219451845005102

/-! ## A305817.P12799329284571322127

`∑[A091225(A061397(n+1))]`
-/

namespace A305817.P12799329284571322127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P12799329284571322127

/-! ## A305817.P4197294410707889095

`∑[A091225(A089026(n+1))]`
-/

namespace A305817.P4197294410707889095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P4197294410707889095

/-! ## A305817.P15284701518591695026

`∑[A091225(A135680(n+1))]`
-/

namespace A305817.P15284701518591695026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A135680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P15284701518591695026

/-! ## A305817.P1213840910875207708

`∑[A091225(A135681(n+1))]`
-/

namespace A305817.P1213840910875207708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A135681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P1213840910875207708

/-! ## A305817.P2674939238968543500

`∑[A091225(A234741(n+1))]`
-/

namespace A305817.P2674939238968543500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A234741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P2674939238968543500

/-! ## A305817.P15556436290550483338

`∑[char[A000010(A091206(n+1))]]`
-/

namespace A305817.P15556436290550483338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A091206 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P15556436290550483338

/-! ## A305817.P11266713367179387770

`A000720(n+1)-A235043(n+1)`
-/

namespace A305817.P11266713367179387770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A235043 (n + 1)

end

end A305817.P11266713367179387770

/-! ## A305817.P10050673240139664220

`∑[A010051(n+1)*A294883(n+1)]`
-/

namespace A305817.P10050673240139664220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A294883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P10050673240139664220

/-! ## A305817.P18145767864208186266

`A091226(n+1)-A235044(n+1)`
-/

namespace A305817.P18145767864208186266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (n + 1) - A235044 (n + 1)

end

end A305817.P18145767864208186266

/-! ## A305817.P16210667876560878183

`∑[char[p?[A234750(n+1)]-1]]`
-/

namespace A305817.P16210667876560878183
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P16210667876560878183

/-! ## A305817.P5855183029686572249

`∑[C(∑{p}[n+1, #], A234742(n+1))]`
-/

namespace A305817.P5855183029686572249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) (A234742 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P5855183029686572249

/-! ## A305817.P17765847997232528619

`∑[A091225(A091202(n+1)*A091225(n+1))]`
-/

namespace A305817.P17765847997232528619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A091202 (n + 1) * A091225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P17765847997232528619

/-! ## A305817.P8621258956079166819

`∑[A010051(A236852(n+1))]`
-/

namespace A305817.P8621258956079166819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A236852 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P8621258956079166819

/-! ## A305817.P8706696887389389394

`∑[A010051(A234742(n+1))]`
-/

namespace A305817.P8706696887389389394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A234742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305817.P8706696887389389394

/-!
# A305818: Number of proper divisors d of n such that 2d+1 is a prime.

The programs for A305818, the canonical program `A305818.P15738816487274573770` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305818 has offset 1).

The definition of A305818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305818.P980438037680171813

`A086668(n+1)-A101264(n+1)`
-/

namespace A305818.P980438037680171813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (n + 1) - A101264 (n + 1)

end

end A305818.P980438037680171813

namespace A305818

/-- `A086668(n+1)-A101264(n+1)` -/
def P980438037680171813.Spec : Prop :=
  ∀ n, P980438037680171813.a n = A305818 (n + 1)

theorem P980438037680171813.correct : P980438037680171813.Spec := by
  intro n
  simp only [A305818, Nat.add_sub_cancel, A305818.P980438037680171813.a, A305818.P15738816487274573770.f1, A305818.P15738816487274573770.a, A086668, A086668.P4920581332236016487.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A305818

/-! ## A305818.P12774354680646880026

`A086668(n+1)-A156707(n+1)²`
-/

namespace A305818.P12774354680646880026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (n + 1) - A156707 (n + 1) ^ 2

end

end A305818.P12774354680646880026

namespace A305818

/-- `A086668(n+1)-A156707(n+1)²` -/
def P12774354680646880026.Spec : Prop :=
  ∀ n, P12774354680646880026.a n = A305818 (n + 1)

end A305818

/-! ## A305818.P8896384375712882560

`A086668(n+1)-A010051(2*n+3)`
-/

namespace A305818.P8896384375712882560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (n + 1) - A010051 (2 * n + 3)

end

end A305818.P8896384375712882560

namespace A305818

/-- `A086668(n+1)-A010051(2*n+3)` -/
def P8896384375712882560.Spec : Prop :=
  ∀ n, P8896384375712882560.a n = A305818 (n + 1)

theorem P8896384375712882560.correct : P8896384375712882560.Spec := by
  intro n
  simp only [A305818, Nat.add_sub_cancel, A305818.P8896384375712882560.a, A305818.P15738816487274573770.f1, A305818.P15738816487274573770.a, A010051, A010051.P15078252821583414300.a, A086668, A086668.P4920581332236016487.a, A101264, A101264.P9977125953316836564.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A305818

/-! ## A305818.P15738816487274573770

`∑{d}[n+1, A101264(#)]-A101264(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A305818

/-- `∑{d}[n+1, A101264(#)]-A101264(n+1)` -/
def P15738816487274573770.Spec : Prop :=
  ∀ n, P15738816487274573770.a n = A305818 (n + 1)

theorem P15738816487274573770.correct : P15738816487274573770.Spec := by
  intro n
  simp only [A305818, Nat.add_sub_cancel]

end A305818

/-! ## A305818.P3561253038257837917

`∑{d}[n+1, A086668(#)*A157658((n+1)/#)]`
-/

namespace A305818.P3561253038257837917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086668 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305818.P3561253038257837917

namespace A305818

/-- `∑{d}[n+1, A086668(#)*A157658((n+1)/#)]` -/
def P3561253038257837917.Spec : Prop :=
  ∀ n, P3561253038257837917.a n = A305818 (n + 1)

end A305818

/-! ## A305818.P9050723040857971334

`A086668(n+1)-A112448(n+1)*A112448(n+1)`
-/

namespace A305818.P9050723040857971334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (n + 1) - A112448 (n + 1) * A112448 (n + 1)

end

end A305818.P9050723040857971334

namespace A305818

/-- `A086668(n+1)-A112448(n+1)*A112448(n+1)` -/
def P9050723040857971334.Spec : Prop :=
  ∀ n, P9050723040857971334.a n = A305818 (n + 1)

end A305818

/-! ## A305818.P13296568163269143135

`val(A305982(n+1), 2)`
-/

namespace A305818.P13296568163269143135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305982 (n + 1)).toNat 2

end

end A305818.P13296568163269143135

namespace A305818

/-- `val(A305982(n+1), 2)` -/
def P13296568163269143135.Spec : Prop :=
  ∀ n, (P13296568163269143135.a n : ℤ) = A305818 (n + 1)

end A305818

/-! ## A305818.P9883846480855858668

`A067513(2*(n+1))-(A101264(n+1)+1)`
-/

namespace A305818.P9883846480855858668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (2 * (n + 1)) - (A101264 (n + 1) + 1)

end

end A305818.P9883846480855858668

namespace A305818

/-- `A067513(2*(n+1))-(A101264(n+1)+1)` -/
def P9883846480855858668.Spec : Prop :=
  ∀ n, P9883846480855858668.a n = A305818 (n + 1)

end A305818

/-! ## A305818.P1673825101819208568

`A007814(A305982(n+1))`
-/

namespace A305818.P1673825101819208568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A305982 (n + 1)).toNat

end

end A305818.P1673825101819208568

namespace A305818

/-- `A007814(A305982(n+1))` -/
def P1673825101819208568.Spec : Prop :=
  ∀ n, P1673825101819208568.a n = A305818 (n + 1)

end A305818

/-!
# A305819: Expansion of e.g.f. 1/(1 + LambertW(-log(1 + x))).

The programs for A305819, there is no canonical definition to state claims against.
-/

/-! ## A305819.P2638370429263115641

`A188163(A138212(n))`
-/

namespace A305819.P2638370429263115641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (A138212 n).toNat

end

end A305819.P2638370429263115641

/-! ## A305819.P15760605018447115077

`A380693(A381142(n))`
-/

namespace A305819.P15760605018447115077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (A381142 n).toNat

end

end A305819.P15760605018447115077

/-!
# A305820: Filter sequence for a(Fibonacci numbers > 1) = constant sequences.

The programs for A305820, there is no canonical definition to state claims against.
-/

/-! ## A305820.P9905396837155927472

`A001222(∪[A326339(n+3), A326363(n)])`
-/

namespace A305820.P9905396837155927472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326363 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A305820.P9905396837155927472

/-!
# A305821: a(n) = 1 if n is composite and its binary expansion encodes an irreducible (0,1)-polynomial when factored over Q, 0 otherwise.

The programs for A305821, there is no canonical definition to state claims against.
-/

/-! ## A305821.P1247204227575741677

`A257000(n+1)-A010051(n+1)`
-/

namespace A305821.P1247204227575741677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1) - A010051 (n + 1)

end

end A305821.P1247204227575741677

/-! ## A305821.P4899457428815676105

`A257000((n+1)%(A175851(n+1)+n))`
-/

namespace A305821.P4899457428815676105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (Int.tmod (n + 1 : ℤ) (A175851 (n + 1) + (n : ℤ))).toNat

end

end A305821.P4899457428815676105

/-! ## A305821.P14231174940036833543

`char[A206074(n+1)-1]-A010051(n+1)`
-/

namespace A305821.P14231174940036833543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A010051 (n + 1)

end

end A305821.P14231174940036833543

/-! ## A305821.P1127356178002956053

`A257000(gcd(A014684(n+1), A053149(n+1)))`
-/

namespace A305821.P1127356178002956053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (Int.gcd (A014684 (n + 1)) (A053149 (n + 1)))

end

end A305821.P1127356178002956053

/-! ## A305821.P11229809328720524252

`A257000(n+1)-A257000(2*A032741(n+1))`
-/

namespace A305821.P11229809328720524252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1) - A257000 (2 * A032741 (n + 1)).toNat

end

end A305821.P11229809328720524252

/-! ## A305821.P9816632425731841322

`A257000(n+1)-A257000(3*A001222(n+1))`
-/

namespace A305821.P9816632425731841322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1) - A257000 (3 * A001222 (n + 1)).toNat

end

end A305821.P9816632425731841322

/-! ## A305821.P4101235430279660503

`A257000(A135141(n+1)%2*A014684(n+1))`
-/

namespace A305821.P4101235430279660503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (Int.tmod (A135141 (n + 1)) 2 * A014684 (n + 1)).toNat

end

end A305821.P4101235430279660503

/-! ## A305821.P18341537380936284515

`and(1, A257000(n+1)+A257000(A046523(n+1)))`
-/

namespace A305821.P18341537380936284515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A257000 (n + 1) + A257000 (A046523 (n + 1)).toNat)

end

end A305821.P18341537380936284515

/-! ## A305821.P9436589139473712277

`A257000(n+1)-A257000(A006093(∑{e}[n+1, #]+1))`
-/

namespace A305821.P9436589139473712277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1) - A257000 (A006093 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)).toNat

end

end A305821.P9436589139473712277

/-! ## A305821.P5933391007416651196

`A257000(n+1)-A257000(A001222((n+1)²))`
-/

namespace A305821.P5933391007416651196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1) - A257000 (A001222 ((n + 1) ^ 2)).toNat

end

end A305821.P5933391007416651196

/-! ## A305821.P10051361506361665769

`A257000(n+1)-A257000(A032741((n+1)²))`
-/

namespace A305821.P10051361506361665769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1) - A257000 (A032741 ((n + 1) ^ 2)).toNat

end

end A305821.P10051361506361665769

/-!
# A305822: Number of irreducible factors (counted with multiplicity) of the (0,1)-polynomial encoded in the binary expansion of n has when it is factored over Q.

The programs for A305822, there is no canonical definition to state claims against.
-/

/-! ## A305822.P17006845936417017570

`A277013(A325563(n+1))+A019429(A001105(n))`
-/

namespace A305822.P17006845936417017570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (A325563 (n + 1)).toNat + A019429 (A001105 n).toNat

end

end A305822.P17006845936417017570

/-! ## A305822.P10354823097484956386

`A277322(A019565(n+1))`
-/

namespace A305822.P10354823097484956386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (A019565 (n + 1)).toNat

end

end A305822.P10354823097484956386

/-! ## A305822.P1620372668596957142

`A277322(A339809(n+1)+1)`
-/

namespace A305822.P1620372668596957142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (A339809 (n + 1) + 1).toNat

end

end A305822.P1620372668596957142

/-! ## A305822.P18350496364300833097

`A277013(A325563(n+1))+A000007(A151933(n))`
-/

namespace A305822.P18350496364300833097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (A325563 (n + 1)).toNat + A000007 (A151933 n).toNat

end

end A305822.P18350496364300833097

/-! ## A305822.P195787765434219949

`A277013(A325563(n+1))+A000035(A167494(n+1))`
-/

namespace A305822.P195787765434219949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (A325563 (n + 1)).toNat + A000035 (A167494 (n + 1)).toNat

end

end A305822.P195787765434219949

/-!
# A305823: Total number of blocks in all set partitions of [n] with alternating parity of elements.

The programs for A305823, there is no canonical definition to state claims against.
-/

/-! ## A305823.P2340376407387585158

`∑[A069623(n*n!+1)]-1`
-/

namespace A305823.P2340376407387585158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (n * Nat.factorial n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A305823.P2340376407387585158

/-! ## A305823.P2304121811670454086

`A331904(A127546(n))`
-/

namespace A305823.P2304121811670454086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (A127546 n).toNat

end

end A305823.P2304121811670454086

/-! ## A305823.P3149201048003804125

`A331904(A121331(n+6))`
-/

namespace A305823.P3149201048003804125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (A121331 (n + 6)).toNat

end

end A305823.P3149201048003804125

/-!
# A305824: Number of endofunctions on [n] whose cycle lengths are triangular numbers.

The programs for A305824, there is no canonical definition to state claims against.
-/

/-! ## A305824.P1678376668079493973

`A246523(A001096(n))`
-/

namespace A305824.P1678376668079493973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246523 (A001096 n).toNat

end

end A305824.P1678376668079493973

/-! ## A305824.P5587471365555421131

`A028310(A246523(n))`
-/

namespace A305824.P5587471365555421131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A246523 n).toNat

end

end A305824.P5587471365555421131

/-!
# A305825: Number of different ways that a number between two members of a twin prime pair can be expressed as a sum of two smaller such numbers.

The programs for A305825, there is no canonical definition to state claims against.
-/

/-! ## A305825.P9418783184505493952

`A302231(A040040(n+1))`
-/

namespace A305825.P9418783184505493952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (A040040 (n + 1)).toNat

end

end A305825.P9418783184505493952

/-! ## A305825.P4909106286539021308

`A302231(A168497(n+2))`
-/

namespace A305825.P4909106286539021308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (A168497 (n + 2)).toNat

end

end A305825.P4909106286539021308

/-! ## A305825.P14874763882900319344

`A302231(A014574(n+1)/2)`
-/

namespace A305825.P14874763882900319344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

end

end A305825.P14874763882900319344

/-! ## A305825.P2189459904716945758

`A187759(ceil(A040040(n+1)/3))`
-/

namespace A305825.P2189459904716945758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 ⌈(A040040 (n + 1) : ℚ) / 3⌉.toNat

end

end A305825.P2189459904716945758

/-! ## A305825.P10796012933466336733

`A187759(round(A040040(n+1)/3))`
-/

namespace A305825.P10796012933466336733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (SequenceMachineLib.roundAway ((A040040 (n + 1) : ℚ) / 3)).toNat

end

end A305825.P10796012933466336733

/-! ## A305825.P401718454258724926

`A187759(ceil(A001359(n+1)/6))`
-/

namespace A305825.P401718454258724926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 ⌈(A001359 (n + 1) : ℚ) / 6⌉.toNat

end

end A305825.P401718454258724926

/-! ## A305825.P5638609838507539804

`A187759(round(A001359(n+1)/6))`
-/

namespace A305825.P5638609838507539804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (SequenceMachineLib.roundAway ((A001359 (n + 1) : ℚ) / 6)).toNat

end

end A305825.P5638609838507539804

/-! ## A305825.P17069466073422210168

`A187759(round(A014574(n+1)/6))`
-/

namespace A305825.P17069466073422210168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 6)).toNat

end

end A305825.P17069466073422210168

/-! ## A305825.P16109019235211065697

`A187759(A078898(A001359(n+1)-2))`
-/

namespace A305825.P16109019235211065697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (A078898 (A001359 (n + 1) - 2).toNat).toNat

end

end A305825.P16109019235211065697

/-! ## A305825.P7493143428555400133

`A187759(gcd(A014574(n+1), A126249(n+1)))`
-/

namespace A305825.P7493143428555400133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (Int.gcd (A014574 (n + 1)) (A126249 (n + 1)))

end

end A305825.P7493143428555400133

/-!
# A305826: Number of vectors in {0..4}^n with sum divisible by 9.

The programs for A305826, there is no canonical definition to state claims against.
-/

/-! ## A305826.P13882611327303079248

`or(n^(abs(1-n)-1), A178334(5^n+7^n+1))`
-/

namespace A305826.P13882611327303079248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ))) (A178334 (5 ^ n + (7 ^ n + 1)))

end

end A305826.P13882611327303079248

/-! ## A305826.P17319640904501431535

`A325102(A011863(n))+1`
-/

namespace A305826.P17319640904501431535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325102 (A011863 n).toNat + 1

end

end A305826.P17319640904501431535

/-!
# A305828: The n-th number m such that a nontrivial prime(n)-th root of unity modulo m exists.

The programs for A305828, there is no canonical definition to state claims against.
-/

/-! ## A305828.P1249709499962727060

`A277915(∑[4*n]+1)`
-/

namespace A305828.P1249709499962727060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305828.P1249709499962727060

/-! ## A305828.P41951915199328669

`or(char[1], A277915(A001844(n)))`
-/

namespace A305828.P41951915199328669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A277915 (A001844 n).toNat)

end

end A305828.P41951915199328669

/-! ## A305828.P18110468097130812591

`A277915(A001844(n))%A001538(n)`
-/

namespace A305828.P18110468097130812591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277915 (A001844 n).toNat) (A001538 n)

end

end A305828.P18110468097130812591

/-! ## A305828.P12211373014700139637

`abs(A033999(n)*A277915(A001844(n)))`
-/

namespace A305828.P12211373014700139637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A277915 (A001844 n).toNat|

end

end A305828.P12211373014700139637

/-! ## A305828.P3940013749642290456

`A210245(n)²*A277915(A001844(n))`
-/

namespace A305828.P3940013749642290456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210245 n ^ 2 * A277915 (A001844 n).toNat

end

end A305828.P3940013749642290456

/-! ## A305828.P17893830093025721760

`A266591(2*n)*A277915(A001844(n))`
-/

namespace A305828.P17893830093025721760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (2 * n) * A277915 (A001844 n).toNat

end

end A305828.P17893830093025721760

/-! ## A305828.P6431853400714669904

`A007318(C(2, n))*A277915(A001844(n))`
-/

namespace A305828.P6431853400714669904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A277915 (A001844 n).toNat

end

end A305828.P6431853400714669904

/-! ## A305828.P1991562749090057244

`A277915(A001844(n))+n%A028310(n)`
-/

namespace A305828.P1991562749090057244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277915 (A001844 n).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A305828.P1991562749090057244

/-! ## A305828.P7413277928019998732

`A007318(and(1, -n))*A277915(A001844(n))`
-/

namespace A305828.P7413277928019998732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A277915 (A001844 n).toNat

end

end A305828.P7413277928019998732

/-! ## A305828.P3987849634620482616

`A000010(C(2, n)!)*A277915(A001844(n))`
-/

namespace A305828.P3987849634620482616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A277915 (A001844 n).toNat

end

end A305828.P3987849634620482616

/-! ## A305828.P5003523448888534701

`A014963(6*(n+1))*A277915(A001844(n))`
-/

namespace A305828.P5003523448888534701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A277915 (A001844 n).toNat

end

end A305828.P5003523448888534701

/-! ## A305828.P4203989196618297081

`A277915(A001844(n))/A000040(n+2)%2`
-/

namespace A305828.P4203989196618297081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277915 (A001844 n).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A305828.P4203989196618297081

/-! ## A305828.P1408901072091953379

`A277915(A001844(n))+C(2, A000203(n+2))`
-/

namespace A305828.P1408901072091953379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277915 (A001844 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A305828.P1408901072091953379

/-! ## A305828.P313227376581507226

`A277915(A001844(n))/A007318(C(2, n+2))`
-/

namespace A305828.P313227376581507226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277915 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A305828.P313227376581507226

/-! ## A305828.P2521146152768703982

`A000041(gcd(n, n+1))*A277915(A001844(n))`
-/

namespace A305828.P2521146152768703982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A277915 (A001844 n).toNat

end

end A305828.P2521146152768703982

/-! ## A305828.P16358100495067360552

`ceil(1/A000005(n+1))*A277915(A001844(n))`
-/

namespace A305828.P16358100495067360552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000005 (n + 1) : ℚ)⌉ * A277915 (A001844 n).toNat

end

end A305828.P16358100495067360552

/-! ## A305828.P17292400003626166195

`2/A020639(2*(n+1))*A277915(A001844(n))`
-/

namespace A305828.P17292400003626166195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A020639 (2 * (n + 1)) : ℚ) * (A277915 (A001844 n).toNat : ℚ)

end

end A305828.P17292400003626166195

/-! ## A305828.P14048952122569540923

`A001222(A005145(n+1))*A277915(A001844(n))`
-/

namespace A305828.P14048952122569540923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005145 (n + 1)).toNat * A277915 (A001844 n).toNat

end

end A305828.P14048952122569540923

/-! ## A305828.P65971857560880338

`A001221(A027699(n+1))*A277915(A001844(n))`
-/

namespace A305828.P65971857560880338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027699 (n + 1)).toNat * A277915 (A001844 n).toNat

end

end A305828.P65971857560880338

/-!
# A305829: Factor n into distinct Fermi-Dirac primes (A050376), normalize by replacing every instance of the k-th Fermi-Dirac prime with k, then multiply everything together.

The programs for A305829, there is no canonical definition to state claims against.
-/

/-! ## A305829.P12174039434945919223

`A003963(A160102(n+1))`
-/

namespace A305829.P12174039434945919223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A160102 (n + 1)).toNat

end

end A305829.P12174039434945919223

/-! ## A305829.P18053149867087362577

`A156061(2*A160102(n+1))`
-/

namespace A305829.P18053149867087362577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A160102 (n + 1)).toNat

end

end A305829.P18053149867087362577

/-! ## A305829.P15962148089698146535

`∏{p}[A160102(n+1), A000720(#)]`
-/

namespace A305829.P15962148089698146535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A305829.P15962148089698146535

/-! ## A305829.P1729887777078268574

`∏{p}[A160102(n+1), A055396(#)]`
-/

namespace A305829.P1729887777078268574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055396 p

end

end A305829.P1729887777078268574

/-! ## A305829.P16442218807647800328

`∏{p}[A160102(n+1), A230980(#)]`
-/

namespace A305829.P16442218807647800328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A230980 p

end

end A305829.P16442218807647800328

/-! ## A305829.P3801316827476610547

`∏{p}[A160102(n+1), A241917(#)]`
-/

namespace A305829.P3801316827476610547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A241917 p

end

end A305829.P3801316827476610547

/-! ## A305829.P7417727568862994607

`∏{p}[A160102(n+1), A318574(#)]`
-/

namespace A305829.P7417727568862994607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A318574 p

end

end A305829.P7417727568862994607

/-! ## A305829.P17291922112586308829

`A318875(A186424(n))+A156061(A160102(n+1))`
-/

namespace A305829.P17291922112586308829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (A186424 n).toNat + A156061 (A160102 (n + 1)).toNat

end

end A305829.P17291922112586308829

/-! ## A305829.P3200340288329670095

`A156061(A160102(n+1)²)`
-/

namespace A305829.P3200340288329670095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A160102 (n + 1) ^ 2).toNat

end

end A305829.P3200340288329670095

/-!
# A305830: Combined weight of the n-th FDH set-system. Factor n into distinct Fermi-Dirac primes (A050376), normalize by replacing every instance of the k-th Fermi-Dirac prime with k, then add up their FD-weights (A064547).

The programs for A305830, there is no canonical definition to state claims against.
-/

/-! ## A305830.P15943340785365144846

`∑{p}[A160102(n+1), A064547(A003963(#))]`
-/

namespace A305830.P15943340785365144846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064547 (A003963 p).toNat

end

end A305830.P15943340785365144846

/-! ## A305830.P12017952572272563706

`∑{p}[A160102(n+1), A064547(A087712(#))]`
-/

namespace A305830.P12017952572272563706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064547 (A087712 p).toNat

end

end A305830.P12017952572272563706

/-! ## A305830.P13521272540358257464

`∑{p}[A160102(n+1), A064547(A156061(#))]`
-/

namespace A305830.P13521272540358257464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064547 (A156061 p).toNat

end

end A305830.P13521272540358257464

/-! ## A305830.P17294516631673019026

`∑{p}[A160102(n+1), A064547(A241919(#))]`
-/

namespace A305830.P17294516631673019026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064547 (A241919 p).toNat

end

end A305830.P17294516631673019026

/-! ## A305830.P15149300527690139741

`∑{p}[A160102(n+1), A318306(A000720(#))]`
-/

namespace A305830.P15149300527690139741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A318306 (A000720 p).toNat

end

end A305830.P15149300527690139741

/-!
# A305831: Number of connected components of the strict integer partition with FDH number n.

The programs for A305831, there is no canonical definition to state claims against.
-/

/-! ## A305831.P13337896034680312253

`A305079(A160102(n+1))`
-/

namespace A305831.P13337896034680312253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A160102 (n + 1)).toNat

end

end A305831.P13337896034680312253

/-! ## A305831.P567301547822530209

`A007318(∑[n])*A328512(A160102(n+1))`
-/

namespace A305831.P567301547822530209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A328512 (A160102 (n + 1)).toNat

end

end A305831.P567301547822530209

/-! ## A305831.P16869010957081443676

`A328512(A160102(n+1)+C(n, A000108(n)))`
-/

namespace A305831.P16869010957081443676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328512 (A160102 (n + 1) + (Nat.choose n (A000108 n).toNat : ℤ)).toNat

end

end A305831.P16869010957081443676

/-! ## A305831.P6147770111205170534

`gcd(2, A000040(n+1))*A328512(A160102(n+1))`
-/

namespace A305831.P6147770111205170534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A328512 (A160102 (n + 1)).toNat

end

end A305831.P6147770111205170534

/-!
# A305832: Number of connected components of the n-th FDH set-system.

The programs for A305832, there is no canonical definition to state claims against.
-/

/-! ## A305832.P5574046326948590701

`gcd(∑{e}[n+1, #-val(#!, 2)], A091542(A212808(2*n)))`
-/

namespace A305832.P5574046326948590701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))) (A091542 (A212808 (2 * n)).toNat)

end

end A305832.P5574046326948590701

/-! ## A305832.P774234670346669454

`gcd(A000217(A184946(n)), A064547(n+1))`
-/

namespace A305832.P774234670346669454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A184946 n).toNat) (A064547 (n + 1))

end

end A305832.P774234670346669454

/-! ## A305832.P8216104196224757272

`A317751(or(A058348(n), A078644(n+1)))`
-/

namespace A305832.P8216104196224757272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317751 (Int.lor (A058348 n) (A078644 (n + 1))).toNat

end

end A305832.P8216104196224757272

/-! ## A305832.P1606664866325948154

`A001222(A365207(n+1)%A139054(n+2))`
-/

namespace A305832.P1606664866325948154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A365207 (n + 1)) (A139054 (n + 2))).toNat

end

end A305832.P1606664866325948154

/-!
# A305833: Triangle read by rows: T(0,0)=1; T(n,k) = 4*T(n-1,k) + T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A305833, there is no canonical definition to state claims against.
-/

/-! ## A305833.P9074000052895791042

`A054335(comp[n²]+n)`
-/

namespace A305833.P9074000052895791042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A305833.P9074000052895791042

/-! ## A305833.P13543276209605822833

`A038231(A091018(n))`
-/

namespace A305833.P13543276209605822833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (A091018 n).toNat

end

end A305833.P13543276209605822833

/-! ## A305833.P12183664339879742610

`A133156(n)²/A011973(n)`
-/

namespace A305833.P12183664339879742610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133156 n ^ 2 : ℚ) / (A011973 n : ℚ)

end

end A305833.P12183664339879742610

/-! ## A305833.P7327332556508169249

`A302747(n)²/A317051(n)`
-/

namespace A305833.P7327332556508169249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302747 n ^ 2 : ℚ) / (A317051 n : ℚ)

end

end A305833.P7327332556508169249

/-! ## A305833.P13541382547653174574

`A038231(A056536(n+1)-1)`
-/

namespace A305833.P13541382547653174574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (A056536 (n + 1) - 1).toNat

end

end A305833.P13541382547653174574

/-!
# A305834: Triangle read by rows: T(0,0)= 1; T(n,k)= T(n-1,k) + 4*T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A305834, there is no canonical definition to state claims against.
-/

/-! ## A305834.P2417019230794602806

`4^(n%floor(sqrt(n+1)))*A011973(n)`
-/

namespace A305834.P2417019230794602806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n % Nat.sqrt (n + 1)) : ℤ) * A011973 n

end

end A305834.P2417019230794602806

/-! ## A305834.P4992514728308957139

`A013611(A091018(n))`
-/

namespace A305834.P4992514728308957139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (A091018 n).toNat

end

end A305834.P4992514728308957139

/-! ## A305834.P5881379035441947337

`A128099(n)²/A011973(n)`
-/

namespace A305834.P5881379035441947337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128099 n ^ 2 : ℚ) / (A011973 n : ℚ)

end

end A305834.P5881379035441947337

/-! ## A305834.P3826219185507978578

`A305098(n)²/A011973(n)`
-/

namespace A305834.P3826219185507978578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305098 n ^ 2 : ℚ) / (A011973 n : ℚ)

end

end A305834.P3826219185507978578

/-! ## A305834.P18336765121538611285

`sqrt(A128099(n)*A317026(n))`
-/

namespace A305834.P18336765121538611285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A128099 n * A317026 n : ℝ)

end

end A305834.P18336765121538611285

/-!
# A305835: Primes which oscillate from prime to composite under a cyclic shift of digits.

The programs for A305835, there is no canonical definition to state claims against.
-/

/-! ## A305835.P17670618251832403361

`p?[A327822(Δ[A025715(n)])]`
-/

namespace A305835.P17670618251832403361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025715 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327822 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A305835.P17670618251832403361

/-! ## A305835.P9509574828990361293

`p?[A327822(A007095(n)+1)]`
-/

namespace A305835.P9509574828990361293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327822 (A007095 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A305835.P9509574828990361293

/-! ## A305835.P14985292555017117960

`p?[A327822(A052382(n+1))]`
-/

namespace A305835.P14985292555017117960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327822 (A052382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A305835.P14985292555017117960

/-! ## A305835.P8770496933801746923

`p?[A327822(∑[A050377(n+1)])]`
-/

namespace A305835.P8770496933801746923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327822 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A305835.P8770496933801746923

/-! ## A305835.P6796562268655120802

`p?[A327822(record[A004151(n+1)])]`
-/

namespace A305835.P6796562268655120802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327822 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A305835.P6796562268655120802

/-!
# A305836: Numbers k such that (2^k-1)^4 + 2 is prime.

The programs for A305836, there is no canonical definition to state claims against.
-/

/-! ## A305836.P14998940757870919250

`lt[n, A097362(A085064(n+1))]`
-/

namespace A305836.P14998940757870919250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (A085064 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A305836.P14998940757870919250

/-! ## A305836.P9893100580616600241

`eq[A007318(A066665(n)), A087256(n+1)]`
-/

namespace A305836.P9893100580616600241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A066665 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305836.P9893100580616600241

/-! ## A305836.P13031164043375483854

`eq[A152884(A072635(n)), A286518(n+1)]`
-/

namespace A305836.P13031164043375483854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152884 (A072635 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305836.P13031164043375483854

/-! ## A305836.P12041918101339266326

`lt[A350987(n+1), A000302(A360679(n+1))]`
-/

namespace A305836.P12041918101339266326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A360679 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305836.P12041918101339266326

/-!
# A305837: Triangle read by rows: T(0,0) = 1; T(n,k) = 5*T(n-1,k) + T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A305837, there is no canonical definition to state claims against.
-/

/-! ## A305837.P9732928718258645181

`A038243(A091018(n))`
-/

namespace A305837.P9732928718258645181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A091018 n).toNat

end

end A305837.P9732928718258645181

/-! ## A305837.P9654854167155982953

`A038243(A056536(n+1)-1)`
-/

namespace A305837.P9654854167155982953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A056536 (n + 1) - 1).toNat

end

end A305837.P9654854167155982953

/-! ## A305837.P17484082749717779284

`5^A082375(n)*A011973(n)`
-/

namespace A305837.P17484082749717779284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A082375 n : ℤ) * (A011973 n : ℚ)

end

end A305837.P17484082749717779284

/-! ## A305837.P10580232710384189294

`A038243(A057428(n+1)+A056536(n+1))`
-/

namespace A305837.P10580232710384189294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A057428 (n + 1) + A056536 (n + 1)).toNat

end

end A305837.P10580232710384189294

/-! ## A305837.P2741679017915841646

`A038303(A091018(n))/A000079(A082375(n))`
-/

namespace A305837.P2741679017915841646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038303 (A091018 n).toNat : ℚ) / (A000079 (A082375 n).toNat : ℚ)

end

end A305837.P2741679017915841646

/-!
# A305838: Triangle read by rows: T(0,0)= 1; T(n,k)= T(n-1,k) + 5*T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A305838, there is no canonical definition to state claims against.
-/

/-! ## A305838.P11820762262409230662

`A013612(A091018(n))`
-/

namespace A305838.P11820762262409230662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A091018 n).toNat

end

end A305838.P11820762262409230662

/-! ## A305838.P2114388276028686069

`A013612(A056536(n+1)-1)`
-/

namespace A305838.P2114388276028686069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A056536 (n + 1) - 1).toNat

end

end A305838.P2114388276028686069

/-! ## A305838.P7447593279932464570

`5^A055087(n)*A011973(n)`
-/

namespace A305838.P7447593279932464570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A055087 n : ℤ) * (A011973 n : ℚ)

end

end A305838.P7447593279932464570

/-! ## A305838.P12232330414681752527

`A000351(A055087(n))*A011973(n)`
-/

namespace A305838.P12232330414681752527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A055087 n).toNat * A011973 n

end

end A305838.P12232330414681752527

/-! ## A305838.P6811290243323339657

`A317054(n)/A000079(A055087(n))`
-/

namespace A305838.P6811290243323339657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317054 n : ℚ) / (A000079 (A055087 n).toNat : ℚ)

end

end A305838.P6811290243323339657

/-! ## A305838.P9684039913260306005

`A317054(n)/A059268(A091018(n))`
-/

namespace A305838.P9684039913260306005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317054 n : ℚ) / (A059268 (A091018 n).toNat : ℚ)

end

end A305838.P9684039913260306005

/-! ## A305838.P11139978611779311908

`A013612(A057428(n)+A056536(n+1))`
-/

namespace A305838.P11139978611779311908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A057428 n + A056536 (n + 1)).toNat

end

end A305838.P11139978611779311908

/-!
# A305839: Number of unlabeled forests of rooted trees with 2n edges and n connected components, in which the outdegree of each node is <= 2 and the symmetric group acts on the components.

The programs for A305839, there is no canonical definition to state claims against.
-/

/-! ## A305839.P5615461275663240687

`A088326(∑[4*n]+1)`
-/

namespace A305839.P5615461275663240687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305839.P5615461275663240687

/-! ## A305839.P14859330332966719276

`A088326(A001844(n))^A178334(n)`
-/

namespace A305839.P14859330332966719276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088326 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A305839.P14859330332966719276

/-! ## A305839.P15247348007670512336

`gcd(A000038(n), A088326(A001844(n)))`
-/

namespace A305839.P15247348007670512336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A088326 (A001844 n).toNat)

end

end A305839.P15247348007670512336

/-! ## A305839.P12397518174589732380

`or(A000007(n), A088326(A001844(n)))`
-/

namespace A305839.P12397518174589732380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A088326 (A001844 n).toNat)

end

end A305839.P12397518174589732380

/-! ## A305839.P13771995644142973668

`A007318(∑[n])*A088326(A001844(n))`
-/

namespace A305839.P13771995644142973668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A088326 (A001844 n).toNat

end

end A305839.P13771995644142973668

/-! ## A305839.P9522363809551322601

`gcd(2, A016945(n))*A088326(A001844(n))`
-/

namespace A305839.P9522363809551322601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A016945 n) : ℤ) * A088326 (A001844 n).toNat

end

end A305839.P9522363809551322601

/-! ## A305839.P5978330692262927598

`A023527(n+1)%2*A088326(A001844(n))`
-/

namespace A305839.P5978330692262927598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023527 (n + 1)) 2 * A088326 (A001844 n).toNat

end

end A305839.P5978330692262927598

/-! ## A305839.P7573745416072095273

`A088326(A001844(n))+A035112(n+1)%2`
-/

namespace A305839.P7573745416072095273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088326 (A001844 n).toNat + Int.tmod (A035112 (n + 1)) 2

end

end A305839.P7573745416072095273

/-!
# A305840: Product_{n>=1} (1 + x^n)^a(n) = g.f. of A005169 (fountains of coins).

The programs for A305840, there is no canonical definition to state claims against.
-/

/-! ## A305840.P9274528480962518038

`∑{d}[n+1, A036987(#-1)*A226999((n+1)/#)]`
-/

namespace A305840.P9274528480962518038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A226999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305840.P9274528480962518038

/-! ## A305840.P6944937198412878940

`A275413(A238020(n+1))`
-/

namespace A305840.P6944937198412878940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275413 (A238020 (n + 1)).toNat

end

end A305840.P6944937198412878940

/-! ## A305840.P14786282611895903273

`A127712(n)+A076489(A351870(n))`
-/

namespace A305840.P14786282611895903273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127712 n + A076489 (A351870 n).toNat

end

end A305840.P14786282611895903273

/-! ## A305840.P13914901543982176094

`A316864(A264557(n+1))+A127712(n)`
-/

namespace A305840.P13914901543982176094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A264557 (n + 1)).toNat + A127712 n

end

end A305840.P13914901543982176094

/-! ## A305840.P10602806998379897392

`A069623(A124778(3*n+1)+A000081(n))`
-/

namespace A305840.P10602806998379897392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A124778 (3 * n + 1) + A000081 n).toNat

end

end A305840.P10602806998379897392

/-!
# A305841: Product_{n>=1} (1 + x^n)^a(n) = g.f. of A001970 (partitions of partitions).

The programs for A305841, there is no canonical definition to state claims against.
-/

/-! ## A305841.P6139983066725627951

`∑{d}[A006519(n+1), A000041((n+1)/#)]`
-/

namespace A305841.P6139983066725627951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305841.P6139983066725627951

/-! ## A305841.P13037277354481476713

`∑{d}[n+1, A047968(#)*A087003((n+1)/#)]`
-/

namespace A305841.P13037277354481476713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047968 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305841.P13037277354481476713

/-! ## A305841.P3059390446900074950

`∑{d}[n+1, A000041(#)*A209229((n+1)/#)]`
-/

namespace A305841.P3059390446900074950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305841.P3059390446900074950

/-! ## A305841.P9478331612541558012

`∑{d}[n+1, A062570(#)*A333697((n+1)/#)]`
-/

namespace A305841.P9478331612541558012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A333697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305841.P9478331612541558012

/-! ## A305841.P9620037467666861389

`∑{d}[n+1, A036987(#-1)*A000041((n+1)/#)]`
-/

namespace A305841.P9620037467666861389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A000041 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305841.P9620037467666861389

/-! ## A305841.P7128045817245653073

`∑{d}[A000079(A007814(n+1)), A000041((n+1)/#)]`
-/

namespace A305841.P7128045817245653073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305841.P7128045817245653073

/-!
# A305843: Number of labeled spanning intersecting set-systems on n vertices.

The programs for A305843, there is no canonical definition to state claims against.
-/

/-! ## A305843.P8689762537356285127

`A000371(n)+A326364(n)-A131288(n)`
-/

namespace A305843.P8689762537356285127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000371 n + (A326364 n - A131288 n)

end

end A305843.P8689762537356285127

/-! ## A305843.P15075405840138847570

`A003465(n)+A326364(n)-A318128(n)`
-/

namespace A305843.P15075405840138847570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003465 n + (A326364 n - A318128 n)

end

end A305843.P15075405840138847570

/-!
# A305844: Number of labeled spanning intersecting antichains on n vertices.

The programs for A305844, there is no canonical definition to state claims against.
-/

/-! ## A305844.P17920702610689230997

`A105662(xor(2, n^(n+1)+1-(n+1)^n))`
-/

namespace A305844.P17920702610689230997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105662 (Int.xor 2 ((n ^ (n + 1) : ℤ) + (1 - ((n + 1) ^ n : ℤ)))).toNat

end

end A305844.P17920702610689230997

/-! ## A305844.P4734512174972878883

`A313724(A029259(n!))`
-/

namespace A305844.P4734512174972878883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313724 (A029259 (Nat.factorial n)).toNat

end

end A305844.P4734512174972878883

/-!
# A305845: a(1) = a(2) = a(3) = 1; for n > 3, a(n) = a(a(n-2)) + a(n-a(n-2)).

The programs for A305845, the canonical program `A305845.P12895936080147174642` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305845 has offset 1).

The definition of A305845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-2)-1)+a(n-a(n-2))` (program `A305845.P12895936080147174642`, by `A305845.P12895936080147174642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305845.P12895936080147174642

`a(a(n-2)-1)+a(n-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305845

/-- `a(a(n-2)-1)+a(n-a(n-2))` -/
def P12895936080147174642.Spec : Prop :=
  ∀ n, (P12895936080147174642.a n : ℤ) = A305845 (n + 1)

theorem P12895936080147174642.correct : P12895936080147174642.Spec := by
  intro n
  simp only [A305845, Nat.add_sub_cancel]

end A305845

/-! ## A305845.P17608040775857178389

`∑[A276611(A263710(n+1))%2]`
-/

namespace A305845.P17608040775857178389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276611 (A263710 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305845.P17608040775857178389

namespace A305845

/-- `∑[A276611(A263710(n+1))%2]` -/
def P17608040775857178389.Spec : Prop :=
  ∀ n, P17608040775857178389.a n = A305845 (n + 1)

end A305845

/-! ## A305845.P3079376379757830471

`∑[A010060(A238802(A040976(n+1)))]`
-/

namespace A305845.P3079376379757830471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A238802 (A040976 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305845.P3079376379757830471

namespace A305845

/-- `∑[A010060(A238802(A040976(n+1)))]` -/
def P3079376379757830471.Spec : Prop :=
  ∀ n, P3079376379757830471.a n = A305845 (n + 1)

end A305845

/-! ## A305845.P15720013207838015069

`A064911(A048344(3*n+5))+A004526(n)`
-/

namespace A305845.P15720013207838015069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A048344 (3 * n + 5)).toNat + A004526 n

end

end A305845.P15720013207838015069

namespace A305845

/-- `A064911(A048344(3*n+5))+A004526(n)` -/
def P15720013207838015069.Spec : Prop :=
  ∀ n, P15720013207838015069.a n = A305845 (n + 1)

end A305845

/-!
# A305846: Inverse Weigh transform of the Bell numbers (A000110).

The programs for A305846, there is no canonical definition to state claims against.
-/

/-! ## A305846.P15625103288536273012

`∑{d}[n+1, A036987(#-1)*A085686((n+1)/#)]`
-/

namespace A305846.P15625103288536273012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A085686 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305846.P15625103288536273012

/-! ## A305846.P4623184368283795636

`ceil(xor(A293468(n), A293492(n))/(n+1))`
-/

namespace A305846.P4623184368283795636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (A293468 n) (A293492 n) : ℚ) / (n + 1 : ℚ)⌉

end

end A305846.P4623184368283795636

/-! ## A305846.P15341970102498514642

`A065033(n)+A008624(A344623(n))`
-/

namespace A305846.P15341970102498514642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A008624 (A344623 n).toNat

end

end A305846.P15341970102498514642

/-!
# A305847: Solution a() of the complementary equation a(n) + b(n) = 5*n, where a(1) = 1. See Comments.

The programs for A305847, the canonical program `A305847.P37911868099262503` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305847 has offset 1).

The definition of A305847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305847.P16140226824714062550

`2*n+1-floor(cot(ϕ/(n+2)))`
-/

namespace A305847.P16140226824714062550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌊Real.cot (Real.goldenRatio / (n + 2 : ℝ))⌋

end

end A305847.P16140226824714062550

namespace A305847

/-- `2*n+1-floor(cot(ϕ/(n+2)))` -/
def P16140226824714062550.Spec : Prop :=
  ∀ n, P16140226824714062550.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P11840679405027724827

`ceil(2*n+1-cot(ϕ/(n+2)))`
-/

namespace A305847.P11840679405027724827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) - Real.cot (Real.goldenRatio / (n + 2 : ℝ))⌉

end

end A305847.P11840679405027724827

namespace A305847

/-- `ceil(2*n+1-cot(ϕ/(n+2)))` -/
def P11840679405027724827.Spec : Prop :=
  ∀ n, P11840679405027724827.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P4628741734946212694

`∑[2-A131309(n)]`
-/

namespace A305847.P4628741734946212694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305847.P4628741734946212694

namespace A305847

/-- `∑[2-A131309(n)]` -/
def P4628741734946212694.Spec : Prop :=
  ∀ n, P4628741734946212694.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P17639152642455566841

`Δ[n²]-A005379(n+1)`
-/

namespace A305847.P17639152642455566841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A005379 (n + 1)

end

end A305847.P17639152642455566841

namespace A305847

/-- `Δ[n²]-A005379(n+1)` -/
def P17639152642455566841.Spec : Prop :=
  ∀ n, P17639152642455566841.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P12445111221187013434

`5*(n+1)-A305848(n+1)`
-/

namespace A305847.P12445111221187013434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A305848 (n + 1)

end

end A305847.P12445111221187013434

namespace A305847

/-- `5*(n+1)-A305848(n+1)` -/
def P12445111221187013434.Spec : Prop :=
  ∀ n, P12445111221187013434.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P9376790963043699132

`∑[A000032(Δ[floor(cot(ϕ/(n+1)))])]`
-/

namespace A305847.P9376790963043699132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.goldenRatio / (n + 1 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305847.P9376790963043699132

namespace A305847

/-- `∑[A000032(Δ[floor(cot(ϕ/(n+1)))])]` -/
def P9376790963043699132.Spec : Prop :=
  ∀ n, P9376790963043699132.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P37911868099262503

`A005378(A005206(n))+n`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A305847

/-- `A005378(A005206(n))+n` -/
def P37911868099262503.Spec : Prop :=
  ∀ n, P37911868099262503.a n = A305847 (n + 1)

theorem P37911868099262503.correct : P37911868099262503.Spec := by
  intro n
  simp only [A305847, Nat.add_sub_cancel]

end A305847

/-! ## A305847.P18183478555038988855

`A005378(A005379(n))+n`
-/

namespace A305847.P18183478555038988855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A005379 n).toNat + (n : ℤ)

end

end A305847.P18183478555038988855

namespace A305847

/-- `A005378(A005379(n))+n` -/
def P18183478555038988855.Spec : Prop :=
  ∀ n, P18183478555038988855.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P1513161149867645033

`A005378(A060143(n+1))+n`
-/

namespace A305847.P1513161149867645033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A060143 (n + 1)).toNat + (n : ℤ)

end

end A305847.P1513161149867645033

namespace A305847

/-- `A005378(A060143(n+1))+n` -/
def P1513161149867645033.Spec : Prop :=
  ∀ n, P1513161149867645033.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P6691912492788583338

`∑[A000032(Δ[A005379(n)])]-1`
-/

namespace A305847.P6691912492788583338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A305847.P6691912492788583338

namespace A305847

/-- `∑[A000032(Δ[A005379(n)])]-1` -/
def P6691912492788583338.Spec : Prop :=
  ∀ n, P6691912492788583338.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P6100168670175613382

`∑[A000032(Δ[A005379(n)]^n)]`
-/

namespace A305847.P6100168670175613382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f2 (n + 1) - f2 n) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305847.P6100168670175613382

namespace A305847

/-- `∑[A000032(Δ[A005379(n)]^n)]` -/
def P6100168670175613382.Spec : Prop :=
  ∀ n, P6100168670175613382.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P6495280939420876931

`A028310(n+1)-A005379(n+1)+n`
-/

namespace A305847.P6495280939420876931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) - A005379 (n + 1) + (n : ℤ)

end

end A305847.P6495280939420876931

namespace A305847

/-- `A028310(n+1)-A005379(n+1)+n` -/
def P6495280939420876931.Spec : Prop :=
  ∀ n, P6495280939420876931.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P9006010717617506801

`A005378(A005378(n)-A192687(n))+n`
-/

namespace A305847.P9006010717617506801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A005378 n - A192687 n).toNat + (n : ℤ)

end

end A305847.P9006010717617506801

namespace A305847

/-- `A005378(A005378(n)-A192687(n))+n` -/
def P9006010717617506801.Spec : Prop :=
  ∀ n, P9006010717617506801.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P14032774150732739594

`A005378(A005378(n*A179184(n)))+n`
-/

namespace A305847.P14032774150732739594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A005378 ((n : ℤ) * A179184 n).toNat).toNat + (n : ℤ)

end

end A305847.P14032774150732739594

namespace A305847

/-- `A005378(A005378(n*A179184(n)))+n` -/
def P14032774150732739594.Spec : Prop :=
  ∀ n, P14032774150732739594.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P12595893334500537053

`A005408(n)-A005379(n)-Δ[A005379(n)]`
-/

namespace A305847.P12595893334500537053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A005379 n - (f1 (n + 1) - f1 n)

end

end A305847.P12595893334500537053

namespace A305847

/-- `A005408(n)-A005379(n)-Δ[A005379(n)]` -/
def P12595893334500537053.Spec : Prop :=
  ∀ n, P12595893334500537053.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P14567272753762832575

`A000217(2*n+1)-(A005379(n+1)+A000217(2*n))`
-/

namespace A305847.P14567272753762832575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) - (A005379 (n + 1) + A000217 (2 * n))

end

end A305847.P14567272753762832575

namespace A305847

/-- `A000217(2*n+1)-(A005379(n+1)+A000217(2*n))` -/
def P14567272753762832575.Spec : Prop :=
  ∀ n, P14567272753762832575.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P892429698139172403

`A065033(2*n+1)-A005379(n+1)+n`
-/

namespace A305847.P892429698139172403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1) - A005379 (n + 1) + (n : ℤ)

end

end A305847.P892429698139172403

namespace A305847

/-- `A065033(2*n+1)-A005379(n+1)+n` -/
def P892429698139172403.Spec : Prop :=
  ∀ n, P892429698139172403.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P10893468534014793772

`A110654(2*n+1)-A005379(n+1)+n`
-/

namespace A305847.P10893468534014793772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * n + 1) - A005379 (n + 1) + (n : ℤ)

end

end A305847.P10893468534014793772

namespace A305847

/-- `A110654(2*n+1)-A005379(n+1)+n` -/
def P10893468534014793772.Spec : Prop :=
  ∀ n, P10893468534014793772.a n = A305847 (n + 1)

end A305847

/-! ## A305847.P11406193300305632390

`4*(n+1)-A305849(n+1)`
-/

namespace A305847.P11406193300305632390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A305849 (n + 1)

end

end A305847.P11406193300305632390

namespace A305847

/-- `4*(n+1)-A305849(n+1)` -/
def P11406193300305632390.Spec : Prop :=
  ∀ n, P11406193300305632390.a n = A305847 (n + 1)

end A305847

/-!
# A305848: Solution b() of the complementary equation a(n) + b(n) = 5n, where a(1) = 1. See Comments.

The programs for A305848, the canonical program `A305848.P16122553387200692946` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305848 has offset 1).

The definition of A305848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305848.P12068394760179057437

`floor(∑[ϕ²-Δ[ϕ/(n+1)]])+1+n`
-/

namespace A305848.P12068394760179057437
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio / (n + 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1 + (n : ℤ)

end

end A305848.P12068394760179057437

namespace A305848

/-- `floor(∑[ϕ²-Δ[ϕ/(n+1)]])+1+n` -/
def P12068394760179057437.Spec : Prop :=
  ∀ n, P12068394760179057437.a n = A305848 (n + 1)

end A305848

/-! ## A305848.P11036394049878057283

`∑[A131309(n)+3]`
-/

namespace A305848.P11036394049878057283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131309 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305848.P11036394049878057283

namespace A305848

/-- `∑[A131309(n)+3]` -/
def P11036394049878057283.Spec : Prop :=
  ∀ n, P11036394049878057283.a n = A305848 (n + 1)

end A305848

/-! ## A305848.P10711576983224664313

`∑[Δ[A005379(n)]^n+3]`
-/

namespace A305848.P10711576983224664313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305848.P10711576983224664313

namespace A305848

/-- `∑[Δ[A005379(n)]^n+3]` -/
def P10711576983224664313.Spec : Prop :=
  ∀ n, P10711576983224664313.a n = A305848 (n + 1)

end A305848

/-! ## A305848.P10408807300653470001

`∑[5-A000032(Δ[A005379(n)]^n)]`
-/

namespace A305848.P10408807300653470001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A000032 ((f2 (n + 1) - f2 n) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305848.P10408807300653470001

namespace A305848

/-- `∑[5-A000032(Δ[A005379(n)]^n)]` -/
def P10408807300653470001.Spec : Prop :=
  ∀ n, P10408807300653470001.a n = A305848 (n + 1)

end A305848

/-! ## A305848.P16122553387200692946

`abs(A004766(n+1)-A005378(A060143(n+1)))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A305848

/-- `abs(A004766(n+1)-A005378(A060143(n+1)))` -/
def P16122553387200692946.Spec : Prop :=
  ∀ n, P16122553387200692946.a n = A305848 (n + 1)

theorem P16122553387200692946.correct : P16122553387200692946.Spec := by
  intro n
  simp only [A305848, Nat.add_sub_cancel]

end A305848

/-! ## A305848.P680033791774347950

`A249115(A305849(n+1))`
-/

namespace A305848.P680033791774347950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (A305849 (n + 1)).toNat

end

end A305848.P680033791774347950

namespace A305848

/-- `A249115(A305849(n+1))` -/
def P680033791774347950.Spec : Prop :=
  ∀ n, P680033791774347950.a n = A305848 (n + 1)

end A305848

/-! ## A305848.P13467773609542011104

`A000027(A305849(n+1)+n+1)`
-/

namespace A305848.P13467773609542011104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A305849 (n + 1) + (n + 1 : ℤ)).toNat

end

end A305848.P13467773609542011104

namespace A305848

/-- `A000027(A305849(n+1)+n+1)` -/
def P13467773609542011104.Spec : Prop :=
  ∀ n, P13467773609542011104.a n = A305848 (n + 1)

end A305848

/-! ## A305848.P4096166916284694956

`A028310(A305849(n+1)+n+1)`
-/

namespace A305848.P4096166916284694956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A305849 (n + 1) + (n + 1 : ℤ)).toNat

end

end A305848.P4096166916284694956

namespace A305848

/-- `A028310(A305849(n+1)+n+1)` -/
def P4096166916284694956.Spec : Prop :=
  ∀ n, P4096166916284694956.a n = A305848 (n + 1)

end A305848

/-! ## A305848.P14588848152504467522

`A087156(A305849(n+1)+n+1)`
-/

namespace A305848.P14588848152504467522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A305849 (n + 1) + (n + 1 : ℤ)).toNat

end

end A305848.P14588848152504467522

namespace A305848

/-- `A087156(A305849(n+1)+n+1)` -/
def P14588848152504467522.Spec : Prop :=
  ∀ n, P14588848152504467522.a n = A305848 (n + 1)

end A305848

/-!
# A305849: Positions of 2 in the difference sequence of A305847.

The programs for A305849, the canonical program `A305849.P13687725906806595279` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305849 has offset 1).

The definition of A305849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305849.P12587452240784614066

`floor(∑[ϕ²-Δ[ϕ/(n+1)]])`
-/

namespace A305849.P12587452240784614066
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio / (n + 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A305849.P12587452240784614066

namespace A305849

/-- `floor(∑[ϕ²-Δ[ϕ/(n+1)]])` -/
def P12587452240784614066.Spec : Prop :=
  ∀ n, P12587452240784614066.a n = A305849 (n + 1)

end A305849

/-! ## A305849.P6845265905859809205

`eq[0, A131309(n)]`
-/

namespace A305849.P6845265905859809205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305849.P6845265905859809205

namespace A305849

/-- `eq[0, A131309(n)]` -/
def P6845265905859809205.Spec : Prop :=
  ∀ n, (P6845265905859809205.a n : ℤ) = A305849 (n + 1)

end A305849

/-! ## A305849.P16570487706417680740

`lt[A340510(n+1), n]`
-/

namespace A305849.P16570487706417680740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340510 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305849.P16570487706417680740

namespace A305849

/-- `lt[A340510(n+1), n]` -/
def P16570487706417680740.Spec : Prop :=
  ∀ n, (P16570487706417680740.a n : ℤ) = A305849 (n + 1)

end A305849

/-! ## A305849.P13687725906806595279

`A305848(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305849

/-- `A305848(n+1)-(n+1)` -/
def P13687725906806595279.Spec : Prop :=
  ∀ n, P13687725906806595279.a n = A305849 (n + 1)

theorem P13687725906806595279.correct : P13687725906806595279.Spec := by
  intro n
  simp only [A305849, Nat.add_sub_cancel]

end A305849

/-! ## A305849.P16515441940147323598

`A005379(n+1)+2*n+3`
-/

namespace A305849.P16515441940147323598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (n + 1) + (2 * n + 3 : ℤ)

end

end A305849.P16515441940147323598

namespace A305849

/-- `A005379(n+1)+2*n+3` -/
def P16515441940147323598.Spec : Prop :=
  ∀ n, P16515441940147323598.a n = A305849 (n + 1)

end A305849

/-! ## A305849.P11263943322708220300

`4*(n+1)-A305847(n+1)`
-/

namespace A305849.P11263943322708220300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A305847 (n + 1)

end

end A305849.P11263943322708220300

namespace A305849

/-- `4*(n+1)-A305847(n+1)` -/
def P11263943322708220300.Spec : Prop :=
  ∀ n, P11263943322708220300.a n = A305849 (n + 1)

end A305849

/-! ## A305849.P14555295463639468070

`eq[A005206(n), A340510(n+1)]`
-/

namespace A305849.P14555295463639468070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305849.P14555295463639468070

namespace A305849

/-- `eq[A005206(n), A340510(n+1)]` -/
def P14555295463639468070.Spec : Prop :=
  ∀ n, (P14555295463639468070.a n : ℤ) = A305849 (n + 1)

end A305849

/-! ## A305849.P1540046092389674371

`eq[A005379(n), A340510(n+1)]`
-/

namespace A305849.P1540046092389674371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305849.P1540046092389674371

namespace A305849

/-- `eq[A005379(n), A340510(n+1)]` -/
def P1540046092389674371.Spec : Prop :=
  ∀ n, (P1540046092389674371.a n : ℤ) = A305849 (n + 1)

end A305849

/-! ## A305849.P14822596424719339367

`eq[A005379(n), A342297(n+1)]`
-/

namespace A305849.P14822596424719339367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305849.P14822596424719339367

namespace A305849

/-- `eq[A005379(n), A342297(n+1)]` -/
def P14822596424719339367.Spec : Prop :=
  ∀ n, (P14822596424719339367.a n : ℤ) = A305849 (n + 1)

end A305849

/-! ## A305849.P16304787473001096075

`eq[A123070(n), A340510(n+1)]`
-/

namespace A305849.P16304787473001096075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305849.P16304787473001096075

namespace A305849

/-- `eq[A123070(n), A340510(n+1)]` -/
def P16304787473001096075.Spec : Prop :=
  ∀ n, (P16304787473001096075.a n : ℤ) = A305849 (n + 1)

end A305849

/-! ## A305849.P8964392286127707458

`A005408(n+1)+A005379(n+1)`
-/

namespace A305849.P8964392286127707458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) + A005379 (n + 1)

end

end A305849.P8964392286127707458

namespace A305849

/-- `A005408(n+1)+A005379(n+1)` -/
def P8964392286127707458.Spec : Prop :=
  ∀ n, P8964392286127707458.a n = A305849 (n + 1)

end A305849

/-! ## A305849.P3717820250018731989

`A000201(A005379(n+1)+n+2)`
-/

namespace A305849.P3717820250018731989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A005379 (n + 1) + (n + 2 : ℤ)).toNat

end

end A305849.P3717820250018731989

namespace A305849

/-- `A000201(A005379(n+1)+n+2)` -/
def P3717820250018731989.Spec : Prop :=
  ∀ n, P3717820250018731989.a n = A305849 (n + 1)

end A305849

/-! ## A305849.P11976310707453881217

`A001614(n+1)+A118011(n+1)-A305847(n+1)`
-/

namespace A305849.P11976310707453881217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1) + (A118011 (n + 1) - A305847 (n + 1))

end

end A305849.P11976310707453881217

namespace A305849

/-- `A001614(n+1)+A118011(n+1)-A305847(n+1)` -/
def P11976310707453881217.Spec : Prop :=
  ∀ n, P11976310707453881217.a n = A305849 (n + 1)

end A305849

/-! ## A305849.P14109226789407927159

`A000201(A005379(A000201(A000201(n+2))))`
-/

namespace A305849.P14109226789407927159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A005379 (A000201 (A000201 (n + 2)).toNat).toNat).toNat

end

end A305849.P14109226789407927159

namespace A305849

/-- `A000201(A005379(A000201(A000201(n+2))))` -/
def P14109226789407927159.Spec : Prop :=
  ∀ n, P14109226789407927159.a n = A305849 (n + 1)

end A305849

/-!
# A305850: Weigh transform of the Bell numbers (A000110).

The programs for A305850, there is no canonical definition to state claims against.
-/

/-! ## A305850.P980978702680155496

`A213172(A011782(n))+char[3]`
-/

namespace A305850.P980978702680155496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213172 (A011782 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305850.P980978702680155496

/-! ## A305850.P18232017663824070390

`or(A213172(A131577(n)), A350530(n+1))`
-/

namespace A305850.P18232017663824070390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213172 (A131577 n).toNat) (A350530 (n + 1))

end

end A305850.P18232017663824070390

/-!
# A305851: a(n) = (a(n-1)+a(n-2))^(n-2) with a(1)=a(2)=1.

The programs for A305851, the canonical program `A305851.P5243532102828230314` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305851 has offset 1).

The definition of A305851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305851.P5243532102828230314

`(a(n-1)+a(n-2))^(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305851

/-- `(a(n-1)+a(n-2))^(n-1)` -/
def P5243532102828230314.Spec : Prop :=
  ∀ n, P5243532102828230314.a n = (A305851 (n + 1) : ℚ)

end A305851

/-! ## A305851.P14958848415384424760

`(a(n-1)-floor(-a(n-2)))^(n-1)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A305851.P14958848415384424760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - (⌊-a (n - 2)⌋ : ℚ)) ^ ((n : ℤ) - 1 : ℤ)

end

end A305851.P14958848415384424760

namespace A305851

/-- `(a(n-1)-floor(-a(n-2)))^(n-1)` -/
def P14958848415384424760.Spec : Prop :=
  ∀ n, P14958848415384424760.a n = (A305851 (n + 1) : ℚ)

end A305851

/-! ## A305851.P2110639130163806786

`(a(n-1)-round(-a(n-2)))^(n-1)` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A305851.P2110639130163806786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - (SequenceMachineLib.roundAway (-a (n - 2)) : ℚ)) ^ ((n : ℤ) - 1 : ℤ)

end

end A305851.P2110639130163806786

namespace A305851

/-- `(a(n-1)-round(-a(n-2)))^(n-1)` -/
def P2110639130163806786.Spec : Prop :=
  ∀ n, P2110639130163806786.a n = (A305851 (n + 1) : ℚ)

end A305851

/-!
# A305852: Weigh transform of the Fubini numbers (ordered Bell numbers, A000670).

The programs for A305852, there is no canonical definition to state claims against.
-/

/-! ## A305852.P15118908376979071192

`A194509(A129374(∑[n+1]))`
-/

namespace A305852.P15118908376979071192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A129374 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A305852.P15118908376979071192

/-! ## A305852.P3032226949318826232

`A130945(∑{d}[A349408(n+1), #])`
-/

namespace A305852.P3032226949318826232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130945 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A305852.P3032226949318826232

/-!
# A305853: Inverse Weigh transform of the Fubini numbers (ordered Bell numbers, A000670).

The programs for A305853, there is no canonical definition to state claims against.
-/

/-! ## A305853.P2289571538534236086

`A329608(A256159(n))`
-/

namespace A305853.P2289571538534236086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329608 (A256159 n).toNat

end

end A305853.P2289571538534236086

/-!
# A305854: Number of unlabeled spanning intersecting set-systems on n vertices.

The programs for A305854, there is no canonical definition to state claims against.
-/

/-! ## A305854.P10825537042814875979

`A298363(n!)`
-/

namespace A305854.P10825537042814875979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298363 (Nat.factorial n)

end

end A305854.P10825537042814875979

/-!
# A305855: Number of unlabeled spanning intersecting antichains on n vertices.

The programs for A305855, there is no canonical definition to state claims against.
-/

/-! ## A305855.P1373414244072542368

`abs(Δ[A305857(A080465(n))])`
-/

namespace A305855.P1373414244072542368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305857 (A080465 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A305855.P1373414244072542368

/-! ## A305855.P6208804041609070741

`abs(A305857(A080465(n))-A305857(n))`
-/

namespace A305855.P6208804041609070741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305857 (A080465 (n + 10)).toNat - A305857 n|

end

end A305855.P6208804041609070741

/-!
# A305856: Number of unlabeled intersecting set-systems on up to n vertices.

The programs for A305856, there is no canonical definition to state claims against.
-/

/-! ## A305856.P2647578299250744678

`∑[A305854(n)]`
-/

namespace A305856.P2647578299250744678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305856.P2647578299250744678

/-! ## A305856.P9459561534470053892

`A305854(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A305856.P9459561534470053892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305854 n + a (A023443 n).toNat

end

end A305856.P9459561534470053892

/-! ## A305856.P17371522178129794329

`A305854(n)+a(sqrt(A000290(n))-1)` with `a(0)=1`
-/

namespace A305856.P17371522178129794329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305854 n + a (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ) - 1)).toNat

end

end A305856.P17371522178129794329

/-!
# A305857: Number of unlabeled intersecting antichains on up to n vertices.

The programs for A305857, there is no canonical definition to state claims against.
-/

/-! ## A305857.P4635905892667583283

`∑[A305855(n)]`
-/

namespace A305857.P4635905892667583283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305857.P4635905892667583283

/-! ## A305857.P666197618052750559

`A305855(n)+a(A006370(2*n)-1)` with `a(0)=1`
-/

namespace A305857.P666197618052750559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305855 n + a (A006370 (2 * n) - 1).toNat

end

end A305857.P666197618052750559

/-! ## A305857.P5429446005079749355

`A305855(n)+A061579(A061579(a(n-1)))` with `a(0)=1`
-/

namespace A305857.P5429446005079749355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305855 n + A061579 (A061579 (a (n - 1)).toNat).toNat

end

end A305857.P5429446005079749355

/-!
# A305859: Numbers that are congruent to {1, 3, 11} mod 12.

The programs for A305859, the canonical program `A305859.P11133539167110950812` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305859 has offset 1).

The definition of A305859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305859.P11133539167110950812

`2*(n+1)+6*floor((n+1)/3)-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305859

/-- `2*(n+1)+6*floor((n+1)/3)-1` -/
def P11133539167110950812.Spec : Prop :=
  ∀ n, P11133539167110950812.a n = A305859 (n + 1)

theorem P11133539167110950812.correct : P11133539167110950812.Spec := by
  intro n
  simp only [A305859, Nat.add_sub_cancel]

end A305859

/-! ## A305859.P12290886230156740345

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=8, a(3)=2`
-/

namespace A305859.P12290886230156740345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P12290886230156740345

namespace A305859

/-- `∑[abs(a(n-3))]` -/
def P12290886230156740345.Spec : Prop :=
  ∀ n, (P12290886230156740345.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P12988394301016215944

`∑[lcm(2, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A305859.P12988394301016215944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f1 =>
  Nat.lcm 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P12988394301016215944

namespace A305859

/-- `∑[lcm(2, a(n-3))]` -/
def P12988394301016215944.Spec : Prop :=
  ∀ n, (P12988394301016215944.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P5962988123164138006

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=8, a(3)=2`
-/

namespace A305859.P5962988123164138006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P5962988123164138006

namespace A305859

/-- `∑[dr(a(n-3))]` -/
def P5962988123164138006.Spec : Prop :=
  ∀ n, (P5962988123164138006.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P4736377828066246710

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=8, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A305859.P4736377828066246710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P4736377828066246710

namespace A305859

/-- `∑[floor(a(n-3))]` -/
def P4736377828066246710.Spec : Prop :=
  ∀ n, (P4736377828066246710.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P11259601095607297423

`∑[gcd(8, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=8, a(3)=2`
-/

namespace A305859.P11259601095607297423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 2] fun n f1 =>
  Nat.gcd 8 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P11259601095607297423

namespace A305859

/-- `∑[gcd(8, a(n-3))]` -/
def P11259601095607297423.Spec : Prop :=
  ∀ n, (P11259601095607297423.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P1418588261735801919

`∑[a(n-3)%9]` with `a(0)=1, a(1)=2, a(2)=8, a(3)=2`
-/

namespace A305859.P1418588261735801919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 2] fun n f1 =>
  f1 (n - 3) % 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P1418588261735801919

namespace A305859

/-- `∑[a(n-3)%9]` -/
def P1418588261735801919.Spec : Prop :=
  ∀ n, (P1418588261735801919.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P16212013502871549058

`eq[1, C(n, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A305859.P16212013502871549058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  Nat.choose n (f2 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305859.P16212013502871549058

namespace A305859

/-- `eq[1, C(n, a(n-3))]` -/
def P16212013502871549058.Spec : Prop :=
  ∀ n, (P16212013502871549058.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P9437856986226011306

`∩[2*n+1, 2*n-(n+1)%6]`
-/

namespace A305859.P9437856986226011306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (((n + 1) % 6 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305859.P9437856986226011306

namespace A305859

/-- `∩[2*n+1, 2*n-(n+1)%6]` -/
def P9437856986226011306.Spec : Prop :=
  ∀ n, (P9437856986226011306.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P4172517194199865153

`∩[2*n+1, round(2*n/5+2*n+1)]`
-/

namespace A305859.P4172517194199865153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / 5 + (2 * n + 1 : ℚ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305859.P4172517194199865153

namespace A305859

/-- `∩[2*n+1, round(2*n/5+2*n+1)]` -/
def P4172517194199865153.Spec : Prop :=
  ∀ n, (P4172517194199865153.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P487777250425696210

`∑[dr(A077588(n))]`
-/

namespace A305859.P487777250425696210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A077588 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P487777250425696210

namespace A305859

/-- `∑[dr(A077588(n))]` -/
def P487777250425696210.Spec : Prop :=
  ∀ n, (P487777250425696210.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P8694347806413271621

`∑[A196441(2*n+2*n+1)]`
-/

namespace A305859.P8694347806413271621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196441 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P8694347806413271621

namespace A305859

/-- `∑[A196441(2*n+2*n+1)]` -/
def P8694347806413271621.Spec : Prop :=
  ∀ n, P8694347806413271621.a n = A305859 (n + 1)

end A305859

/-! ## A305859.P16653602239142089946

`∪[A091998(n+1), A017557(n)]`
-/

namespace A305859.P16653602239142089946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305859.P16653602239142089946

namespace A305859

/-- `∪[A091998(n+1), A017557(n)]` -/
def P16653602239142089946.Spec : Prop :=
  ∀ n, (P16653602239142089946.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P8640637466106527963

`∪[A146512(n+1), A017653(n)]`
-/

namespace A305859.P8640637466106527963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305859.P8640637466106527963

namespace A305859

/-- `∪[A146512(n+1), A017653(n)]` -/
def P8640637466106527963.Spec : Prop :=
  ∀ n, (P8640637466106527963.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P10821919736643875785

`∪[A091998(n+1), A146512(n+1)]`
-/

namespace A305859.P10821919736643875785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305859.P10821919736643875785

namespace A305859

/-- `∪[A091998(n+1), A146512(n+1)]` -/
def P10821919736643875785.Spec : Prop :=
  ∀ n, (P10821919736643875785.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P4100740626419442825

`∑[dr(A201722(n+2))]`
-/

namespace A305859.P4100740626419442825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A201722 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P4100740626419442825

namespace A305859

/-- `∑[dr(A201722(n+2))]` -/
def P4100740626419442825.Spec : Prop :=
  ∀ n, (P4100740626419442825.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P6590632932876872902

`Δ[A163979(n+1)+(1-n)²]`
-/

namespace A305859.P6590632932876872902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163979 (n + 1) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305859.P6590632932876872902

namespace A305859

/-- `Δ[A163979(n+1)+(1-n)²]` -/
def P6590632932876872902.Spec : Prop :=
  ∀ n, P6590632932876872902.a n = A305859 (n + 1)

end A305859

/-! ## A305859.P9096959669477402180

`A276283(A042965(n+1))`
-/

namespace A305859.P9096959669477402180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 (A042965 (n + 1)).toNat

end

end A305859.P9096959669477402180

namespace A305859

/-- `A276283(A042965(n+1))` -/
def P9096959669477402180.Spec : Prop :=
  ∀ n, P9096959669477402180.a n = A305859 (n + 1)

end A305859

/-! ## A305859.P5930468233745292224

`∑[dr(A386477(2*n))]`
-/

namespace A305859.P5930468233745292224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A386477 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305859.P5930468233745292224

namespace A305859

/-- `∑[dr(A386477(2*n))]` -/
def P5930468233745292224.Spec : Prop :=
  ∀ n, (P5930468233745292224.a n : ℤ) = A305859 (n + 1)

end A305859

/-! ## A305859.P2832022741164449287

`A004273(A047240(n+2))`
-/

namespace A305859.P2832022741164449287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047240 (n + 2)).toNat

end

end A305859.P2832022741164449287

namespace A305859

/-- `A004273(A047240(n+2))` -/
def P2832022741164449287.Spec : Prop :=
  ∀ n, P2832022741164449287.a n = A305859 (n + 1)

end A305859

/-!
# A305860: Triangle m(n,k) read by rows (n >= 0, 0 <= k <= n): to get the binary expansion of m(n,k), for 0 <= i < 2^n, write 1 if the binary weight of i is equal to k or 0 otherwise, left to right.

The programs for A305860, there is no canonical definition to state claims against.
-/

/-! ## A305860.P16728179598764716344

`A349259(abs(or(n+1, 1-a(n-1))))` with `a(0)=1`
-/

namespace A305860.P16728179598764716344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349259 |Int.lor (n + 1 : ℤ) (1 - a (n - 1))|.toNat

end

end A305860.P16728179598764716344

/-! ## A305860.P15660151791389003481

`A112798((2^n+1)²-xor(n, floor(n/2)))`
-/

namespace A305860.P15660151791389003481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (((2 ^ n + 1) ^ 2 : ℤ) - Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A305860.P15660151791389003481

/-! ## A305860.P15631405703854890722

`A366027(A328821(n))`
-/

namespace A305860.P15631405703854890722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366027 (A328821 n).toNat

end

end A305860.P15631405703854890722

/-!
# A305861: a(n) = 32*3^n - 2^(n+5) + 5.

The programs for A305861, the canonical program `A305861.P5856555801838127674` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305861 has offset 0).

The definition of A305861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*3^n-2^(n+5)+5` (program `A305861.P5856555801838127674`, by `A305861.P5856555801838127674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305861.P5856555801838127674

`32*3^n-2^(n+5)+5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305861

/-- `32*3^n-2^(n+5)+5` -/
def P5856555801838127674.Spec : Prop :=
  ∀ n, P5856555801838127674.a n = A305861 n

theorem P5856555801838127674.correct : P5856555801838127674.Spec := by
  intro n
  simp only [A305861]

end A305861

/-! ## A305861.P6725484794940868469

`∑[ogf((5+7x-2x^2)/(1-5x+6x^2))]`
-/

namespace A305861.P6725484794940868469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 7, -2] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305861.P6725484794940868469

namespace A305861

/-- `∑[ogf((5+7x-2x^2)/(1-5x+6x^2))]` -/
def P6725484794940868469.Spec : Prop :=
  ∀ n, P6725484794940868469.a n = A305861 n

end A305861

/-! ## A305861.P9265122998793502784

`or(5, 8*4*(3^n-2^n))`
-/

namespace A305861.P9265122998793502784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (8 * (4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ))))

end

end A305861.P9265122998793502784

namespace A305861

/-- `or(5, 8*4*(3^n-2^n))` -/
def P9265122998793502784.Spec : Prop :=
  ∀ n, P9265122998793502784.a n = A305861 n

end A305861

/-! ## A305861.P12163514494960300794

`xor(5, 16*A056182(n))`
-/

namespace A305861.P12163514494960300794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (16 * A056182 n)

end

end A305861.P12163514494960300794

namespace A305861

/-- `xor(5, 16*A056182(n))` -/
def P12163514494960300794.Spec : Prop :=
  ∀ n, P12163514494960300794.a n = A305861 n

end A305861

/-! ## A305861.P12970258523593110859

`xor(5, 32*A001047(n))`
-/

namespace A305861.P12970258523593110859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (32 * A001047 n)

end

end A305861.P12970258523593110859

namespace A305861

/-- `xor(5, 32*A001047(n))` -/
def P12970258523593110859.Spec : Prop :=
  ∀ n, P12970258523593110859.a n = A305861 n

end A305861

/-!
# A305862: a(n) = 384*4^n - 576*3^n + 220*2^n - 14.

The programs for A305862, the canonical program `A305862.P4227547686534265220` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305862 has offset 0).

The definition of A305862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `384*4^n-576*3^n+220*2^n-14` (program `A305862.P4227547686534265220`, by `A305862.P4227547686534265220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305862.P4227547686534265220

`384*4^n-576*3^n+220*2^n-14`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305862

/-- `384*4^n-576*3^n+220*2^n-14` -/
def P4227547686534265220.Spec : Prop :=
  ∀ n, P4227547686534265220.a n = A305862 n

theorem P4227547686534265220.correct : P4227547686534265220.Spec := by
  intro n
  simp only [A305862]

end A305862

/-! ## A305862.P11529261850640521940

`A345394(∑[abs(1-n)+5])`
-/

namespace A305862.P11529261850640521940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305862.P11529261850640521940

namespace A305862

/-- `A345394(∑[abs(1-n)+5])` -/
def P11529261850640521940.Spec : Prop :=
  ∀ n, P11529261850640521940.a n = A305862 n

end A305862

/-!
# A305863: a(n) = 6144*5^n - 12288*4^n + 7616*3^n - 1472*2^n + 41.

The programs for A305863, there is no canonical definition to state claims against.
-/

/-! ## A305863.P5270986030756882246

`A345394(∑[n+5]+5)`
-/

namespace A305863.P5270986030756882246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345394 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A305863.P5270986030756882246

/-! ## A305863.P13811656418841578938

`or(1, A345394(A052905(n+2)))`
-/

namespace A305863.P13811656418841578938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A345394 (A052905 (n + 2)).toNat)

end

end A305863.P13811656418841578938

/-!
# A305864: Numbers k such that -3 is a quadratic residue (not necessarily coprime) modulo k, k + 1 and k + 2.

The programs for A305864, there is no canonical definition to state claims against.
-/

/-! ## A305864.P12229766236919143714

`∑[A331297(comp[or(2, n)]!)]`
-/

namespace A305864.P12229766236919143714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331297 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305864.P12229766236919143714

/-!
# A305866: a(n) is the number of primes that are equal to prime(n)+q+1, where prime(n) is the n-th prime number, q is a prime less than or equal to prime(n).

The programs for A305866, there is no canonical definition to state claims against.
-/

/-! ## A305866.P3115011465082966989

`A202472(A130291(n+1))`
-/

namespace A305866.P3115011465082966989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 (A130291 (n + 1)).toNat

end

end A305866.P3115011465082966989

/-! ## A305866.P6719497198844204770

`A202472(A130290(n+1)+1)`
-/

namespace A305866.P6719497198844204770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 (A130290 (n + 1) + 1).toNat

end

end A305866.P6719497198844204770

/-! ## A305866.P539488578451993564

`A092953(A008864(n+1))`
-/

namespace A305866.P539488578451993564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A008864 (n + 1)).toNat

end

end A305866.P539488578451993564

/-! ## A305866.P14267990834859909370

`A092953(A028815(n+1))`
-/

namespace A305866.P14267990834859909370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A028815 (n + 1)).toNat

end

end A305866.P14267990834859909370

/-! ## A305866.P12890559021435208117

`A092953(A175216(n+1))`
-/

namespace A305866.P12890559021435208117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A175216 (n + 1)).toNat

end

end A305866.P12890559021435208117

/-! ## A305866.P18215687761040332187

`A092953(A299763(n+2))`
-/

namespace A305866.P18215687761040332187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A299763 (n + 2)).toNat

end

end A305866.P18215687761040332187

/-! ## A305866.P1096239044826487424

`A092953(A000040(n+1)+1)`
-/

namespace A305866.P1096239044826487424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A000040 (n + 1) + 1).toNat

end

end A305866.P1096239044826487424

/-! ## A305866.P13690803472311640125

`A092953(A006093(n+1)+2)`
-/

namespace A305866.P13690803472311640125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A006093 (n + 1) + 2).toNat

end

end A305866.P13690803472311640125

/-! ## A305866.P10511338970806540049

`A092953(A008578(n+2)+1)`
-/

namespace A305866.P10511338970806540049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A008578 (n + 2) + 1).toNat

end

end A305866.P10511338970806540049

/-! ## A305866.P12031501385967927597

`A092953(A052147(n+1)-1)`
-/

namespace A305866.P12031501385967927597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A052147 (n + 1) - 1).toNat

end

end A305866.P12031501385967927597

/-! ## A305866.P12834544537815871042

`A092953(A156037(n+1)+2)`
-/

namespace A305866.P12834544537815871042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A156037 (n + 1) + 2).toNat

end

end A305866.P12834544537815871042

/-! ## A305866.P3583121489024593102

`A092953(A040976(n+1)+3)`
-/

namespace A305866.P3583121489024593102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A040976 (n + 1) + 3).toNat

end

end A305866.P3583121489024593102

/-! ## A305866.P15864181934816734759

`A092953(record[A000010(n+1)+2])`
-/

namespace A305866.P15864181934816734759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A305866.P15864181934816734759

/-! ## A305866.P1578028455169105032

`A092953(record[A006530(n+2)+1])`
-/

namespace A305866.P1578028455169105032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A305866.P1578028455169105032

/-! ## A305866.P10141585513041936155

`A092953(record[A014963(n+2)+1])`
-/

namespace A305866.P10141585513041936155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A305866.P10141585513041936155

/-! ## A305866.P4727200175180365172

`A092953(record[A020639(n+2)+1])`
-/

namespace A305866.P4727200175180365172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A305866.P4727200175180365172

/-! ## A305866.P13434625767309645573

`A092953((A072055(n+1)+1)/2)`
-/

namespace A305866.P13434625767309645573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (SequenceMachineLib.roundAway ((A072055 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A305866.P13434625767309645573

/-! ## A305866.P2139838146739063246

`A092953(eq[2, A000005(n+1)]+2)`
-/

namespace A305866.P2139838146739063246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A305866.P2139838146739063246

/-! ## A305866.P16322698059440799384

`A092953(A014692(n+1)+1+n)`
-/

namespace A305866.P16322698059440799384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A014692 (n + 1) + 1 + (n : ℤ)).toNat

end

end A305866.P16322698059440799384

/-! ## A305866.P5185841632757049372

`A092953(A014689(n+1)+2+n)`
-/

namespace A305866.P5185841632757049372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A014689 (n + 1) + 2 + (n : ℤ)).toNat

end

end A305866.P5185841632757049372

/-!
# A305867: Expansion of Product_{k>=1} 1/(1 - x^k)^(2*k-1)!!.

The programs for A305867, there is no canonical definition to state claims against.
-/

/-! ## A305867.P2339039743899113799

`A050292(∑[A241828(n²)])`
-/

namespace A305867.P2339039743899113799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241828 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305867.P2339039743899113799

/-!
# A305868: Product_{n>=1} 1/(1 - x^n)^a(n) = g.f. of A001147 (double factorial of odd numbers).

The programs for A305868, there is no canonical definition to state claims against.
-/

/-! ## A305868.P12582232937806967478

`∑{d}[n+1, A154955(#)*A305870((n+1)/#)]`
-/

namespace A305868.P12582232937806967478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A305870 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305868.P12582232937806967478

/-! ## A305868.P13282485323288404092

`∑{d}[n+1, A240350(#-1)*A305870((n+1)/#)]`
-/

namespace A305868.P13282485323288404092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240350 (d - 1) * A305870 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305868.P13282485323288404092

/-! ## A305868.P17789466679850869919

`∑{d}[n+1, A240352(#-1)*A305870((n+1)/#)]`
-/

namespace A305868.P17789466679850869919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240352 (d - 1) * A305870 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305868.P17789466679850869919

/-! ## A305868.P6628000278394850111

`∑{d}[n+1, A240354(#-1)*A305870((n+1)/#)]`
-/

namespace A305868.P6628000278394850111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240354 (d - 1) * A305870 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305868.P6628000278394850111

/-! ## A305868.P12163717373477374955

`∑{d}[n+1, A240356(#-1)*A305870((n+1)/#)]`
-/

namespace A305868.P12163717373477374955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240356 (d - 1) * A305870 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305868.P12163717373477374955

/-!
# A305869: Expansion of Product_{k>=1} (1 + x^k)^(2*k-1)!!.

The programs for A305869, there is no canonical definition to state claims against.
-/

/-! ## A305869.P7684358517612991506

`A001068(∑[xor(1, A023037(n))])`
-/

namespace A305869.P7684358517612991506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A023037 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305869.P7684358517612991506

/-! ## A305869.P5160318856825161315

`A032742(3*A067111(n+1))`
-/

namespace A305869.P5160318856825161315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (3 * A067111 (n + 1)).toNat

end

end A305869.P5160318856825161315

/-!
# A305870: Product_{n>=1} (1 + x^n)^a(n) = g.f. of A001147 (double factorial of odd numbers).

The programs for A305870, there is no canonical definition to state claims against.
-/

/-! ## A305870.P11557258795787611466

`∑{d}[n+1, A036987(#-1)*A305868((n+1)/#)]`
-/

namespace A305870.P11557258795787611466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A305868 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305870.P11557258795787611466

/-!
# A305871: -1 + Product_{n>=1} (1 + x^n)^a(n) = g.f. of A000040 (prime numbers).

The programs for A305871, there is no canonical definition to state claims against.
-/

/-! ## A305871.P8584807035129415908

`∑{d}[n+1, A030010(#)*A036987((n+1)/#-1)]`
-/

namespace A305871.P8584807035129415908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030010 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A305871.P8584807035129415908

/-!
# A305875: a(n) is the maximum number m such that 2n = prime(i+k) + prime(j-k), k=1,2,...,m, where i and j are a pair of numbers such that 2n = prime(i+1) + prime(j+1).

The programs for A305875, there is no canonical definition to state claims against.
-/

/-! ## A305875.P2987178881333042392

`A300820(A362641(n+2))`
-/

namespace A305875.P2987178881333042392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (A362641 (n + 2)).toNat

end

end A305875.P2987178881333042392

/-! ## A305875.P13426721399783419950

`A090996(∑[A106532(A344867(n+1))])`
-/

namespace A305875.P13426721399783419950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106532 (A344867 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305875.P13426721399783419950

/-! ## A305875.P13753512692234223102

`gcd(A236855(A341143(3*(n+1))), A236855(n))`
-/

namespace A305875.P13753512692234223102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236855 (A341143 (3 * (n + 1) + 22)).toNat) (A236855 n)

end

end A305875.P13753512692234223102

/-! ## A305875.P5672187085054553570

`A241911(A127072(3*n+1)+A079704(n+1))`
-/

namespace A305875.P5672187085054553570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241911 (A127072 (3 * n + 1) + A079704 (n + 1)).toNat

end

end A305875.P5672187085054553570

/-! ## A305875.P1123049131731803876

`A325615(A002865(n)+n*n%2)`
-/

namespace A305875.P1123049131731803876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325615 (A002865 n + ((n * (n % 2) : ℕ) : ℤ)).toNat

end

end A305875.P1123049131731803876

/-!
# A305876: a(n) = Fibbinary(2^n).

The programs for A305876, the canonical program `A305876.P10182350532949549985` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305876 has offset 0).

The definition of A305876 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305876.P10182350532949549985

`A003714(2^n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A305876

/-- `A003714(2^n)` -/
def P10182350532949549985.Spec : Prop :=
  ∀ n, P10182350532949549985.a n = A305876 n

theorem P10182350532949549985.correct : P10182350532949549985.Spec := by
  intro n
  simp only [A305876]

end A305876

/-! ## A305876.P7818132450850109375

`A277335(2^n)/3`
-/

namespace A305876.P7818132450850109375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277335 (2 ^ n) : ℚ) / 3

end

end A305876.P7818132450850109375

namespace A305876

/-- `A277335(2^n)/3` -/
def P7818132450850109375.Spec : Prop :=
  ∀ n, P7818132450850109375.a n = (A305876 n : ℚ)

theorem P7818132450850109375.correct : P7818132450850109375.Spec := by
  intro n
  simp only [A305876, Nat.add_sub_cancel, A305876.P7818132450850109375.a, A305876.P10182350532949549985.a, A003714, A003714.P565032106299634425.a, A277335, A277335.P13601565206693033398.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, A002251, A002251.P8899938186717577679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A305876

/-! ## A305876.P1088921637819311891

`floor(A277335(A000079(n))/3)`
-/

namespace A305876.P1088921637819311891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277335 (A000079 n).toNat : ℚ) / 3⌋

end

end A305876.P1088921637819311891

namespace A305876

/-- `floor(A277335(A000079(n))/3)` -/
def P1088921637819311891.Spec : Prop :=
  ∀ n, P1088921637819311891.a n = A305876 n

end A305876

/-! ## A305876.P10477566935968465754

`A318715(2*(n+1))+A277335(A000079(n))/3`
-/

namespace A305876.P10477566935968465754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318715 (2 * (n + 1)) : ℚ) + (A277335 (A000079 n).toNat : ℚ) / 3

end

end A305876.P10477566935968465754

namespace A305876

/-- `A318715(2*(n+1))+A277335(A000079(n))/3` -/
def P10477566935968465754.Spec : Prop :=
  ∀ n, P10477566935968465754.a n = (A305876 n : ℚ)

end A305876

/-! ## A305876.P8567536164238341117

`A000038(A028330(n))+A277335(A016116(2*n))/3`
-/

namespace A305876.P8567536164238341117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A028330 n).toNat : ℚ) + (A277335 (A016116 (2 * n)).toNat : ℚ) / 3

end

end A305876.P8567536164238341117

namespace A305876

/-- `A000038(A028330(n))+A277335(A016116(2*n))/3` -/
def P8567536164238341117.Spec : Prop :=
  ∀ n, P8567536164238341117.a n = (A305876 n : ℚ)

end A305876

/-!
# A305877: Numbers in base 3 reversed.

The programs for A305877, there is no canonical definition to state claims against.
-/

/-! ## A305877.P17600873253557758135

`A004086(A007089(n))`
-/

namespace A305877.P17600873253557758135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007089 n).toNat

end

end A305877.P17600873253557758135

/-! ## A305877.P16133314515915371732

`A007089(A030102(n))`
-/

namespace A305877.P16133314515915371732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A030102 n).toNat

end

end A305877.P16133314515915371732

/-! ## A305877.P17389058373839139543

`A007089(n-A055947(n))`
-/

namespace A305877.P17389058373839139543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ((n : ℤ) - A055947 n).toNat

end

end A305877.P17389058373839139543

/-! ## A305877.P14554699790780170999

`A007089(A055946(n)-n)`
-/

namespace A305877.P14554699790780170999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A055946 n - (n : ℤ)).toNat

end

end A305877.P14554699790780170999

/-! ## A305877.P14459649679534356952

`A007089(A137305(n)-A327252(n))`
-/

namespace A305877.P14459649679534356952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A137305 n - A327252 n).toNat

end

end A305877.P14459649679534356952

/-! ## A305877.P10290328515869718434

`A007089(A171960(n)+n-A284797(n))`
-/

namespace A305877.P10290328515869718434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A171960 n + ((n : ℤ) - A284797 n)).toNat

end

end A305877.P10290328515869718434

/-! ## A305877.P1926984252737817585

`A007089(n-(A284797(n)-A171960(n)))`
-/

namespace A305877.P1926984252737817585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ((n : ℤ) - (A284797 n - A171960 n)).toNat

end

end A305877.P1926984252737817585

/-!
# A305878: For any number n >= 0: apply the map 0 -> "0", 1 -> "01", 2 -> "011" to the ternary representation of n and interpret the result as a binary string.

The programs for A305878, there is no canonical definition to state claims against.
-/

/-! ## A305878.P6218659858510185154

`A305493(A007089(n))`
-/

namespace A305878.P6218659858510185154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305493 (A007089 n).toNat

end

end A305878.P6218659858510185154

/-! ## A305878.P10877545663932015183

`A305493(A343810(n)/4)`
-/

namespace A305878.P10877545663932015183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305493 (SequenceMachineLib.roundAway ((A343810 n : ℚ) / 4)).toNat

end

end A305878.P10877545663932015183

/-! ## A305878.P9470187532969010361

`A365279(A362089(n))`
-/

namespace A305878.P9470187532969010361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365279 (A362089 n).toNat

end

end A305878.P9470187532969010361

/-! ## A305878.P14633850046384204114

`A156552(A101278(n))`
-/

namespace A305878.P14633850046384204114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A101278 n).toNat

end

end A305878.P14633850046384204114

/-! ## A305878.P13800269882073818330

`A332816(A101278(n))%A000124(n)`
-/

namespace A305878.P13800269882073818330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332816 (A101278 n).toNat) (A000124 n)

end

end A305878.P13800269882073818330

/-! ## A305878.P1316169177035574010

`A332816(A101278(n))+A000038((n+1)²)`
-/

namespace A305878.P1316169177035574010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (A101278 n).toNat + A000038 ((n + 1) ^ 2)

end

end A305878.P1316169177035574010

/-! ## A305878.P10292994051405177267

`A332816(A101278(n))+A008683(4*(n+1))`
-/

namespace A305878.P10292994051405177267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (A101278 n).toNat + A008683 (4 * (n + 1))

end

end A305878.P10292994051405177267

/-! ## A305878.P17859746028715363624

`(n+1-A007318(∑[n]+1))*A332816(A101278(n))`
-/

namespace A305878.P17859746028715363624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) * A332816 (A101278 n).toNat

end

end A305878.P17859746028715363624

/-!
# A305880: A base 3/2 reverse sorted Fibonacci sequence that starts with terms 2211 and 2211. The terms are interpreted as numbers written in base 3/2. To get a(n+2), add a(n) and a(n+1), write the result in base 3/2 and sort the digits into decreasing order, omitting all zeros.

The programs for A305880, the canonical program `A305880.P16964776846539863070` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305880 has offset 1).

The definition of A305880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305880.P16964776846539863070

`or(3, A322925(n+7)-13)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A305880

/-- `or(3, A322925(n+7)-13)` -/
def P16964776846539863070.Spec : Prop :=
  ∀ n, P16964776846539863070.a n = A305880 (n + 1)

theorem P16964776846539863070.correct : P16964776846539863070.Spec := by
  intro n
  simp only [A305880, Nat.add_sub_cancel]

end A305880

/-! ## A305880.P326154810374775043

`p?[A036584(n)]+A322925(n+7)-13`
-/

namespace A305880.P326154810374775043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (A322925 (n + 7) - 13)

end

end A305880.P326154810374775043

namespace A305880

/-- `p?[A036584(n)]+A322925(n+7)-13` -/
def P326154810374775043.Spec : Prop :=
  ∀ n, P326154810374775043.a n = A305880 (n + 1)

end A305880

/-! ## A305880.P16060624913558788696

`xor(4, A322925(n+7)-13)-A000034(n)`
-/

namespace A305880.P16060624913558788696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A322925 (n + 7) - 13) - A000034 n

end

end A305880.P16060624913558788696

namespace A305880

/-- `xor(4, A322925(n+7)-13)-A000034(n)` -/
def P16060624913558788696.Spec : Prop :=
  ∀ n, P16060624913558788696.a n = A305880 (n + 1)

end A305880

/-! ## A305880.P16524965815533001448

`A020639(3*(n+1))+A322925(n+7)-13`
-/

namespace A305880.P16524965815533001448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 1)) + (A322925 (n + 7) - 13)

end

end A305880.P16524965815533001448

namespace A305880

/-- `A020639(3*(n+1))+A322925(n+7)-13` -/
def P16524965815533001448.Spec : Prop :=
  ∀ n, P16524965815533001448.a n = A305880 (n + 1)

end A305880

/-! ## A305880.P17423658352352145767

`A071044(A006519(n+1))+A322925(n+7)-13`
-/

namespace A305880.P17423658352352145767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A006519 (n + 1)).toNat + (A322925 (n + 7) - 13)

end

end A305880.P17423658352352145767

namespace A305880

/-- `A071044(A006519(n+1))+A322925(n+7)-13` -/
def P17423658352352145767.Spec : Prop :=
  ∀ n, P17423658352352145767.a n = A305880 (n + 1)

end A305880

/-!
# A305884: Lexicographically first sequence of positive squares, no two or more of which sum to a square.

The programs for A305884, there is no canonical definition to state claims against.
-/

/-! ## A305884.P16935829418961241112

`A301314(A002135(n))²`
-/

namespace A305884.P16935829418961241112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301314 (A002135 n).toNat ^ 2

end

end A305884.P16935829418961241112

/-! ## A305884.P13913340765467856770

`A219237(∑[A051147(n)])²`
-/

namespace A305884.P13913340765467856770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A305884.P13913340765467856770

/-! ## A305884.P9818140076685128759

`A339811(∏[A129017(n)])²`
-/

namespace A305884.P9818140076685128759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339811 (∏ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A305884.P9818140076685128759

/-! ## A305884.P12940360434103328394

`A133819(Δ[p?[A099559(n)]])`
-/

namespace A305884.P12940360434103328394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (f1 (n + 1) - f1 n).toNat

end

end A305884.P12940360434103328394

/-!
# A305885: Zeroless composite numbers which become and remain prime under a complete cyclic shift of digits.

The programs for A305885, there is no canonical definition to state claims against.
-/

/-! ## A305885.P6945790231606806199

`∩[A068653(n+1), A287513(n+1)]`
-/

namespace A305885.P6945790231606806199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305885.P6945790231606806199

/-! ## A305885.P2419965885361629568

`∩[A068653(n+1), A383246(n+1)]`
-/

namespace A305885.P2419965885361629568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305885.P2419965885361629568

/-! ## A305885.P13853872206950661547

`∩[A068653(n+1), A248499(n+1)]`
-/

namespace A305885.P13853872206950661547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305885.P13853872206950661547

/-! ## A305885.P14014163686882164320

`record[A004086(A004086(A068653(n+1)))]`
-/

namespace A305885.P14014163686882164320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A068653 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305885.P14014163686882164320

/-! ## A305885.P5083887892955776928

`record[A004151(A068653(n+1))]`
-/

namespace A305885.P5083887892955776928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A068653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305885.P5083887892955776928

/-! ## A305885.P13321675782174069145

`filter[A068653(n+1), A168046(#)]`
-/

namespace A305885.P13321675782174069145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A305885.P13321675782174069145

/-! ## A305885.P5086826857380628490

`filter[A068653(n+1), A168184(#)]`
-/

namespace A305885.P5086826857380628490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A305885.P5086826857380628490

/-! ## A305885.P5400863619482558333

`∩[A052382(n+1), A068653(n+1)]`
-/

namespace A305885.P5400863619482558333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305885.P5400863619482558333

/-! ## A305885.P461584597282877260

`∩[A067251(n+1), A068653(n+1)]`
-/

namespace A305885.P461584597282877260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305885.P461584597282877260

/-! ## A305885.P12366544091823871915

`∩[A068653(n+1), A125290(n+1)]`
-/

namespace A305885.P12366544091823871915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305885.P12366544091823871915

/-!
# A305887: The least increasing sequence of numbers where all pairwise sums are semiprimes, with a(1)=4.

The programs for A305887, there is no canonical definition to state claims against.
-/

/-! ## A305887.P7378973698320465678

`A278637(A162092(n+1))`
-/

namespace A305887.P7378973698320465678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278637 (A162092 (n + 1)).toNat

end

end A305887.P7378973698320465678

/-!
# A305889: a(n) = 3*a(n-2) + a(n-4), a(0)=a(1)=0, a(2)=1, a(3)=2.

The programs for A305889, the canonical program `A305889.P11568633504903886497` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305889 has offset 0).

The definition of A305889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)+a(n-4)` (program `A305889.P11568633504903886497`, by `A305889.P11568633504903886497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305889.P11568633504903886497

`3*a(n-2)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305889

/-- `3*a(n-2)+a(n-4)` -/
def P11568633504903886497.Spec : Prop :=
  ∀ n, (P11568633504903886497.a n : ℤ) = A305889 n

theorem P11568633504903886497.correct : P11568633504903886497.Spec := by
  intro n
  simp only [A305889]

end A305889

/-! ## A305889.P10378916898698924718

`ogf((x^2+2x^3)/(1-3x^2-x^4))`
-/

namespace A305889.P10378916898698924718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2] [1, 0, -3, 0, -1] n

end

end A305889.P10378916898698924718

namespace A305889

/-- `ogf((x^2+2x^3)/(1-3x^2-x^4))` -/
def P10378916898698924718.Spec : Prop :=
  ∀ n, P10378916898698924718.a n = A305889 n

end A305889

/-! ## A305889.P11910171688424599945

`a(n-2)+a(n-2)+a(n-2)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A305889.P11910171688424599945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 4)))

end

end A305889.P11910171688424599945

namespace A305889

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-4)` -/
def P11910171688424599945.Spec : Prop :=
  ∀ n, (P11910171688424599945.a n : ℤ) = A305889 n

theorem P11910171688424599945.correct : P11910171688424599945.Spec := by
  intro n
  simp only [A305889, Nat.add_sub_cancel, A305889.P11910171688424599945.a, A305889.P11568633504903886497.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A305889

/-! ## A305889.P5030378886412096016

`A000034(n)*A006190(A004526(n))`
-/

namespace A305889.P5030378886412096016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A006190 (A004526 n).toNat

end

end A305889.P5030378886412096016

namespace A305889

/-- `A000034(n)*A006190(A004526(n))` -/
def P5030378886412096016.Spec : Prop :=
  ∀ n, P5030378886412096016.a n = A305889 n

end A305889

/-! ## A305889.P1771908903922098404

`Δ[A249579(A042948(n)+1)]`
-/

namespace A305889.P1771908903922098404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A042948 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305889.P1771908903922098404

namespace A305889

/-- `Δ[A249579(A042948(n)+1)]` -/
def P1771908903922098404.Spec : Prop :=
  ∀ n, P1771908903922098404.a n = A305889 n

end A305889

/-! ## A305889.P10813281966963344764

`Δ[A249579(A042963(n+1))]`
-/

namespace A305889.P10813281966963344764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A042963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305889.P10813281966963344764

namespace A305889

/-- `Δ[A249579(A042963(n+1))]` -/
def P10813281966963344764.Spec : Prop :=
  ∀ n, P10813281966963344764.a n = A305889 n

end A305889

/-! ## A305889.P15502908982841181246

`Δ[A249579(A109613(n)+n)]`
-/

namespace A305889.P15502908982841181246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A109613 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305889.P15502908982841181246

namespace A305889

/-- `Δ[A249579(A109613(n)+n)]` -/
def P15502908982841181246.Spec : Prop :=
  ∀ n, P15502908982841181246.a n = A305889 n

end A305889

/-! ## A305889.P17205445661673199681

`Δ[A249579(Δ[A000982(n)]+n)]`
-/

namespace A305889.P17205445661673199681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305889.P17205445661673199681

namespace A305889

/-- `Δ[A249579(Δ[A000982(n)]+n)]` -/
def P17205445661673199681.Spec : Prop :=
  ∀ n, P17205445661673199681.a n = A305889 n

end A305889

/-! ## A305889.P18436941580145285125

`Δ[A249579(comp[A007310(n+1)-(n+1)])]`
-/

namespace A305889.P18436941580145285125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305889.P18436941580145285125

namespace A305889

/-- `Δ[A249579(comp[A007310(n+1)-(n+1)])]` -/
def P18436941580145285125.Spec : Prop :=
  ∀ n, P18436941580145285125.a n = A305889 n

end A305889

/-!
# A305891: Filter sequence combining 2-adic valuation (A007814) and the prime signature (A046523) of n.

The programs for A305891, there is no canonical definition to state claims against.
-/

/-! ## A305891.P5752532036712089490

`A079616(2*(n+1))%∑[A175520(n+1)]`
-/

namespace A305891.P5752532036712089490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079616 (2 * (n + 1))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305891.P5752532036712089490

/-! ## A305891.P1973080241781637051

`A079616(A005843(n+1))%A002189(n)`
-/

namespace A305891.P1973080241781637051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079616 (A005843 (n + 1)).toNat) (A002189 n)

end

end A305891.P1973080241781637051

/-! ## A305891.P5073048290033749635

`A079616(A004275(n+2))%A002189(n)`
-/

namespace A305891.P5073048290033749635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079616 (A004275 (n + 2)).toNat) (A002189 n)

end

end A305891.P5073048290033749635

/-! ## A305891.P15447262516552130584

`A077462(2*n+2)-A001055(A070866(n+1))`
-/

namespace A305891.P15447262516552130584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (2 * n + 2) - A001055 (A070866 (n + 1)).toNat

end

end A305891.P15447262516552130584

/-! ## A305891.P12524321732547244309

`A101637(A154105(n))+A079616(A004275(n+2))`
-/

namespace A305891.P12524321732547244309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A154105 n).toNat + A079616 (A004275 (n + 2)).toNat

end

end A305891.P12524321732547244309

/-! ## A305891.P14561723158647856483

`A077462(2*(n+1))-A000688(A281875(3*n+2))`
-/

namespace A305891.P14561723158647856483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (2 * (n + 1)) - A000688 (A281875 (3 * n + 2)).toNat

end

end A305891.P14561723158647856483

/-! ## A305891.P490968030503746229

`A079616(A004275(n+2))+A000038(A002082(n))`
-/

namespace A305891.P490968030503746229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079616 (A004275 (n + 2)).toNat + A000038 (A002082 n).toNat

end

end A305891.P490968030503746229

/-!
# A305892: a(n) = 1 if n is composite and the n-th Stern polynomial B(n,x) is irreducible, 0 otherwise.

The programs for A305892, there is no canonical definition to state claims against.
-/

/-! ## A305892.P18211173413710337155

`(1-A010051(n+1))*A283991(n+1)`
-/

namespace A305892.P18211173413710337155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A283991 (n + 1)

end

end A305892.P18211173413710337155

/-! ## A305892.P11786419408172633025

`char[A186892(n+2)-1]`
-/

namespace A305892.P11786419408172633025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186892 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305892.P11786419408172633025

/-! ## A305892.P3394887477036623626

`A283991(n*floor(atan(∑{e}[n+1, #]))+1)`
-/

namespace A305892.P3394887477036623626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 ((n : ℤ) * ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌋ + 1).toNat

end

end A305892.P3394887477036623626

/-! ## A305892.P11607511542063661591

`A283991(n+1)-A010051(n+1)`
-/

namespace A305892.P11607511542063661591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1) - A010051 (n + 1)

end

end A305892.P11607511542063661591

/-! ## A305892.P16122520884141003408

`A283991(Δ[A065357(n)/2]+n+1)`
-/

namespace A305892.P16122520884141003408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065357 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n + (n : ℚ) + 1)).toNat

end

end A305892.P16122520884141003408

/-! ## A305892.P16216594037057784532

`A283991(7*A010051(n+1)+n+1)`
-/

namespace A305892.P16216594037057784532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (7 * A010051 (n + 1) + (n : ℤ) + 1).toNat

end

end A305892.P16216594037057784532

/-! ## A305892.P11992640136275055626

`A010051(A284011(n+1)-A010051(n+1))`
-/

namespace A305892.P11992640136275055626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A284011 (n + 1) - A010051 (n + 1)).toNat

end

end A305892.P11992640136275055626

/-! ## A305892.P11972449196564202062

`and(A255167(A061142(n+1)), A283991(n+1))`
-/

namespace A305892.P11972449196564202062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255167 (A061142 (n + 1)).toNat) (A283991 (n + 1))

end

end A305892.P11972449196564202062

/-! ## A305892.P1372355975299138604

`A236966(A001222(n+1)*A283991(n+1)+1)`
-/

namespace A305892.P1372355975299138604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236966 (A001222 (n + 1) * A283991 (n + 1) + 1).toNat

end

end A305892.P1372355975299138604

/-! ## A305892.P17880281847035054117

`A087624(n+1)+A283991(n+1)-A001221(n+1)`
-/

namespace A305892.P17880281847035054117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1) + (A283991 (n + 1) - A001221 (n + 1))

end

end A305892.P17880281847035054117

/-! ## A305892.P6832983937243511134

`char[lt[A049084(n+1), A283991(n+1)]]`
-/

namespace A305892.P6832983937243511134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A305892.P6832983937243511134

/-! ## A305892.P14635847012084871431

`A283991(n+1)-char[A000010(A014963(n+1))]`
-/

namespace A305892.P14635847012084871431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305892.P14635847012084871431

/-!
# A305895: 

The programs for A305895, there is no canonical definition to state claims against.
-/

/-! ## A305895.P4027118665224062833

`A295885(n+1)+A057427(n)`
-/

namespace A305895.P4027118665224062833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295885 (n + 1) + A057427 n

end

end A305895.P4027118665224062833

/-! ## A305895.P4621487366160125551

`A295885(n+1)-A057428(n)`
-/

namespace A305895.P4621487366160125551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295885 (n + 1) - A057428 n

end

end A305895.P4621487366160125551

/-! ## A305895.P8406552126428595666

`(A295885(n+1)+1)/A054977(n)`
-/

namespace A305895.P8406552126428595666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295885 (n + 1) + 1 : ℚ) / (A054977 n : ℚ)

end

end A305895.P8406552126428595666

/-! ## A305895.P14553116348685758861

`A295885(n+1)+A000040(n+1)%2`
-/

namespace A305895.P14553116348685758861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295885 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A305895.P14553116348685758861

/-! ## A305895.P8261094313078672811

`A295885(n+1)+A185114(A002035(2*(n+1)))`
-/

namespace A305895.P8261094313078672811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295885 (n + 1) + A185114 (A002035 (2 * (n + 1))).toNat

end

end A305895.P8261094313078672811

/-!
# A305897: Lexicographically earliest infinite sequence such that a(i) = a(j) => A348717(i) = A348717(j), for all i, j >= 1.

The programs for A305897, the canonical program `A305897.P2914309574936022193` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305897 has offset 1).

The definition of A305897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305897.P2914309574936022193

`A246277(n+1)+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A305897

/-- `A246277(n+1)+1` -/
def P2914309574936022193.Spec : Prop :=
  ∀ n, P2914309574936022193.a n = A305897 (n + 1)

theorem P2914309574936022193.correct : P2914309574936022193.Spec := by
  intro n
  simp only [A305897, Nat.add_sub_cancel]

end A305897

/-! ## A305897.P14170552640899249480

`floor(A348717(n+1)/2)+1`
-/

namespace A305897.P14170552640899249480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348717 (n + 1) : ℚ) / 2⌋ + 1

end

end A305897.P14170552640899249480

namespace A305897

/-- `floor(A348717(n+1)/2)+1` -/
def P14170552640899249480.Spec : Prop :=
  ∀ n, P14170552640899249480.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P13957372436147989636

`A008619(A348717(n+1))`
-/

namespace A305897.P13957372436147989636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A348717 (n + 1)).toNat

end

end A305897.P13957372436147989636

namespace A305897

/-- `A008619(A348717(n+1))` -/
def P13957372436147989636.Spec : Prop :=
  ∀ n, P13957372436147989636.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P2114198330081669333

`A175126(A348717(n+1)+2)`
-/

namespace A305897.P2114198330081669333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A348717 (n + 1) + 2).toNat

end

end A305897.P2114198330081669333

namespace A305897

/-- `A175126(A348717(n+1)+2)` -/
def P2114198330081669333.Spec : Prop :=
  ∀ n, P2114198330081669333.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P4149727660244390198

`A260439(A348717(n+1)+2)`
-/

namespace A305897.P4149727660244390198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A348717 (n + 1) + 2).toNat

end

end A305897.P4149727660244390198

namespace A305897

/-- `A260439(A348717(n+1)+2)` -/
def P4149727660244390198.Spec : Prop :=
  ∀ n, P4149727660244390198.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P10869883862765603448

`A302042(A348717(n+1)+2)`
-/

namespace A305897.P10869883862765603448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A348717 (n + 1) + 2).toNat

end

end A305897.P10869883862765603448

namespace A305897

/-- `A302042(A348717(n+1)+2)` -/
def P10869883862765603448.Spec : Prop :=
  ∀ n, P10869883862765603448.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P14260291767756662080

`A003602(A348717(n+1)+1)`
-/

namespace A305897.P14260291767756662080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A348717 (n + 1) + 1).toNat

end

end A305897.P14260291767756662080

namespace A305897

/-- `A003602(A348717(n+1)+1)` -/
def P14260291767756662080.Spec : Prop :=
  ∀ n, P14260291767756662080.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P18186305159728731700

`A110654(A348717(n+1)+1)`
-/

namespace A305897.P18186305159728731700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A348717 (n + 1) + 1).toNat

end

end A305897.P18186305159728731700

namespace A305897

/-- `A110654(A348717(n+1)+1)` -/
def P18186305159728731700.Spec : Prop :=
  ∀ n, P18186305159728731700.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P1618015845573981408

`A004525(A348717(n+1)+2)`
-/

namespace A305897.P1618015845573981408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A348717 (n + 1) + 2).toNat

end

end A305897.P1618015845573981408

namespace A305897

/-- `A004525(A348717(n+1)+2)` -/
def P1618015845573981408.Spec : Prop :=
  ∀ n, P1618015845573981408.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P12679107950783195154

`A078898(A348717(n+1)+2)`
-/

namespace A305897.P12679107950783195154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A348717 (n + 1) + 2).toNat

end

end A305897.P12679107950783195154

namespace A305897

/-- `A078898(A348717(n+1)+2)` -/
def P12679107950783195154.Spec : Prop :=
  ∀ n, P12679107950783195154.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P5173534552162177467

`A249738(A348717(n+1)+2)+1`
-/

namespace A305897.P5173534552162177467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A348717 (n + 1) + 2).toNat + 1

end

end A305897.P5173534552162177467

namespace A305897

/-- `A249738(A348717(n+1)+2)+1` -/
def P5173534552162177467.Spec : Prop :=
  ∀ n, P5173534552162177467.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P3443165143257043380

`A348717(A348717(n+1)+2)/2`
-/

namespace A305897.P3443165143257043380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348717 (A348717 (n + 1) + 2).toNat : ℚ) / 2

end

end A305897.P3443165143257043380

namespace A305897

/-- `A348717(A348717(n+1)+2)/2` -/
def P3443165143257043380.Spec : Prop :=
  ∀ n, P3443165143257043380.a n = (A305897 (n + 1) : ℚ)

end A305897

/-! ## A305897.P1859582886428164286

`A078898(A249817(n+1))%(n+1)+1`
-/

namespace A305897.P1859582886428164286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A249817 (n + 1)).toNat) (n + 1 : ℤ) + 1

end

end A305897.P1859582886428164286

namespace A305897

/-- `A078898(A249817(n+1))%(n+1)+1` -/
def P1859582886428164286.Spec : Prop :=
  ∀ n, P1859582886428164286.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P10923833178837090779

`A078898(A250247(n+1))%(n+1)+1`
-/

namespace A305897.P10923833178837090779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A250247 (n + 1)).toNat) (n + 1 : ℤ) + 1

end

end A305897.P10923833178837090779

namespace A305897

/-- `A078898(A250247(n+1))%(n+1)+1` -/
def P10923833178837090779.Spec : Prop :=
  ∀ n, P10923833178837090779.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P15269364522041967342

`A078898(A249817(n+1))+char[A054429(n+1)]`
-/

namespace A305897.P15269364522041967342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A249817 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305897.P15269364522041967342

namespace A305897

/-- `A078898(A249817(n+1))+char[A054429(n+1)]` -/
def P15269364522041967342.Spec : Prop :=
  ∀ n, P15269364522041967342.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P2430437403768816845

`A078898(A249817(n+1))+and(1, A000040(n+1))`
-/

namespace A305897.P2430437403768816845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A249817 (n + 1)).toNat + Int.land 1 (A000040 (n + 1))

end

end A305897.P2430437403768816845

namespace A305897

/-- `A078898(A249817(n+1))+and(1, A000040(n+1))` -/
def P2430437403768816845.Spec : Prop :=
  ∀ n, P2430437403768816845.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P6570320801828141702

`A078898(A250247(n+1))+and(1, A000040(n+1))`
-/

namespace A305897.P6570320801828141702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A250247 (n + 1)).toNat + Int.land 1 (A000040 (n + 1))

end

end A305897.P6570320801828141702

namespace A305897

/-- `A078898(A250247(n+1))+and(1, A000040(n+1))` -/
def P6570320801828141702.Spec : Prop :=
  ∀ n, P6570320801828141702.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P964356138668028895

`A280492(A003961(n+1))+A249810(n+1)+1`
-/

namespace A305897.P964356138668028895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280492 (A003961 (n + 1)).toNat + (A249810 (n + 1) + 1)

end

end A305897.P964356138668028895

namespace A305897

/-- `A280492(A003961(n+1))+A249810(n+1)+1` -/
def P964356138668028895.Spec : Prop :=
  ∀ n, P964356138668028895.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P1502113882561670674

`A252759(A003961(n+1))+1-A055396(n+1)`
-/

namespace A305897.P1502113882561670674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 (A003961 (n + 1)).toNat + (1 - A055396 (n + 1))

end

end A305897.P1502113882561670674

namespace A305897

/-- `A252759(A003961(n+1))+1-A055396(n+1)` -/
def P1502113882561670674.Spec : Prop :=
  ∀ n, P1502113882561670674.a n = A305897 (n + 1)

end A305897

/-! ## A305897.P11878921497936718494

`ceil((A137502(A137502(n+1))+1)/2)`
-/

namespace A305897.P11878921497936718494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137502 (A137502 (n + 1)).toNat + 1 : ℚ) / 2⌉

end

end A305897.P11878921497936718494

namespace A305897

/-- `ceil((A137502(A137502(n+1))+1)/2)` -/
def P11878921497936718494.Spec : Prop :=
  ∀ n, P11878921497936718494.a n = A305897 (n + 1)

end A305897

/-!
# A305898: Filter sequence combining prime signature of n (A046523) and similar signature (A284011) obtained when Stern polynomial B(n,x) is factored over Z.

The programs for A305898, there is no canonical definition to state claims against.
-/

/-! ## A305898.P2316895102594472636

`A266645(A181819(n+1)^A119335(n))`
-/

namespace A305898.P2316895102594472636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (SequenceMachineLib.roundAway ((A181819 (n + 1) : ℚ) ^ (A119335 n : ℤ))).toNat

end

end A305898.P2316895102594472636

/-! ## A305898.P6518350407058995179

`A266646(A181819(n+1)^A119335(n))`
-/

namespace A305898.P6518350407058995179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (SequenceMachineLib.roundAway ((A181819 (n + 1) : ℚ) ^ (A119335 n : ℤ))).toNat

end

end A305898.P6518350407058995179

/-! ## A305898.P10671483386912489752

`A101296(n+1)^A003989(A228165(n))`
-/

namespace A305898.P10671483386912489752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101296 (n + 1) : ℚ) ^ (A003989 (A228165 n).toNat : ℤ)

end

end A305898.P10671483386912489752

/-! ## A305898.P10555056134911292265

`A101296(n+1)^A261794(A105990(n+1))`
-/

namespace A305898.P10555056134911292265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101296 (n + 1) : ℚ) ^ (A261794 (A105990 (n + 1)).toNat : ℤ)

end

end A305898.P10555056134911292265

/-! ## A305898.P5444101141893988043

`A101296(n+1)^A063435(A304544(n+1))`
-/

namespace A305898.P5444101141893988043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101296 (n + 1) : ℚ) ^ (A063435 (A304544 (n + 1)).toNat : ℤ)

end

end A305898.P5444101141893988043

/-!
# A305899: Filter sequence related to factorization ("prime") signatures of Stern polynomials when factored over Z.

The programs for A305899, there is no canonical definition to state claims against.
-/

/-! ## A305899.P14132416026317830249

`A101296(A284011(n+1))%A206073(A305790(n+1))`
-/

namespace A305899.P14132416026317830249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A284011 (n + 1)).toNat) (A206073 (A305790 (n + 1)).toNat)

end

end A305899.P14132416026317830249

/-! ## A305899.P18267812156274542267

`A085089(A284011(n+1))%A364293(A088567(n))`
-/

namespace A305899.P18267812156274542267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085089 (A284011 (n + 1)).toNat) (A364293 (A088567 n).toNat)

end

end A305899.P18267812156274542267

/-! ## A305899.P16706188181820528044

`A085089(A284011(n+1))+A069517(A054804(2*n+1))`
-/

namespace A305899.P16706188181820528044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A284011 (n + 1)).toNat + A069517 (A054804 (2 * n + 1)).toNat

end

end A305899.P16706188181820528044

/-! ## A305899.P9661721783947130716

`A101296(A137735(A284011(n+1)²))`
-/

namespace A305899.P9661721783947130716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A137735 (A284011 (n + 1) ^ 2).toNat).toNat

end

end A305899.P9661721783947130716

/-! ## A305899.P1972246303161132365

`A085089(A284011(n+1))+A010815(A164294(n+1))`
-/

namespace A305899.P1972246303161132365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A284011 (n + 1)).toNat + A010815 (A164294 (n + 1)).toNat

end

end A305899.P1972246303161132365

/-! ## A305899.P7623314619747738752

`A001511(A070183(n+1))*A085089(A284011(n+1))`
-/

namespace A305899.P7623314619747738752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A070183 (n + 1)).toNat * A085089 (A284011 (n + 1)).toNat

end

end A305899.P7623314619747738752

/-! ## A305899.P1375159158845988944

`A171919(A159791(n+5))+A085089(A284011(n+1))`
-/

namespace A305899.P1375159158845988944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171919 (A159791 (n + 5)).toNat + A085089 (A284011 (n + 1)).toNat

end

end A305899.P1375159158845988944

/-! ## A305899.P13752840409599073344

`A085089(A284011(n+1))*A133823(n²)`
-/

namespace A305899.P13752840409599073344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A284011 (n + 1)).toNat * A133823 (n ^ 2)

end

end A305899.P13752840409599073344

/-! ## A305899.P10618099415051605880

`A085089(A284011(n+1)/A133823(n²))`
-/

namespace A305899.P10618099415051605880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (SequenceMachineLib.roundAway ((A284011 (n + 1) : ℚ) / (A133823 (n ^ 2) : ℚ))).toNat

end

end A305899.P10618099415051605880

