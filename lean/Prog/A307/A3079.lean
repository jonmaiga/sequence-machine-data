import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
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
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A307900: Number of functions constructed from n instances of variable x using operators + (add), * (multiply), and parentheses.

The programs for A307900, there is no canonical definition to state claims against.
-/

/-! ## A307900.P17203939411099759876

`A265337(A116539(n))+A000045(2*n)`
-/

namespace A307900.P17203939411099759876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 (A116539 n).toNat + A000045 (2 * n)

end

end A307900.P17203939411099759876

/-! ## A307900.P4344158061394283250

`floor(log2(A305577(2^n)))`
-/

namespace A307900.P4344158061394283250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A305577 (2 ^ n)).toNat

end

end A307900.P4344158061394283250

/-! ## A307900.P3026494206100461871

`A065825(ceil(2^(n-1)+n))-C(n, 2)`
-/

namespace A307900.P3026494206100461871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ)⌉.toNat - (Nat.choose n 2 : ℤ)

end

end A307900.P3026494206100461871

/-!
# A307902: Number of (undirected) Hamiltonian cycles in the n-Andrásfai graph.

The programs for A307902, there is no canonical definition to state claims against.
-/

/-! ## A307902.P7818968016443018496

`A143249(n+1)/2`
-/

namespace A307902.P7818968016443018496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143249 (n + 1) : ℚ) / 2

end

end A307902.P7818968016443018496

/-!
# A307903: Coefficient of x^n in (1 + n*x + n*x^3)^n.

The programs for A307903, there is no canonical definition to state claims against.
-/

/-! ## A307903.P6678579287655378950

`A028310(A036777(n)*A277271(n+4))`
-/

namespace A307903.P6678579287655378950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A036777 n * A277271 (n + 4)).toNat

end

end A307903.P6678579287655378950

/-! ## A307903.P730109461572491670

`A028310(A001222(2^n)^abs(1-n)*A277271(n+4))`
-/

namespace A307903.P730109461572491670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A001222 (2 ^ n) : ℚ) ^ (|1 - (n : ℤ)| : ℤ) * (A277271 (n + 4) : ℚ))).toNat

end

end A307903.P730109461572491670

/-!
# A307904: Coefficient of x^n in (1 + x + n*x^3)^n.

The programs for A307904, there is no canonical definition to state claims against.
-/

/-! ## A307904.P10536758222760126601

`A004526(A361917(n)+A205800(n+1))`
-/

namespace A307904.P10536758222760126601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A361917 n + A205800 (n + 1)).toNat

end

end A307904.P10536758222760126601

/-! ## A307904.P14284797743135586065

`A032742(A361917(n)+A205800(n+1))`
-/

namespace A307904.P14284797743135586065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A361917 n + A205800 (n + 1)).toNat

end

end A307904.P14284797743135586065

/-!
# A307905: Coefficient of x^n in (1 + n*x + x^3)^n.

The programs for A307905, there is no canonical definition to state claims against.
-/

/-! ## A307905.P9793538505965891653

`A078898(A000272(n)*A077588(n))`
-/

namespace A307905.P9793538505965891653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A000272 n * A077588 n).toNat

end

end A307905.P9793538505965891653

/-! ## A307905.P887245074948047535

`A000272(n)*A319132(A006125(n))`
-/

namespace A307905.P887245074948047535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A319132 (A006125 n).toNat

end

end A307905.P887245074948047535

/-!
# A307906: Coefficient of x^n in 1/(n+1) * (1 + x + n*x^2)^(n+1).

The programs for A307906, there is no canonical definition to state claims against.
-/

/-! ## A307906.P5872684675927427591

`A306684(∑[4*n])`
-/

namespace A307906.P5872684675927427591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307906.P5872684675927427591

/-! ## A307906.P10741124399206896710

`gcd(A000038(n), A306684(A046092(n)))`
-/

namespace A307906.P10741124399206896710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A306684 (A046092 n).toNat)

end

end A307906.P10741124399206896710

/-! ## A307906.P13621922836901336753

`or(A025426(n), A306684(A046092(n)))`
-/

namespace A307906.P13621922836901336753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025426 n) (A306684 (A046092 n).toNat)

end

end A307906.P13621922836901336753

/-! ## A307906.P8068383784200846767

`or(A290079(n), A306684(A046092(n)))`
-/

namespace A307906.P8068383784200846767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290079 n) (A306684 (A046092 n).toNat)

end

end A307906.P8068383784200846767

/-! ## A307906.P7640879763658133995

`A000010(abs((-1)^n))*A306684(A046092(n))`
-/

namespace A307906.P7640879763658133995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |(-1) ^ n|.toNat * A306684 (A046092 n).toNat

end

end A307906.P7640879763658133995

/-!
# A307907: a(n) is the greatest k such that p^k <= n for any prime factor p of n.

The programs for A307907, the canonical program `A307907.P13472592245579266381` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307907 has offset 2).

The definition of A307907 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307907.P13472592245579266381

`floor(log(n+2)/log(A006530(n+2)))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A307907

/-- `floor(log(n+2)/log(A006530(n+2)))` -/
def P13472592245579266381.Spec : Prop :=
  ∀ n, P13472592245579266381.a n = A307907 (n + 2)

theorem P13472592245579266381.correct : P13472592245579266381.Spec := by
  intro n
  simp only [A307907, Nat.add_sub_cancel]

end A307907

/-! ## A307907.P9376776019976787166

`val(A064446(n+2), A006530(n+2))`
-/

namespace A307907.P9376776019976787166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 2)).toNat (A006530 (n + 2)).toNat

end

end A307907.P9376776019976787166

namespace A307907

/-- `val(A064446(n+2), A006530(n+2))` -/
def P9376776019976787166.Spec : Prop :=
  ∀ n, (P9376776019976787166.a n : ℤ) = A307907 (n + 2)

end A307907

/-! ## A307907.P10294141166807634814

`val(A064446(n+2), A007947(n+2))`
-/

namespace A307907.P10294141166807634814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 2)).toNat (A007947 (n + 2)).toNat

end

end A307907.P10294141166807634814

namespace A307907

/-- `val(A064446(n+2), A007947(n+2))` -/
def P10294141166807634814.Spec : Prop :=
  ∀ n, (P10294141166807634814.a n : ℤ) = A307907 (n + 2)

end A307907

/-! ## A307907.P12345968133172431800

`val(A064446(n+2), A111089(n+2))`
-/

namespace A307907.P12345968133172431800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 2)).toNat (A111089 (n + 2)).toNat

end

end A307907.P12345968133172431800

namespace A307907

/-- `val(A064446(n+2), A111089(n+2))` -/
def P12345968133172431800.Spec : Prop :=
  ∀ n, (P12345968133172431800.a n : ℤ) = A307907 (n + 2)

end A307907

/-! ## A307907.P13662702798408893412

`A179953(n+2)-A065202((n+2)²)`
-/

namespace A307907.P13662702798408893412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179953 (n + 2) - A065202 ((n + 2) ^ 2)

end

end A307907.P13662702798408893412

namespace A307907

/-- `A179953(n+2)-A065202((n+2)²)` -/
def P13662702798408893412.Spec : Prop :=
  ∀ n, P13662702798408893412.a n = A307907 (n + 2)

end A307907

/-! ## A307907.P11227585531923290092

`val(A002944(n+3), A007947(n+2))`
-/

namespace A307907.P11227585531923290092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002944 (n + 3)).toNat (A007947 (n + 2)).toNat

end

end A307907.P11227585531923290092

namespace A307907

/-- `val(A002944(n+3), A007947(n+2))` -/
def P11227585531923290092.Spec : Prop :=
  ∀ n, (P11227585531923290092.a n : ℤ) = A307907 (n + 2)

end A307907

/-! ## A307907.P15039674495471523913

`val(A002944(n+3), A088835(n+2))`
-/

namespace A307907.P15039674495471523913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002944 (n + 3)).toNat (A088835 (n + 2)).toNat

end

end A307907.P15039674495471523913

namespace A307907

/-- `val(A002944(n+3), A088835(n+2))` -/
def P15039674495471523913.Spec : Prop :=
  ∀ n, (P15039674495471523913.a n : ℤ) = A307907 (n + 2)

end A307907

/-! ## A307907.P6518498207494921733

`val(A003418(n+2), A006530(n+2))`
-/

namespace A307907.P6518498207494921733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003418 (n + 2)).toNat (A006530 (n + 2)).toNat

end

end A307907.P6518498207494921733

namespace A307907

/-- `val(A003418(n+2), A006530(n+2))` -/
def P6518498207494921733.Spec : Prop :=
  ∀ n, (P6518498207494921733.a n : ℤ) = A307907 (n + 2)

end A307907

/-! ## A307907.P3472327177342534618

`val(∏[A014963(n+2)], A006530(n+2))`
-/

namespace A307907.P3472327177342534618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A006530 (n + 2)).toNat

end

end A307907.P3472327177342534618

namespace A307907

/-- `val(∏[A014963(n+2)], A006530(n+2))` -/
def P3472327177342534618.Spec : Prop :=
  ∀ n, (P3472327177342534618.a n : ℤ) = A307907 (n + 2)

end A307907

/-! ## A307907.P7804076211801478629

`A051904(A064446(n+2))`
-/

namespace A307907.P7804076211801478629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A064446 (n + 2)).toNat

end

end A307907.P7804076211801478629

namespace A307907

/-- `A051904(A064446(n+2))` -/
def P7804076211801478629.Spec : Prop :=
  ∀ n, P7804076211801478629.a n = A307907 (n + 2)

end A307907

/-!
# A307908: a(n) is the least k such that p^k >= n for any prime factor p of n.

The programs for A307908, there is no canonical definition to state claims against.
-/

/-! ## A307908.P6597098640586460149

`ceil(log(n+2)/log(A020639(n+2)))`
-/

namespace A307908.P6597098640586460149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 2 : ℝ) / Real.log (A020639 (n + 2) : ℝ)⌉

end

end A307908.P6597098640586460149

/-! ## A307908.P8210738945060218553

`A280363(n+2)+A057427(A344876(n+2))`
-/

namespace A307908.P8210738945060218553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280363 (n + 2) + A057427 (A344876 (n + 2)).toNat

end

end A307908.P8210738945060218553

/-! ## A307908.P9033433535822921249

`val(A003418(n+1), A020639(n+2))+1`
-/

namespace A307908.P9033433535822921249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003418 (n + 1)).toNat (A020639 (n + 2)).toNat + 1

end

end A307908.P9033433535822921249

/-!
# A307909: Number of binary strings of length n whose only palindromic prefixes are "1" and "11".

The programs for A307909, there is no canonical definition to state claims against.
-/

/-! ## A307909.P9883957920921137675

`A000051(n)-A248562(A094373(n))`
-/

namespace A307909.P9883957920921137675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A248562 (A094373 n).toNat

end

end A307909.P9883957920921137675

/-! ## A307909.P3145794971482617292

`A002024(A148200(n))`
-/

namespace A307909.P3145794971482617292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148200 n).toNat

end

end A307909.P3145794971482617292

/-! ## A307909.P6215212268081009980

`A168255(A104779(n))`
-/

namespace A307909.P6215212268081009980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A104779 n).toNat

end

end A307909.P6215212268081009980

/-! ## A307909.P5529653389643748773

`A225687(A148350(n))`
-/

namespace A307909.P5529653389643748773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A148350 n).toNat

end

end A307909.P5529653389643748773

/-! ## A307909.P10886928728228408346

`A328869(A191317(n))`
-/

namespace A307909.P10886928728228408346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328869 (A191317 n).toNat

end

end A307909.P10886928728228408346

/-!
# A307910: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 1/sqrt(1 - 2*k*x + k*(k-4)*x^2).

The programs for A307910, there is no canonical definition to state claims against.
-/

/-! ## A307910.P3376546492504095702

`A030706(A255961(n))`
-/

namespace A307910.P3376546492504095702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030706 ((A255961 n).toNat + 1)

end

end A307910.P3376546492504095702

/-! ## A307910.P3769621701141771077

`A030706(A297328(n))`
-/

namespace A307910.P3769621701141771077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030706 ((A297328 n).toNat + 1)

end

end A307910.P3769621701141771077

/-! ## A307910.P2136652063314052888

`A373624(A340986(n))`
-/

namespace A307910.P2136652063314052888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373624 (A340986 n).toNat

end

end A307910.P2136652063314052888

/-! ## A307910.P7660178531336372377

`A351831(A009999(n)+char[∑[n]])`
-/

namespace A307910.P7660178531336372377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A009999 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A307910.P7660178531336372377

/-! ## A307910.P11054039969926589816

`A186745(A306024(n))+A143325(n+1)`
-/

namespace A307910.P11054039969926589816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 (A306024 n).toNat + A143325 (n + 1)

end

end A307910.P11054039969926589816

/-!
# A307911: Coefficient of x^n in expansion of (1 - n*x - n*x^2)^n.

The programs for A307911, there is no canonical definition to state claims against.
-/

/-! ## A307911.P1933653027701010726

`A307819(∑[4*n])`
-/

namespace A307911.P1933653027701010726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307819 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307911.P1933653027701010726

/-! ## A307911.P258985971645832453

`or(A036987(n), A307819(A046092(n)))`
-/

namespace A307911.P258985971645832453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A307819 (A046092 n).toNat)

end

end A307911.P258985971645832453

/-! ## A307911.P4331768897991206937

`A307819(A106232(n+1))+A000038(n)`
-/

namespace A307911.P4331768897991206937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307819 (A106232 (n + 1)).toNat + A000038 n

end

end A307911.P4331768897991206937

/-! ## A307911.P668981324002667220

`A307819(A106232(n+1))+and(2, A065889(n+4))`
-/

namespace A307911.P668981324002667220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307819 (A106232 (n + 1)).toNat + Int.land 2 (A065889 (n + 4))

end

end A307911.P668981324002667220

/-! ## A307911.P13762178447432805068

`A307819(A106232(n+1))+C(2, n+1)*A020068(n)`
-/

namespace A307911.P13762178447432805068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307819 (A106232 (n + 1)).toNat + (Nat.choose 2 (n + 1) : ℤ) * A020068 n

end

end A307911.P13762178447432805068

/-!
# A307912: a(n) = n - 1 - pi(2*n-1) + pi(n), where pi is the prime counting function.

The programs for A307912, the canonical program `A307912.P17749538653944289286` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307912 has offset 1).

The definition of A307912 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060715, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307912.P17749538653944289286

`n-A060715(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A307912

/-- `n-A060715(n+1)` -/
def P17749538653944289286.Spec : Prop :=
  ∀ n, P17749538653944289286.a n = A307912 (n + 1)

theorem P17749538653944289286.correct : P17749538653944289286.Spec := by
  intro n
  simp only [A307912, Nat.add_sub_cancel]

end A307912

/-! ## A307912.P16465390736337672115

`n-A000720(2*(n+1)-1)+A000720(n+1)`
-/

namespace A307912.P16465390736337672115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000720 (2 * (n + 1) - 1) + A000720 (n + 1)

end

end A307912.P16465390736337672115

namespace A307912

/-- `n-A000720(2*(n+1)-1)+A000720(n+1)` -/
def P16465390736337672115.Spec : Prop :=
  ∀ n, P16465390736337672115.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P12108562560499342401

`n-A108954(n+1)%(n+1)`
-/

namespace A307912.P12108562560499342401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A108954 (n + 1)) (n + 1 : ℤ)

end

end A307912.P12108562560499342401

namespace A307912

/-- `n-A108954(n+1)%(n+1)` -/
def P12108562560499342401.Spec : Prop :=
  ∀ n, P12108562560499342401.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P2654976416918762185

`abs(A060715(abs(Δ[n²]-n))-n)`
-/

namespace A307912.P2654976416918762185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A060715 |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)|.toNat - (n : ℤ))|

end

end A307912.P2654976416918762185

namespace A307912

/-- `abs(A060715(abs(Δ[n²]-n))-n)` -/
def P2654976416918762185.Spec : Prop :=
  ∀ n, P2654976416918762185.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P415306341438403511

`n-A056171(2*(n+1))%(n+1)`
-/

namespace A307912.P415306341438403511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A056171 (2 * (n + 1))) (n + 1 : ℤ)

end

end A307912.P415306341438403511

namespace A307912

/-- `n-A056171(2*(n+1))%(n+1)` -/
def P415306341438403511.Spec : Prop :=
  ∀ n, P415306341438403511.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P17112886772482751669

`floor(A075084(n+1)-atan(∑{e}[n+1, #]))`
-/

namespace A307912.P17112886772482751669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075084 (n + 1) : ℝ) - Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌋

end

end A307912.P17112886772482751669

namespace A307912

/-- `floor(A075084(n+1)-atan(∑{e}[n+1, #]))` -/
def P17112886772482751669.Spec : Prop :=
  ∀ n, P17112886772482751669.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P11568791868873758751

`n-A056171(A103517(n))`
-/

namespace A307912.P11568791868873758751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056171 (A103517 n).toNat

end

end A307912.P11568791868873758751

namespace A307912

/-- `n-A056171(A103517(n))` -/
def P11568791868873758751.Spec : Prop :=
  ∀ n, P11568791868873758751.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P10953561481775075657

`A376759(n+1)+A057428(n)`
-/

namespace A307912.P10953561481775075657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376759 (n + 1) + A057428 n

end

end A307912.P10953561481775075657

namespace A307912

/-- `A376759(n+1)+A057428(n)` -/
def P10953561481775075657.Spec : Prop :=
  ∀ n, P10953561481775075657.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P12897999720954808434

`A028310(n)-A108954(n+1)`
-/

namespace A307912.P12897999720954808434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A108954 (n + 1)

end

end A307912.P12897999720954808434

namespace A307912

/-- `A028310(n)-A108954(n+1)` -/
def P12897999720954808434.Spec : Prop :=
  ∀ n, P12897999720954808434.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P7970341572078862711

`A376759(n+1)-A057427(n)`
-/

namespace A307912.P7970341572078862711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376759 (n + 1) - A057427 n

end

end A307912.P7970341572078862711

namespace A307912

/-- `A376759(n+1)-A057427(n)` -/
def P7970341572078862711.Spec : Prop :=
  ∀ n, P7970341572078862711.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P7739785113710211543

`A077150(n+1)+A016035(n+1)`
-/

namespace A307912.P7739785113710211543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077150 (n + 1) + A016035 (n + 1)

end

end A307912.P7739785113710211543

namespace A307912

/-- `A077150(n+1)+A016035(n+1)` -/
def P7739785113710211543.Spec : Prop :=
  ∀ n, P7739785113710211543.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P5780655213120570540

`A210469(n+1)+A033270(n+1)`
-/

namespace A307912.P5780655213120570540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) + A033270 (n + 1)

end

end A307912.P5780655213120570540

namespace A307912

/-- `A210469(n+1)+A033270(n+1)` -/
def P5780655213120570540.Spec : Prop :=
  ∀ n, P5780655213120570540.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P15765529242057060956

`A028310(n)-A056171(2*(n+1))`
-/

namespace A307912.P15765529242057060956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A056171 (2 * (n + 1))

end

end A307912.P15765529242057060956

namespace A307912

/-- `A028310(n)-A056171(2*(n+1))` -/
def P15765529242057060956.Spec : Prop :=
  ∀ n, P15765529242057060956.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P16796302321499059517

`A000720(n+1)+n-A099801(n)`
-/

namespace A307912.P16796302321499059517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ((n : ℤ) - A099801 n)

end

end A307912.P16796302321499059517

namespace A307912

/-- `A000720(n+1)+n-A099801(n)` -/
def P16796302321499059517.Spec : Prop :=
  ∀ n, P16796302321499059517.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P10465821754521482374

`A000007(n)-A108954(n+1)+n`
-/

namespace A307912.P10465821754521482374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A108954 (n + 1) + (n : ℤ)

end

end A307912.P10465821754521482374

namespace A307912

/-- `A000007(n)-A108954(n+1)+n` -/
def P10465821754521482374.Spec : Prop :=
  ∀ n, P10465821754521482374.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P10023372612941180373

`A057428(n)*A060715(n+1)+n`
-/

namespace A307912.P10023372612941180373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A060715 (n + 1) + (n : ℤ)

end

end A307912.P10023372612941180373

namespace A307912

/-- `A057428(n)*A060715(n+1)+n` -/
def P10023372612941180373.Spec : Prop :=
  ∀ n, P10023372612941180373.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P14539214702986228601

`A057428(n)*A108954(n+1)+n`
-/

namespace A307912.P14539214702986228601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A108954 (n + 1) + (n : ℤ)

end

end A307912.P14539214702986228601

namespace A307912

/-- `A057428(n)*A108954(n+1)+n` -/
def P14539214702986228601.Spec : Prop :=
  ∀ n, P14539214702986228601.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P13731410457595626501

`(n-A108954(n+1))*A057427(n)`
-/

namespace A307912.P13731410457595626501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A108954 (n + 1)) * A057427 n

end

end A307912.P13731410457595626501

namespace A307912

/-- `(n-A108954(n+1))*A057427(n)` -/
def P13731410457595626501.Spec : Prop :=
  ∀ n, P13731410457595626501.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P32610353591875625

`(A108954(n+1)-n)*A134824(n)`
-/

namespace A307912.P32610353591875625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108954 (n + 1) - (n : ℤ)) * A134824 n

end

end A307912.P32610353591875625

namespace A307912

/-- `(A108954(n+1)-n)*A134824(n)` -/
def P32610353591875625.Spec : Prop :=
  ∀ n, P32610353591875625.a n = A307912 (n + 1)

end A307912

/-! ## A307912.P1456578003929921463

`and(n-A108954(n+1), A003817(n))`
-/

namespace A307912.P1456578003929921463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A108954 (n + 1)) (A003817 n)

end

end A307912.P1456578003929921463

namespace A307912

/-- `and(n-A108954(n+1), A003817(n))` -/
def P1456578003929921463.Spec : Prop :=
  ∀ n, P1456578003929921463.a n = A307912 (n + 1)

end A307912

/-!
# A307913: Numbers without the decimal digits 3, 6 and 9.

The programs for A307913, the canonical program `A307913.P4133678735760456041` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307913 has offset 1).

The definition of A307913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307913.P4133678735760456041

`eq[gcd(3, A051801(n))+n, n+1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A307913

/-- `eq[gcd(3, A051801(n))+n, n+1]` -/
def P4133678735760456041.Spec : Prop :=
  ∀ n, (P4133678735760456041.a n : ℤ) = A307913 (n + 1)

theorem P4133678735760456041.correct : P4133678735760456041.Spec := by
  intro n
  simp only [A307913, Nat.add_sub_cancel]

end A307913

/-! ## A307913.P13614242753740857241

`A235049(A028374(n+1))`
-/

namespace A307913.P13614242753740857241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A028374 (n + 1)).toNat

end

end A307913.P13614242753740857241

namespace A307913

/-- `A235049(A028374(n+1))` -/
def P13614242753740857241.Spec : Prop :=
  ∀ n, P13614242753740857241.a n = A307913 (n + 1)

end A307913

/-! ## A307913.P5441845924573459221

`eq[n, A222239(A004181(n))]`
-/

namespace A307913.P5441845924573459221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A004181 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307913.P5441845924573459221

namespace A307913

/-- `eq[n, A222239(A004181(n))]` -/
def P5441845924573459221.Spec : Prop :=
  ∀ n, (P5441845924573459221.a n : ℤ) = A307913 (n + 1)

end A307913

/-! ## A307913.P7267136005764661181

`eq[n, A222236(A004184(n))]`
-/

namespace A307913.P7267136005764661181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307913.P7267136005764661181

namespace A307913

/-- `eq[n, A222236(A004184(n))]` -/
def P7267136005764661181.Spec : Prop :=
  ∀ n, (P7267136005764661181.a n : ℤ) = A307913 (n + 1)

end A307913

/-! ## A307913.P15324782140068675135

`eq[n, A222251(A004178(n))]`
-/

namespace A307913.P15324782140068675135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A004178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307913.P15324782140068675135

namespace A307913

/-- `eq[n, A222251(A004178(n))]` -/
def P15324782140068675135.Spec : Prop :=
  ∀ n, (P15324782140068675135.a n : ℤ) = A307913 (n + 1)

end A307913

/-! ## A307913.P18066785390315030689

`eq[n, A222239(A222236(n))]`
-/

namespace A307913.P18066785390315030689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307913.P18066785390315030689

namespace A307913

/-- `eq[n, A222239(A222236(n))]` -/
def P18066785390315030689.Spec : Prop :=
  ∀ n, (P18066785390315030689.a n : ℤ) = A307913 (n + 1)

end A307913

/-! ## A307913.P3681627994299834326

`eq[n, A222251(A222239(n))]`
-/

namespace A307913.P3681627994299834326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307913.P3681627994299834326

namespace A307913

/-- `eq[n, A222251(A222239(n))]` -/
def P3681627994299834326.Spec : Prop :=
  ∀ n, (P3681627994299834326.a n : ℤ) = A307913 (n + 1)

end A307913

/-! ## A307913.P6848609012334733360

`eq[A222236(n), A222251(n)]`
-/

namespace A307913.P6848609012334733360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307913.P6848609012334733360

namespace A307913

/-- `eq[A222236(n), A222251(n)]` -/
def P6848609012334733360.Spec : Prop :=
  ∀ n, (P6848609012334733360.a n : ℤ) = A307913 (n + 1)

end A307913

/-! ## A307913.P16218560128500380801

`eq[A107128(n), A222239(A107128(n))]`
-/

namespace A307913.P16218560128500380801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A107128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307913.P16218560128500380801

namespace A307913

/-- `eq[A107128(n), A222239(A107128(n))]` -/
def P16218560128500380801.Spec : Prop :=
  ∀ n, (P16218560128500380801.a n : ℤ) = A307913 (n + 1)

end A307913

/-! ## A307913.P6438726668878832917

`eq[1, A234959(2*A051801(n))]`
-/

namespace A307913.P6438726668878832917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234959 (2 * A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307913.P6438726668878832917

namespace A307913

/-- `eq[1, A234959(2*A051801(n))]` -/
def P6438726668878832917.Spec : Prop :=
  ∀ n, (P6438726668878832917.a n : ℤ) = A307913 (n + 1)

end A307913

/-!
# A307916: Number of (undirected) paths in the n X n antelope graph.

The programs for A307916, there is no canonical definition to state claims against.
-/

/-! ## A307916.P3497878810062791089

`A178746(Δ[A276284(n)])`
-/

namespace A307916.P3497878810062791089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178746 (f1 (n + 1) - f1 n).toNat

end

end A307916.P3497878810062791089

/-! ## A307916.P4545987878843817056

`and(A008611(A150801(n)), A150853(n))`
-/

namespace A307916.P4545987878843817056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008611 (A150801 n).toNat) (A150853 n)

end

end A307916.P4545987878843817056

/-! ## A307916.P12004796336910787463

`A178746(A276284(n+1)-A276284(n))`
-/

namespace A307916.P12004796336910787463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178746 (A276284 (n + 1) - A276284 n).toNat

end

end A307916.P12004796336910787463

/-!
# A307921: Number of (undirected) paths in the n-book graph.

The programs for A307921, the canonical program `A307921.P4320545813709548895` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307921 has offset 1).

The definition of A307921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307921.P4320545813709548895

`4*(n+1)^3+(n+1)²+6*(n+1)+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A307921

/-- `4*(n+1)^3+(n+1)²+6*(n+1)+1` -/
def P4320545813709548895.Spec : Prop :=
  ∀ n, (P4320545813709548895.a n : ℤ) = A307921 (n + 1)

theorem P4320545813709548895.correct : P4320545813709548895.Spec := by
  intro n
  simp only [A307921, Nat.add_sub_cancel]

end A307921

/-! ## A307921.P12102826145465420733

`root(A292022(n+1)+n², 2)²`
-/

namespace A307921.P12102826145465420733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A292022 (n + 1) + (n ^ 2 : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A307921.P12102826145465420733

namespace A307921

/-- `root(A292022(n+1)+n², 2)²` -/
def P12102826145465420733.Spec : Prop :=
  ∀ n, P12102826145465420733.a n = (A307921 (n + 1) : ℝ)

end A307921

/-! ## A307921.P14973806556234912625

`∑[A167585(n+1)-A103517(n)]`
-/

namespace A307921.P14973806556234912625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167585 (n + 1) - A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307921.P14973806556234912625

namespace A307921

/-- `∑[A167585(n+1)-A103517(n)]` -/
def P14973806556234912625.Spec : Prop :=
  ∀ n, P14973806556234912625.a n = A307921 (n + 1)

end A307921

/-! ## A307921.P12291235939541087949

`or(A292022(n+1)+n², A178333(n))`
-/

namespace A307921.P12291235939541087949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A292022 (n + 1) + (n ^ 2 : ℤ)) (A178333 n)

end

end A307921.P12291235939541087949

namespace A307921

/-- `or(A292022(n+1)+n², A178333(n))` -/
def P12291235939541087949.Spec : Prop :=
  ∀ n, P12291235939541087949.a n = A307921 (n + 1)

end A307921

/-! ## A307921.P16119252678250247663

`(A292022(n+1)+n²)%Δ[A010969(n)]`
-/

namespace A307921.P16119252678250247663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010969 (n + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292022 (n + 1) + (n ^ 2 : ℤ)) (f1 (n + 1) - f1 n)

end

end A307921.P16119252678250247663

namespace A307921

/-- `(A292022(n+1)+n²)%Δ[A010969(n)]` -/
def P16119252678250247663.Spec : Prop :=
  ∀ n, P16119252678250247663.a n = A307921 (n + 1)

end A307921

/-!
# A307923: Number of (undirected) Hamiltonian cycles in the n-cocktail party graph.

The programs for A307923, the canonical program `A307923.P5766135449314183880` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307923 has offset 1).

The definition of A307923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307923.P5766135449314183880

`A129348(n+1)/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307923

/-- `A129348(n+1)/2` -/
def P5766135449314183880.Spec : Prop :=
  ∀ n, P5766135449314183880.a n = (A307923 (n + 1) : ℚ)

end A307923

/-! ## A307923.P4519174598961165482

`A002866(n)*A003436(n+1)`
-/

namespace A307923.P4519174598961165482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 n * A003436 (n + 1)

end

end A307923.P4519174598961165482

namespace A307923

/-- `A002866(n)*A003436(n+1)` -/
def P4519174598961165482.Spec : Prop :=
  ∀ n, P4519174598961165482.a n = A307923 (n + 1)

end A307923

/-! ## A307923.P11041223604507684425

`A000165(n)*A003436(n+1)/2`
-/

namespace A307923.P11041223604507684425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n * A003436 (n + 1) : ℚ) / 2

end

end A307923.P11041223604507684425

namespace A307923

/-- `A000165(n)*A003436(n+1)/2` -/
def P11041223604507684425.Spec : Prop :=
  ∀ n, P11041223604507684425.a n = (A307923 (n + 1) : ℚ)

end A307923

/-! ## A307923.P4332636405997813902

`∏[A004277(n)]*A003436(n+1)/2`
-/

namespace A307923.P4332636405997813902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j) * A003436 (n + 1) : ℤ) : ℚ) / 2

end

end A307923.P4332636405997813902

namespace A307923

/-- `∏[A004277(n)]*A003436(n+1)/2` -/
def P4332636405997813902.Spec : Prop :=
  ∀ n, P4332636405997813902.a n = (A307923 (n + 1) : ℚ)

end A307923

/-! ## A307923.P15901497712534529487

`A006882(2*n)/2*A003436(n+1)`
-/

namespace A307923.P15901497712534529487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (2 * n) : ℚ) / 2 * (A003436 (n + 1) : ℚ)

end

end A307923.P15901497712534529487

namespace A307923

/-- `A006882(2*n)/2*A003436(n+1)` -/
def P15901497712534529487.Spec : Prop :=
  ∀ n, P15901497712534529487.a n = (A307923 (n + 1) : ℚ)

end A307923

/-!
# A307924: Number of (undirected) Hamiltonian cycles in the complete tripartite graph K_{n,n,n}.

The programs for A307924, there is no canonical definition to state claims against.
-/

/-! ## A307924.P12587202113129683290

`A234365(n+1)/2`
-/

namespace A307924.P12587202113129683290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234365 (n + 1) : ℚ) / 2

end

end A307924.P12587202113129683290

/-! ## A307924.P4016544770304095443

`record[A234365(A134478(n))/2]`
-/

namespace A307924.P4016544770304095443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234365 (A134478 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307924.P4016544770304095443

/-! ## A307924.P12534998311985532441

`record[A234365(A323889(n))/2]`
-/

namespace A307924.P12534998311985532441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234365 (A323889 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307924.P12534998311985532441

/-! ## A307924.P13067011049146192954

`record[ratio[A234365(A050603(n))]]`
-/

namespace A307924.P13067011049146192954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234365 (A050603 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307924.P13067011049146192954

/-! ## A307924.P7943218204324557711

`A296546(∑[n]+(n+1)²)`
-/

namespace A307924.P7943218204324557711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296546 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2)

end

end A307924.P7943218204324557711

/-!
# A307925: Number of (undirected) Hamiltonian cycles in the n-folded cube graph.

The programs for A307925, there is no canonical definition to state claims against.
-/

/-! ## A307925.P3695651024291155697

`A280847(n+2)/2`
-/

namespace A307925.P3695651024291155697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280847 (n + 2) : ℚ) / 2

end

end A307925.P3695651024291155697

/-!
# A307927: Number of (undirected) Hamiltonian cycles in the n-Mycielski graph.

The programs for A307927, there is no canonical definition to state claims against.
-/

/-! ## A307927.P13001114814009163005

`A143247(n+1)/2`
-/

namespace A307927.P13001114814009163005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143247 (n + 1) : ℚ) / 2

end

end A307927.P13001114814009163005

/-!
# A307930: Number of (undirected) Hamiltonian circuits in the n-triangular graph.

The programs for A307930, there is no canonical definition to state claims against.
-/

/-! ## A307930.P17605040186556539863

`A129349(n+2)/2`
-/

namespace A307930.P17605040186556539863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129349 (n + 2) : ℚ) / 2

end

end A307930.P17605040186556539863

/-!
# A307931: Number of (undirected) Hamiltonian cycles in the n-triangular honeycomb bishop graph.

The programs for A307931, there is no canonical definition to state claims against.
-/

/-! ## A307931.P11679477247132824572

`A032729(A338553(n!))`
-/

namespace A307931.P11679477247132824572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032729 (A338553 (Nat.factorial n)).toNat

end

end A307931.P11679477247132824572

/-!
# A307932: Number of (undirected) Hamiltonian paths in the n-Andrásfai graph.

The programs for A307932, there is no canonical definition to state claims against.
-/

/-! ## A307932.P1455312359829081681

`A137884(n+1)/2`
-/

namespace A307932.P1455312359829081681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137884 (n + 1) : ℚ) / 2

end

end A307932.P1455312359829081681

/-! ## A307932.P6547580554115442661

`record[ratio[A137884(A193592(n))]]`
-/

namespace A307932.P6547580554115442661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137884 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307932.P6547580554115442661

/-! ## A307932.P6757954283517738796

`record[ratio[A137884(A211161(n+1))]]`
-/

namespace A307932.P6757954283517738796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137884 (A211161 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307932.P6757954283517738796

/-!
# A307933: Number of (undirected) Hamiltonian paths in the n-antiprism graph.

The programs for A307933, there is no canonical definition to state claims against.
-/

/-! ## A307933.P17761775584143090840

`A124352(n+3)/2`
-/

namespace A307933.P17761775584143090840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124352 (n + 3) : ℚ) / 2

end

end A307933.P17761775584143090840

/-! ## A307933.P2796992818559799326

`A273943(A124352(n+3))`
-/

namespace A307933.P2796992818559799326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A124352 (n + 3)).toNat

end

end A307933.P2796992818559799326

/-!
# A307934: Number of (undirected) Hamiltonian paths in the n X n black bishop graph.

The programs for A307934, there is no canonical definition to state claims against.
-/

/-! ## A307934.P8434974995920993248

`A307556(n+1)/A000034(n)`
-/

namespace A307934.P8434974995920993248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307556 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A307934.P8434974995920993248

/-! ## A307934.P1697893633554838303

`A307556(n+1)/A040001(n+1)`
-/

namespace A307934.P1697893633554838303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307556 (n + 1) : ℚ) / (A040001 (n + 1) : ℚ)

end

end A307934.P1697893633554838303

/-! ## A307934.P12327675016830338025

`A307556(n+1)/gcd(2, A008814(n))`
-/

namespace A307934.P12327675016830338025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307556 (n + 1) : ℚ) / (Int.gcd 2 (A008814 n) : ℚ)

end

end A307934.P12327675016830338025

/-! ## A307934.P956767272933705201

`A307556(n+1)/A000925(A011782(n))`
-/

namespace A307934.P956767272933705201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307556 (n + 1) : ℚ) / (A000925 (A011782 n).toNat : ℚ)

end

end A307934.P956767272933705201

/-! ## A307934.P7377695898855095892

`A307556(n+1)/A000925(A131577(n))`
-/

namespace A307934.P7377695898855095892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307556 (n + 1) : ℚ) / (A000925 (A131577 n).toNat : ℚ)

end

end A307934.P7377695898855095892

/-!
# A307935: Number of (undirected) Hamiltonian paths in the n-cocktail party graph.

The programs for A307935, the canonical program `A307935.P10286303832049442799` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307935 has offset 1).

The definition of A307935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307935.P10286303832049442799

`A007060(n+1)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A307935

/-- `A007060(n+1)/2` -/
def P10286303832049442799.Spec : Prop :=
  ∀ n, P10286303832049442799.a n = (A307935 (n + 1) : ℚ)

end A307935

/-! ## A307935.P18317269973482005197

`floor(record[A007060(n)/2])`
-/

namespace A307935.P18317269973482005197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007060 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A307935.P18317269973482005197

namespace A307935

/-- `floor(record[A007060(n)/2])` -/
def P18317269973482005197.Spec : Prop :=
  ∀ n, P18317269973482005197.a n = A307935 (n + 1)

end A307935

/-! ## A307935.P1138248815992787892

`A193639(∑[n+1])/2`
-/

namespace A307935.P1138248815992787892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193639 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A307935.P1138248815992787892

namespace A307935

/-- `A193639(∑[n+1])/2` -/
def P1138248815992787892.Spec : Prop :=
  ∀ n, P1138248815992787892.a n = (A307935 (n + 1) : ℚ)

end A307935

/-! ## A307935.P15920324835270907961

`A358328(A134869(n+2))`
-/

namespace A307935.P15920324835270907961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358328 (A134869 (n + 2)).toNat

end

end A307935.P15920324835270907961

namespace A307935

/-- `A358328(A134869(n+2))` -/
def P15920324835270907961.Spec : Prop :=
  ∀ n, P15920324835270907961.a n = A307935 (n + 1)

end A307935

/-! ## A307935.P7473986215946696734

`A358328(A000096(n+1)+2)`
-/

namespace A307935.P7473986215946696734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358328 (A000096 (n + 1) + 2).toNat

end

end A307935.P7473986215946696734

namespace A307935

/-- `A358328(A000096(n+1)+2)` -/
def P7473986215946696734.Spec : Prop :=
  ∀ n, P7473986215946696734.a n = A307935 (n + 1)

end A307935

/-!
# A307936: Numbers of (undirected) Hamiltonian paths in the complete tripartite graph K_{n,n,n}.

The programs for A307936, the canonical program `A307936.P4327043822816111677` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307936 has offset 1).

The definition of A307936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307936.P4327043822816111677

`A234633(n+1)/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307936

/-- `A234633(n+1)/2` -/
def P4327043822816111677.Spec : Prop :=
  ∀ n, P4327043822816111677.a n = (A307936 (n + 1) : ℚ)

end A307936

/-!
# A307939: Number of (undirected) Hamiltonian paths in the n-dipyramidal graph.

The programs for A307939, the canonical program `A307939.P17534156971581480400` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307939 has offset 3).

The definition of A307939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307939.P17534156971581480400

`(A130773(n+1)+A027689(2*n))*A103517(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A307939

/-- `(A130773(n+1)+A027689(2*n))*A103517(n+2)` -/
def P17534156971581480400.Spec : Prop :=
  ∀ n, P17534156971581480400.a n = A307939 (n + 3)

theorem P17534156971581480400.correct : P17534156971581480400.Spec := by
  intro n
  simp only [A307939, Nat.add_sub_cancel]

end A307939

/-! ## A307939.P10407642910083446423

`(A130773(n+1)+A027689(2*n))*A005843(n+3)`
-/

namespace A307939.P10407642910083446423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130773 (n + 1) + A027689 (2 * n)) * A005843 (n + 3)

end

end A307939.P10407642910083446423

namespace A307939

/-- `(A130773(n+1)+A027689(2*n))*A005843(n+3)` -/
def P10407642910083446423.Spec : Prop :=
  ∀ n, P10407642910083446423.a n = A307939 (n + 3)

end A307939

/-! ## A307939.P5459710842009595596

`A103517(n+2)*A285766(2*(n+1))`
-/

namespace A307939.P5459710842009595596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 2) * A285766 (2 * (n + 1))

end

end A307939.P5459710842009595596

namespace A307939

/-- `A103517(n+2)*A285766(2*(n+1))` -/
def P5459710842009595596.Spec : Prop :=
  ∀ n, P5459710842009595596.a n = A307939 (n + 3)

end A307939

/-! ## A307939.P13280144530215236213

`(A005408(n)+5)*A285766(2*(n+1))`
-/

namespace A307939.P13280144530215236213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n + 5) * A285766 (2 * (n + 1))

end

end A307939.P13280144530215236213

namespace A307939

/-- `(A005408(n)+5)*A285766(2*(n+1))` -/
def P13280144530215236213.Spec : Prop :=
  ∀ n, P13280144530215236213.a n = A307939 (n + 3)

end A307939

/-! ## A307939.P16353792520744999265

`(A022856(2*n+3)+A022856(2*(n+3)))*2*(n+3)`
-/

namespace A307939.P16353792520744999265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022856 (2 * n + 3) + A022856 (2 * (n + 3))) * (2 * (n + 3) : ℤ)

end

end A307939.P16353792520744999265

namespace A307939

/-- `(A022856(2*n+3)+A022856(2*(n+3)))*2*(n+3)` -/
def P16353792520744999265.Spec : Prop :=
  ∀ n, P16353792520744999265.a n = A307939 (n + 3)

end A307939

/-!
# A307940: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * ((1+x)^n - A(x))^(n+1), where A(0) = 0.

The programs for A307940, there is no canonical definition to state claims against.
-/

/-! ## A307940.P720923274379038330

`A318932(A148482(n))`
-/

namespace A307940.P720923274379038330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318932 (A148482 n).toNat

end

end A307940.P720923274379038330

/-! ## A307940.P13939032482813194127

`A289497(A122130((n+1)²))`
-/

namespace A307940.P13939032482813194127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A122130 ((n + 1) ^ 2)).toNat

end

end A307940.P13939032482813194127

/-! ## A307940.P12985015318173258834

`A119848(or(n, A286478(Δ[n!])))`
-/

namespace A307940.P12985015318173258834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (Int.lor (n : ℤ) (A286478 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)).toNat

end

end A307940.P12985015318173258834

/-!
# A307944: Number of (undirected) paths in the n X n fiveleaper graph.

The programs for A307944, there is no canonical definition to state claims against.
-/

/-! ## A307944.P13379617215808139430

`A257772(5^C(n, 4))`
-/

namespace A307944.P13379617215808139430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257772 (5 ^ Nat.choose n 4)

end

end A307944.P13379617215808139430

/-! ## A307944.P9354531362143380683

`A257850(A212386(∑[n]))`
-/

namespace A307944.P9354531362143380683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (A212386 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A307944.P9354531362143380683

/-!
# A307945: Exponential convolution of A015128 with themselves.

The programs for A307945, there is no canonical definition to state claims against.
-/

/-! ## A307945.P6083657968313004699

`4^n-A093391(A001042(n))`
-/

namespace A307945.P6083657968313004699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A093391 (A001042 n).toNat

end

end A307945.P6083657968313004699

/-! ## A307945.P10591239321069742899

`4^n-A054899(A107354(n))`
-/

namespace A307945.P10591239321069742899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A054899 (A107354 n).toNat

end

end A307945.P10591239321069742899

/-!
# A307946: Coefficient of x^n in 1/(n+1) * (1 - n*x - n*x^2)^(n+1).

The programs for A307946, there is no canonical definition to state claims against.
-/

/-! ## A307946.P17947377269420145877

`A307968(∑[4*n])`
-/

namespace A307946.P17947377269420145877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307946.P17947377269420145877

/-! ## A307946.P7706712961712914250

`A267871(n)*A307968(A046092(n))`
-/

namespace A307946.P7706712961712914250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n * A307968 (A046092 n).toNat

end

end A307946.P7706712961712914250

/-! ## A307946.P10071826114304316502

`A307968(A046092(n))^A178334(n)`
-/

namespace A307946.P10071826114304316502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307968 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A307946.P10071826114304316502

/-! ## A307946.P4807529325067795567

`A307968(A046092(n))^A178489(n)`
-/

namespace A307946.P4807529325067795567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307968 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A307946.P4807529325067795567

/-! ## A307946.P11798119137339073122

`A307968(A106232(n+1))+A000038(n)`
-/

namespace A307946.P11798119137339073122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 (A106232 (n + 1)).toNat + A000038 n

end

end A307946.P11798119137339073122

/-!
# A307947: Coefficient of x^n in 1/(n+1) * (1 + x - n*x^2)^(n+1).

The programs for A307947, there is no canonical definition to state claims against.
-/

/-! ## A307947.P16846151540893018181

`A308035(∑[4*n])`
-/

namespace A307947.P16846151540893018181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307947.P16846151540893018181

/-! ## A307947.P4126622151530126295

`or(char[1], A308035(A046092(n)))`
-/

namespace A307947.P4126622151530126295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A308035 (A046092 n).toNat)

end

end A307947.P4126622151530126295

/-! ## A307947.P9032806198620339357

`A308035(A046092(n))^A000038(n)!`
-/

namespace A307947.P9032806198620339357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308035 (A046092 n).toNat ^ Nat.factorial (A000038 n).toNat

end

end A307947.P9032806198620339357

/-! ## A307947.P13825573334179102843

`A308035(A046092(n))%A001348(n+1)`
-/

namespace A307947.P13825573334179102843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308035 (A046092 n).toNat) (A001348 (n + 1))

end

end A307947.P13825573334179102843

/-! ## A307947.P13644226236142148174

`or(A000007(n), A308035(2*A002378(n)))`
-/

namespace A307947.P13644226236142148174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A308035 (2 * A002378 n).toNat)

end

end A307947.P13644226236142148174

/-! ## A307947.P15399507630259462233

`A308035(A046092(n))+A000035(C(2, 2*n+1))`
-/

namespace A307947.P15399507630259462233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308035 (A046092 n).toNat + A000035 (Nat.choose 2 (2 * n + 1))

end

end A307947.P15399507630259462233

/-! ## A307947.P12407033857234433875

`A111965(C(2, 2*n+1))*A308035(A046092(n))`
-/

namespace A307947.P12407033857234433875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111965 (Nat.choose 2 (2 * n + 1)) * A308035 (A046092 n).toNat

end

end A307947.P12407033857234433875

/-! ## A307947.P3033705597075420032

`A111967(C(2, 2*n+1))*A308035(A046092(n))`
-/

namespace A307947.P3033705597075420032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 (Nat.choose 2 (2 * n + 1)) * A308035 (A046092 n).toNat

end

end A307947.P3033705597075420032

/-!
# A307948: Number of (undirected) Hamiltonian paths in the n-folded cube graph.

The programs for A307948, there is no canonical definition to state claims against.
-/

/-! ## A307948.P4493425629266385578

`A137887(n+2)/2`
-/

namespace A307948.P4493425629266385578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137887 (n + 2) : ℚ) / 2

end

end A307948.P4493425629266385578

/-!
# A307950: Primes that are the sum of two prime-indexed triangular numbers.

The programs for A307950, there is no canonical definition to state claims against.
-/

/-! ## A307950.P11800423777153460396

`A191868(A063188(n+2))`
-/

namespace A307950.P11800423777153460396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191868 (A063188 (n + 2)).toNat

end

end A307950.P11800423777153460396

/-!
# A307952: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * ((1+x)^(2*n) - A(x))^(n+1), where A(0) = 0.

The programs for A307952, there is no canonical definition to state claims against.
-/

/-! ## A307952.P12776671460729252340

`or(∑[n], A271518(10^n-1))`
-/

namespace A307952.P12776671460729252340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A271518 (10 ^ n - 1))

end

end A307952.P12776671460729252340

/-!
# A307953: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * ((1+x)^(3*n) - A(x))^(n+1), where A(0) = 0.

The programs for A307953, there is no canonical definition to state claims against.
-/

/-! ## A307953.P13141380708446436337

`∑[A295540(A002802(n))+n]`
-/

namespace A307953.P13141380708446436337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (A002802 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307953.P13141380708446436337

/-!
# A307954: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * ((1+x)^(4*n) - A(x))^(n+1), where A(0) = 0.

The programs for A307954, there is no canonical definition to state claims against.
-/

/-! ## A307954.P561539294257537494

`or(∑{d}[n+1, #], A337167(n*(n*(n-5)+5)²))`
-/

namespace A307954.P561539294257537494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A337167 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat)

end

end A307954.P561539294257537494

/-!
# A307958: Coreful perfect numbers: numbers k such that csigma(k) = 2*k, where csigma(k) is the sum of the coreful divisors of k (A057723).

The programs for A307958, there is no canonical definition to state claims against.
-/

/-! ## A307958.P8724789719062790041

`eq[A005843(n), A057723(A028310(n))]`
-/

namespace A307958.P8724789719062790041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307958.P8724789719062790041

/-! ## A307958.P13370640043101003836

`A116966(eq[A116966(n), A336563(n+1)])`
-/

namespace A307958.P13370640043101003836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A307958.P13370640043101003836

/-! ## A307958.P10884244025730421652

`A116966(eq[A003557(n+1), A336567(n+1)])`
-/

namespace A307958.P10884244025730421652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A307958.P10884244025730421652

/-!
# A307959: Primitive coreful perfect numbers: powerful numbers k such that csigma(k) = 2*k, where csigma(k) is the sum of the coreful divisors of k (A057723).

The programs for A307959, there is no canonical definition to state claims against.
-/

/-! ## A307959.P3555176087949065458

`A133050(n+1)+A133049(n+1)`
-/

namespace A307959.P3555176087949065458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133050 (n + 1) + A133049 (n + 1)

end

end A307959.P3555176087949065458

/-! ## A307959.P2324597795664080228

`A000396(n+1)*A139257(n+1)`
-/

namespace A307959.P2324597795664080228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) * A139257 (n + 1)

end

end A307959.P2324597795664080228

/-! ## A307959.P2343076426115559523

`A000668(n+1)*A139256(n+1)`
-/

namespace A307959.P2343076426115559523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) * A139256 (n + 1)

end

end A307959.P2343076426115559523

/-! ## A307959.P7746577611286771809

`A000668(n+1)*A065125(n+2)`
-/

namespace A307959.P7746577611286771809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) * A065125 (n + 2)

end

end A307959.P7746577611286771809

/-! ## A307959.P15375743526531543769

`A139256(n+1)*A343733(n+2)`
-/

namespace A307959.P15375743526531543769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139256 (n + 1) * A343733 (n + 2)

end

end A307959.P15375743526531543769

/-!
# A307961: The number of coreful perfect numbers (A307958) below 10^n.

The programs for A307961, there is no canonical definition to state claims against.
-/

/-! ## A307961.P7322213839080026637

`A212643((C(comp[∑[n]]-n, 2)+n)^n)`
-/

namespace A307961.P7322213839080026637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212643 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n) ^ n)

end

end A307961.P7322213839080026637

/-!
# A307965: a(n) is the least prime p = prime(k) > prime(n) such that A306530(k) = prime(n).

The programs for A307965, there is no canonical definition to state claims against.
-/

/-! ## A307965.P16970790308244349078

`A166980(A371450(n))`
-/

namespace A307965.P16970790308244349078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166980 (A371450 n).toNat

end

end A307965.P16970790308244349078

/-! ## A307965.P17656947708015261536

`p?[A099375(∑[A290911(n)])]`
-/

namespace A307965.P17656947708015261536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307965.P17656947708015261536

/-!
# A307966: Sum of the largest side lengths of all integer-sided triangles with perimeter n.

The programs for A307966, there is no canonical definition to state claims against.
-/

/-! ## A307966.P9994317477501300966

`A308159(n+1)+A308108(n+1)`
-/

namespace A307966.P9994317477501300966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308159 (n + 1) + A308108 (n + 1)

end

end A307966.P9994317477501300966

/-! ## A307966.P12804811218273974104

`A308089(n+1)-A336972(n+1)`
-/

namespace A307966.P12804811218273974104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - A336972 (n + 1)

end

end A307966.P12804811218273974104

/-! ## A307966.P3611829161551291311

`A336974(n+1)-(A308160(n+1)+A308109(n+1))`
-/

namespace A307966.P3611829161551291311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336974 (n + 1) - (A308160 (n + 1) + A308109 (n + 1))

end

end A307966.P3611829161551291311

/-! ## A307966.P8288263458568299076

`A308109(n+1)+A308160(n+1)+A008763(A028242(n))`
-/

namespace A307966.P8288263458568299076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308109 (n + 1) + (A308160 (n + 1) + A008763 (A028242 n).toNat)

end

end A307966.P8288263458568299076

/-! ## A307966.P9785230226194985489

`A336973(n+1)+A336974(n+1)-A308089(n+1)`
-/

namespace A307966.P9785230226194985489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) + (A336974 (n + 1) - A308089 (n + 1))

end

end A307966.P9785230226194985489

/-! ## A307966.P1359957786671400490

`A336974(n+1)-A308096(n+1)`
-/

namespace A307966.P1359957786671400490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336974 (n + 1) - A308096 (n + 1)

end

end A307966.P1359957786671400490

/-! ## A307966.P17694523529382721371

`A308096(n+1)+A008763(A028242(n))`
-/

namespace A307966.P17694523529382721371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (n + 1) + A008763 (A028242 n).toNat

end

end A307966.P17694523529382721371

/-! ## A307966.P15962495710759610689

`A336973(n+1)-A307686(n+1)`
-/

namespace A307966.P15962495710759610689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) - A307686 (n + 1)

end

end A307966.P15962495710759610689

/-! ## A307966.P5769679795626788159

`A308089(n+1)-(A308096(n+1)+A307686(n+1))`
-/

namespace A307966.P5769679795626788159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (A308096 (n + 1) + A307686 (n + 1))

end

end A307966.P5769679795626788159

/-! ## A307966.P8433446581513123631

`A307686(n+1)+A336974(n+1)-A336972(n+1)`
-/

namespace A307966.P8433446581513123631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + (A336974 (n + 1) - A336972 (n + 1))

end

end A307966.P8433446581513123631

/-!
# A307968: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 2/(1 + k*x + sqrt(1 + 2*k*x + k*(k+4)*x^2)).

The programs for A307968, there is no canonical definition to state claims against.
-/

/-! ## A307968.P14853749836204607598

`A292861(n)+A124762(A351790(n))`
-/

namespace A307968.P14853749836204607598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 n + A124762 (A351790 n).toNat

end

end A307968.P14853749836204607598

/-! ## A307968.P14041610590647473600

`A030599(A026713(n))*A292861(n)`
-/

namespace A307968.P14041610590647473600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030599 (A026713 n).toNat * A292861 n

end

end A307968.P14041610590647473600

/-! ## A307968.P10105615174719579905

`A292861(n)+A278341(A195644(n+1))`
-/

namespace A307968.P10105615174719579905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 n + A278341 (A195644 (n + 1)).toNat

end

end A307968.P10105615174719579905

/-! ## A307968.P7734348910239692329

`A292133(n)^A003418(A094544(n))*A335452(n+1)!`
-/

namespace A307968.P7734348910239692329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292133 n : ℚ) ^ (A003418 (A094544 n).toNat : ℤ) * (Nat.factorial (A335452 (n + 1)).toNat : ℚ)

end

end A307968.P7734348910239692329

/-! ## A307968.P13948684468787354066

`A201198(A201198(n))*A292861(n)`
-/

namespace A307968.P13948684468787354066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201198 (A201198 n).toNat * A292861 n

end

end A307968.P13948684468787354066

/-!
# A307969: Coefficient of x^n in 1/(n+1) * (1 - 2*x - 2*x^2)^(n+1).

The programs for A307969, there is no canonical definition to state claims against.
-/

/-! ## A307969.P16794747009448972440

`A307968(∑[n+3])`
-/

namespace A307969.P16794747009448972440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307969.P16794747009448972440

/-! ## A307969.P1848730756215598477

`round(A307968(A055998(n+1))+(n+2)%3/6)`
-/

namespace A307969.P1848730756215598477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A307968 (A055998 (n + 1)).toNat : ℚ) + (((n + 2) % 3 : ℕ) : ℚ) / 6)

end

end A307969.P1848730756215598477

/-! ## A307969.P6580669832151673236

`A307968(A055998(n+1))+A000007(n+1)`
-/

namespace A307969.P6580669832151673236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A307969.P6580669832151673236

/-! ## A307969.P13091790571338717379

`A307968(A055998(n+1))+A000035(2*n)`
-/

namespace A307969.P13091790571338717379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 (A055998 (n + 1)).toNat + A000035 (2 * n)

end

end A307969.P13091790571338717379

/-! ## A307969.P11080404633592545184

`A307968(A055998(n+1))%A025227(n+2)`
-/

namespace A307969.P11080404633592545184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307968 (A055998 (n + 1)).toNat) (A025227 (n + 2))

end

end A307969.P11080404633592545184

/-! ## A307969.P4249859630804454778

`A007318(A000096(n))*A307968(A055998(n+1))`
-/

namespace A307969.P4249859630804454778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A307968 (A055998 (n + 1)).toNat

end

end A307969.P4249859630804454778

/-! ## A307969.P10684399408542690332

`A336709(∑[n+2])`
-/

namespace A307969.P10684399408542690332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307969.P10684399408542690332

/-!
# A307970: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3*A(x)^2.

The programs for A307970, there is no canonical definition to state claims against.
-/

/-! ## A307970.P10271788056821394986

`A000194(floor(sqrt(A273001(n))))`
-/

namespace A307970.P10271788056821394986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.sqrt (A273001 n)).toNat

end

end A307970.P10271788056821394986

/-! ## A307970.P7407826665377504252

`A000194(round(sqrt(A273001(n))))`
-/

namespace A307970.P7407826665377504252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway (Real.sqrt (A273001 n : ℝ))).toNat

end

end A307970.P7407826665377504252

/-! ## A307970.P6293554050491675213

`A000196(A354648(n)+A046741(n))`
-/

namespace A307970.P6293554050491675213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A354648 n + A046741 n).toNat

end

end A307970.P6293554050491675213

/-! ## A307970.P11996051990434939683

`A000196(A354648(n)+A105954(n))`
-/

namespace A307970.P11996051990434939683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A354648 n + A105954 n).toNat

end

end A307970.P11996051990434939683

/-! ## A307970.P7106667555566643933

`A118168(A346075(n+1))`
-/

namespace A307970.P7106667555566643933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A346075 (n + 1)).toNat

end

end A307970.P7106667555566643933

/-!
# A307971: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4*A(x)^2.

The programs for A307971, there is no canonical definition to state claims against.
-/

/-! ## A307971.P17853566050404956696

`A232748(A349061(n)+A266119(2*n+5))`
-/

namespace A307971.P17853566050404956696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (A349061 n + A266119 (2 * n + 5)).toNat

end

end A307971.P17853566050404956696

/-! ## A307971.P16348718060422017048

`A000196(A036592(n))-A011731(A309301(n))`
-/

namespace A307971.P16348718060422017048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A036592 n).toNat - A011731 (A309301 n).toNat

end

end A307971.P16348718060422017048

/-!
# A307972: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4 + x^5*A(x)^2.

The programs for A307972, there is no canonical definition to state claims against.
-/

/-! ## A307972.P13344441129870144051

`A346074(A015070(n)-1+n)`
-/

namespace A307972.P13344441129870144051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346074 (A015070 n - 1 + (n : ℤ)).toNat

end

end A307972.P13344441129870144051

/-! ## A307972.P10194850483809484870

`A346074(n-(1-A015070(n)))`
-/

namespace A307972.P10194850483809484870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346074 ((n : ℤ) - (1 - A015070 n)).toNat

end

end A307972.P10194850483809484870

/-! ## A307972.P16026982652817366354

`A346074(A077168(floor(n-atan(n))))`
-/

namespace A307972.P16026982652817366354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346074 (A077168 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat).toNat

end

end A307972.P16026982652817366354

/-!
# A307973: Numbers beginning with a vowel in Hindi.

The programs for A307973, there is no canonical definition to state claims against.
-/

/-! ## A307973.P797397607676724336

`lt[A138150(n+1), A138532(n+2)]`
-/

namespace A307973.P797397607676724336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307973.P797397607676724336

/-! ## A307973.P293981636433290161

`lt[A182936(A144677(n)), A138532(n+2)]`
-/

namespace A307973.P293981636433290161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (A144677 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307973.P293981636433290161

/-! ## A307973.P5352033550331651934

`lt[A060510(A319480(n+2)), A138532(n+2)]`
-/

namespace A307973.P5352033550331651934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 (A319480 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307973.P5352033550331651934

/-! ## A307973.P18207922382147194290

`lt[A333382(A375126(n)), A138532(n+2)]`
-/

namespace A307973.P18207922382147194290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A375126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307973.P18207922382147194290

/-! ## A307973.P13973127450718613136

`lt[A035195(A297794(n+1)), A138532(n+2)]`
-/

namespace A307973.P13973127450718613136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A297794 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307973.P13973127450718613136

/-!
# A307975: G.f. A(x) satisfies: A(x) = x * exp(Sum_{k>=1} (A(x^k) + sigma(k)*x^k)/k).

The programs for A307975, there is no canonical definition to state claims against.
-/

/-! ## A307975.P8974925236296302856

`A066490(∑[A101850(n)])`
-/

namespace A307975.P8974925236296302856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307975.P8974925236296302856

/-! ## A307975.P8823379948068953251

`A074286(A117758(n)%A071363(n+1))`
-/

namespace A307975.P8823379948068953251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (Int.tmod (A117758 n) (A071363 (n + 1))).toNat

end

end A307975.P8823379948068953251

/-! ## A307975.P13671854530409686599

`Δ[ceil(sqrt(A231672(n!)))]`
-/

namespace A307975.P13671854530409686599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A231672 (Nat.factorial n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307975.P13671854530409686599

/-!
# A307976: G.f. A(x) satisfies: A(x) = x * exp(Sum_{k>=1} (A(x^k) + sigma_2(k)*x^k)/k).

The programs for A307976, there is no canonical definition to state claims against.
-/

/-! ## A307976.P14828625552226397281

`Δ[A137588(A084136(n))]`
-/

namespace A307976.P14828625552226397281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A084136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307976.P14828625552226397281

/-! ## A307976.P13168788266128788008

`A123621(A360272(n+1))`
-/

namespace A307976.P13168788266128788008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A360272 (n + 1)).toNat

end

end A307976.P13168788266128788008

/-! ## A307976.P6643036930181302864

`A123621(A376574(n+1))`
-/

namespace A307976.P6643036930181302864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A376574 (n + 1)).toNat

end

end A307976.P6643036930181302864

/-!
# A307978: Expansion of e.g.f. exp((sinh(x) - sin(x))/2).

The programs for A307978, there is no canonical definition to state claims against.
-/

/-! ## A307978.P14059394993807477729

`and(A009227(n), A271006(A087051(n)))`
-/

namespace A307978.P14059394993807477729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009227 n) (A271006 (A087051 n).toNat)

end

end A307978.P14059394993807477729

/-! ## A307978.P13309502758925491925

`A365911(n)/A123398(A183566(n+11))`
-/

namespace A307978.P13309502758925491925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365911 n : ℚ) / (A123398 (A183566 (n + 11)).toNat : ℚ)

end

end A307978.P13309502758925491925

/-!
# A307979: Expansion of e.g.f. exp((cosh(x) - cos(x))/2) (even powers only).

The programs for A307979, there is no canonical definition to state claims against.
-/

/-! ## A307979.P4516933686786731949

`A004526(ceil(n^n/n!)+n^n)`
-/

namespace A307979.P4516933686786731949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌈(n ^ n : ℚ) / (Nat.factorial n : ℚ)⌉ + (n ^ n : ℤ)).toNat

end

end A307979.P4516933686786731949

/-! ## A307979.P12796874468298733685

`A187181(A086331(n)+n)`
-/

namespace A307979.P12796874468298733685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A086331 n + (n : ℤ)).toNat

end

end A307979.P12796874468298733685

/-!
# A307980: Numbers k whose number of divisors is the square of the number of decimal digits of k.

The programs for A307980, the canonical program `A307980.P14907760515223499407` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307980 has offset 1).

The definition of A307980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307980.P14907760515223499407

`eq[(2*A055642(n))², A145154(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A307980

/-- `eq[(2*A055642(n))², A145154(n)]` -/
def P14907760515223499407.Spec : Prop :=
  ∀ n, (P14907760515223499407.a n : ℤ) = A307980 (n + 1)

theorem P14907760515223499407.correct : P14907760515223499407.Spec := by
  intro n
  simp only [A307980, Nat.add_sub_cancel]

end A307980

/-! ## A307980.P3706822662030316557

`eq[A055642(n)², A000005(abs(1-n)+1)]`
-/

namespace A307980.P3706822662030316557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307980.P3706822662030316557

namespace A307980

/-- `eq[A055642(n)², A000005(abs(1-n)+1)]` -/
def P3706822662030316557.Spec : Prop :=
  ∀ n, (P3706822662030316557.a n : ℤ) = A307980 (n + 1)

end A307980

/-! ## A307980.P16941659905326804872

`eq[A055642(n+1)², A000005(n+1)]+1`
-/

namespace A307980.P16941659905326804872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A307980.P16941659905326804872

namespace A307980

/-- `eq[A055642(n+1)², A000005(n+1)]+1` -/
def P16941659905326804872.Spec : Prop :=
  ∀ n, (P16941659905326804872.a n : ℤ) = A307980 (n + 1)

end A307980

/-! ## A307980.P2229404558064916756

`eq[A055642(n)², A002265(A145154(n))]`
-/

namespace A307980.P2229404558064916756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307980.P2229404558064916756

namespace A307980

/-- `eq[A055642(n)², A002265(A145154(n))]` -/
def P2229404558064916756.Spec : Prop :=
  ∀ n, (P2229404558064916756.a n : ℤ) = A307980 (n + 1)

end A307980

/-! ## A307980.P13786852442794343849

`eq[A032741(n)+1, A004218(n+1)²]`
-/

namespace A307980.P13786852442794343849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307980.P13786852442794343849

namespace A307980

/-- `eq[A032741(n)+1, A004218(n+1)²]` -/
def P13786852442794343849.Spec : Prop :=
  ∀ n, (P13786852442794343849.a n : ℤ) = A307980 (n + 1)

end A307980

/-! ## A307980.P16027088185573051150

`eq[A004218(n+1)², A000005(A028310(n))]`
-/

namespace A307980.P16027088185573051150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307980.P16027088185573051150

namespace A307980

/-- `eq[A004218(n+1)², A000005(A028310(n))]` -/
def P16027088185573051150.Spec : Prop :=
  ∀ n, (P16027088185573051150.a n : ℤ) = A307980 (n + 1)

end A307980

/-! ## A307980.P3809263693134364307

`eq[A055642(n)², A277692(2*n+1)]`
-/

namespace A307980.P3809263693134364307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307980.P3809263693134364307

namespace A307980

/-- `eq[A055642(n)², A277692(2*n+1)]` -/
def P3809263693134364307.Spec : Prop :=
  ∀ n, (P3809263693134364307.a n : ℤ) = A307980 (n + 1)

end A307980

/-! ## A307980.P12373485748493915008

`eq[A055642(n)², A183063(A004277(n))]`
-/

namespace A307980.P12373485748493915008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307980.P12373485748493915008

namespace A307980

/-- `eq[A055642(n)², A183063(A004277(n))]` -/
def P12373485748493915008.Spec : Prop :=
  ∀ n, (P12373485748493915008.a n : ℤ) = A307980 (n + 1)

end A307980

/-! ## A307980.P4045972075254554043

`eq[A277692(2*n+1)/A055642(n+1), A055642(n+1)]`
-/

namespace A307980.P4045972075254554043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277692 (2 * n + 1) : ℚ) / (A055642 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A307980.P4045972075254554043

namespace A307980

/-- `eq[A277692(2*n+1)/A055642(n+1), A055642(n+1)]` -/
def P4045972075254554043.Spec : Prop :=
  ∀ n, (P4045972075254554043.a n : ℤ) = A307980 (n + 1)

end A307980

/-!
# A307984: a(n) is the number of Q-bases which can be built from the set {log(1),...,log(n)}.

The programs for A307984, there is no canonical definition to state claims against.
-/

/-! ## A307984.P15233060773599457876

`A370585(A008554(n+1)+1)`
-/

namespace A307984.P15233060773599457876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370585 (A008554 (n + 1) + 1).toNat

end

end A307984.P15233060773599457876

/-! ## A307984.P13781537476451699046

`A370585(A229621(n+1)+1)`
-/

namespace A307984.P13781537476451699046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370585 (A229621 (n + 1) + 1).toNat

end

end A307984.P13781537476451699046

/-! ## A307984.P17807460764462892368

`A370585(C(A034837(n+1), n))`
-/

namespace A307984.P17807460764462892368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370585 (Nat.choose (A034837 (n + 1)).toNat n)

end

end A307984.P17807460764462892368

/-! ## A307984.P8357284390307892768

`A370585(C(A249818(n+1), n))`
-/

namespace A307984.P8357284390307892768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370585 (Nat.choose (A249818 (n + 1)).toNat n)

end

end A307984.P8357284390307892768

/-!
# A307985: Number of integer-sided triangles with perimeter n and sides a, b, and c such that a <= b <= c and b|n.

The programs for A307985, the canonical program `A307985.P15172283354558167699` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307985 has offset 1).

The definition of A307985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307985.P6860856584594851061

`ceil(Δ[(floor(n/3)/2)²])`
-/

namespace A307985.P6860856584594851061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊(n : ℚ) / 3⌋ : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A307985.P6860856584594851061

namespace A307985

/-- `ceil(Δ[(floor(n/3)/2)²])` -/
def P6860856584594851061.Spec : Prop :=
  ∀ n, P6860856584594851061.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P8002482693465628997

`C(n, 2)%3*ceil(n/6)`
-/

namespace A307985.P8002482693465628997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 % 3 : ℕ) : ℤ) * ⌈(n : ℚ) / 6⌉

end

end A307985.P8002482693465628997

namespace A307985

/-- `C(n, 2)%3*ceil(n/6)` -/
def P8002482693465628997.Spec : Prop :=
  ∀ n, P8002482693465628997.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P17892913211298484035

`round(gcd(n+1, (n+1)%3)/6)`
-/

namespace A307985.P17892913211298484035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd (n + 1) ((n + 1) % 3) : ℚ) / 6)

end

end A307985.P17892913211298484035

namespace A307985

/-- `round(gcd(n+1, (n+1)%3)/6)` -/
def P17892913211298484035.Spec : Prop :=
  ∀ n, P17892913211298484035.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P5227905495938267004

`round(∑[∑[n+5]]%(n+1)/2)`
-/

namespace A307985.P5227905495938267004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℚ) / 2)

end

end A307985.P5227905495938267004

namespace A307985

/-- `round(∑[∑[n+5]]%(n+1)/2)` -/
def P5227905495938267004.Spec : Prop :=
  ∀ n, P5227905495938267004.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P7663700700863863932

`round(xor(1, n)/6)*Δ[floor(n/3)]`
-/

namespace A307985.P7663700700863863932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6) * (f1 (n + 1) - f1 n)

end

end A307985.P7663700700863863932

namespace A307985

/-- `round(xor(1, n)/6)*Δ[floor(n/3)]` -/
def P7663700700863863932.Spec : Prop :=
  ∀ n, P7663700700863863932.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P15172283354558167699

`a(n-3)+a(n-6)-a(n-9)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=0, a(5)=1, a(6)=0, a(7)=0, a(8)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A307985

/-- `a(n-3)+a(n-6)-a(n-9)` -/
def P15172283354558167699.Spec : Prop :=
  ∀ n, P15172283354558167699.a n = A307985 (n + 1)

theorem P15172283354558167699.correct : P15172283354558167699.Spec := by
  intro n
  simp only [A307985, Nat.add_sub_cancel]

end A307985

/-! ## A307985.P17146657153569544220

`round(A175676(n+1)/2)`
-/

namespace A307985.P17146657153569544220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175676 (n + 1) : ℚ) / 2)

end

end A307985.P17146657153569544220

namespace A307985

/-- `round(A175676(n+1)/2)` -/
def P17146657153569544220.Spec : Prop :=
  ∀ n, P17146657153569544220.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P16419361586036504670

`Δ[floor((A008620(n)/2)²)]`
-/

namespace A307985.P16419361586036504670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A008620 n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307985.P16419361586036504670

namespace A307985

/-- `Δ[floor((A008620(n)/2)²)]` -/
def P16419361586036504670.Spec : Prop :=
  ∀ n, P16419361586036504670.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P17657799115451071375

`A142150(A267806(n))`
-/

namespace A307985.P17657799115451071375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A267806 n).toNat

end

end A307985.P17657799115451071375

namespace A307985

/-- `A142150(A267806(n))` -/
def P17657799115451071375.Spec : Prop :=
  ∀ n, P17657799115451071375.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P9727928377453052080

`A175676(A028242(n)+1)`
-/

namespace A307985.P9727928377453052080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A028242 n + 1).toNat

end

end A307985.P9727928377453052080

namespace A307985

/-- `A175676(A028242(n)+1)` -/
def P9727928377453052080.Spec : Prop :=
  ∀ n, P9727928377453052080.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P836676481798662032

`A110654(A175676(n+1))`
-/

namespace A307985.P836676481798662032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A175676 (n + 1)).toNat

end

end A307985.P836676481798662032

namespace A307985

/-- `A110654(A175676(n+1))` -/
def P836676481798662032.Spec : Prop :=
  ∀ n, P836676481798662032.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P17308379259087216601

`A022003(n)*A103221(n)`
-/

namespace A307985.P17308379259087216601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n * A103221 n

end

end A307985.P17308379259087216601

namespace A307985

/-- `A022003(n)*A103221(n)` -/
def P17308379259087216601.Spec : Prop :=
  ∀ n, P17308379259087216601.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P17704108921638097512

`A022003(n)*A117910(n)`
-/

namespace A307985.P17704108921638097512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n * A117910 n

end

end A307985.P17704108921638097512

namespace A307985

/-- `A022003(n)*A117910(n)` -/
def P17704108921638097512.Spec : Prop :=
  ∀ n, P17704108921638097512.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P3691677380356833449

`A008615(n)%A003417(n)`
-/

namespace A307985.P3691677380356833449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008615 n) (A003417 n)

end

end A307985.P3691677380356833449

namespace A307985

/-- `A008615(n)%A003417(n)` -/
def P3691677380356833449.Spec : Prop :=
  ∀ n, P3691677380356833449.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P15274419122398043588

`A074378(n)%A003417(n)`
-/

namespace A307985.P15274419122398043588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074378 n) (A003417 n)

end

end A307985.P15274419122398043588

namespace A307985

/-- `A074378(n)%A003417(n)` -/
def P15274419122398043588.Spec : Prop :=
  ∀ n, P15274419122398043588.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P7813637722125100272

`A139593(n)%A003417(n)`
-/

namespace A307985.P7813637722125100272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139593 n) (A003417 n)

end

end A307985.P7813637722125100272

namespace A307985

/-- `A139593(n)%A003417(n)` -/
def P7813637722125100272.Spec : Prop :=
  ∀ n, P7813637722125100272.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P862525635515000229

`Δ[A002620(A002264(n)+1)]`
-/

namespace A307985.P862525635515000229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002264 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307985.P862525635515000229

namespace A307985

/-- `Δ[A002620(A002264(n)+1)]` -/
def P862525635515000229.Spec : Prop :=
  ∀ n, P862525635515000229.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P17757580076848089216

`A008615(n*Δ[A008620(n)])`
-/

namespace A307985.P17757580076848089216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A307985.P17757580076848089216

namespace A307985

/-- `A008615(n*Δ[A008620(n)])` -/
def P17757580076848089216.Spec : Prop :=
  ∀ n, P17757580076848089216.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P4556895569693869358

`A004526(A175676(n+1)+1)`
-/

namespace A307985.P4556895569693869358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A175676 (n + 1) + 1).toNat

end

end A307985.P4556895569693869358

namespace A307985

/-- `A004526(A175676(n+1)+1)` -/
def P4556895569693869358.Spec : Prop :=
  ∀ n, P4556895569693869358.a n = A307985 (n + 1)

end A307985

/-! ## A307985.P4181187644915855567

`A123108(A175676(n+1)+1)`
-/

namespace A307985.P4181187644915855567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A175676 (n + 1) + 1).toNat

end

end A307985.P4181187644915855567

namespace A307985

/-- `A123108(A175676(n+1)+1)` -/
def P4181187644915855567.Spec : Prop :=
  ∀ n, P4181187644915855567.a n = A307985 (n + 1)

end A307985

/-!
# A307987: Number of integer-sided triangles with perimeter n and at least one nonsquarefree side.

The programs for A307987, there is no canonical definition to state claims against.
-/

/-! ## A307987.P17235252950069209750

`A005044(n+1)-A308061(n+1)`
-/

namespace A307987.P17235252950069209750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308061 (n + 1)

end

end A307987.P17235252950069209750

/-! ## A307987.P16231972745355914521

`Δ[A026810(n+1)]-A308061(n+1)`
-/

namespace A307987.P16231972745355914521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A308061 (n + 1)

end

end A307987.P16231972745355914521

/-! ## A307987.P7866178728346717035

`A308067(n+1)+A308068(n+1)-A308061(n+1)`
-/

namespace A307987.P7866178728346717035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (n + 1) + (A308068 (n + 1) - A308061 (n + 1))

end

end A307987.P7866178728346717035

/-! ## A307987.P7025591457548341756

`A005044(n+1)-A308116(n+1)/(n+1)`
-/

namespace A307987.P7025591457548341756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005044 (n + 1) : ℚ) - (A308116 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A307987.P7025591457548341756

/-! ## A307987.P17166142450742317205

`(A308089(n+1)-A308116(n+1))/(n+1)`
-/

namespace A307987.P17166142450742317205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308089 (n + 1) - A308116 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A307987.P17166142450742317205

/-! ## A307987.P3831646547837365174

`A005044(n+1)-(A308118(n+1)+A308117(n+1))`
-/

namespace A307987.P3831646547837365174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A308118 (n + 1) + A308117 (n + 1))

end

end A307987.P3831646547837365174

/-! ## A307987.P14191681998050117515

`A337086(n+1)+A337087(n+1)-A308061(n+1)`
-/

namespace A307987.P14191681998050117515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337086 (n + 1) + (A337087 (n + 1) - A308061 (n + 1))

end

end A307987.P14191681998050117515

/-!
# A307989: a(n) = n - pi(2*n) + pi(n-1), where pi is the prime counting function.

The programs for A307989, the canonical program `A307989.P2573378976177465253` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307989 has offset 1).

The definition of A307989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307989.P9420988974038816448

`n+1-A035250(n+1)`
-/

namespace A307989.P9420988974038816448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A035250 (n + 1)

end

end A307989.P9420988974038816448

namespace A307989

/-- `n+1-A035250(n+1)` -/
def P9420988974038816448.Spec : Prop :=
  ∀ n, P9420988974038816448.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P5214871815853839014

`ceil(A226983(n+1)+n/2)`
-/

namespace A307989.P5214871815853839014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A226983 (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A307989.P5214871815853839014

namespace A307989

/-- `ceil(A226983(n+1)+n/2)` -/
def P5214871815853839014.Spec : Prop :=
  ∀ n, P5214871815853839014.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P11910338801372516540

`(abs(A056171(2*n+1)-n)+1)%(n+1)`
-/

namespace A307989.P11910338801372516540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (|A056171 (2 * n + 1) - (n : ℤ)| + 1) (n + 1 : ℤ)

end

end A307989.P11910338801372516540

namespace A307989

/-- `(abs(A056171(2*n+1)-n)+1)%(n+1)` -/
def P11910338801372516540.Spec : Prop :=
  ∀ n, P11910338801372516540.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P2573378976177465253

`A095117(n)-∑[A101264(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A307989

/-- `A095117(n)-∑[A101264(n)]` -/
def P2573378976177465253.Spec : Prop :=
  ∀ n, P2573378976177465253.a n = A307989 (n + 1)

theorem P2573378976177465253.correct : P2573378976177465253.Spec := by
  intro n
  simp only [A307989, Nat.add_sub_cancel]

end A307989

/-! ## A307989.P14878645380267207624

`A075084(n+1)+A057428(n)`
-/

namespace A307989.P14878645380267207624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075084 (n + 1) + A057428 n

end

end A307989.P14878645380267207624

namespace A307989

/-- `A075084(n+1)+A057428(n)` -/
def P14878645380267207624.Spec : Prop :=
  ∀ n, P14878645380267207624.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P12361157469730674884

`A226983(n+1)+A110654(n)`
-/

namespace A307989.P12361157469730674884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226983 (n + 1) + A110654 n

end

end A307989.P12361157469730674884

namespace A307989

/-- `A226983(n+1)+A110654(n)` -/
def P12361157469730674884.Spec : Prop :=
  ∀ n, P12361157469730674884.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P14662078484595698504

`A230980(n)+A210469(n+1)`
-/

namespace A307989.P14662078484595698504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A210469 (n + 1)

end

end A307989.P14662078484595698504

namespace A307989

/-- `A230980(n)+A210469(n+1)` -/
def P14662078484595698504.Spec : Prop :=
  ∀ n, P14662078484595698504.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P6993820610066344036

`A075084(n+1)-A057427(n)`
-/

namespace A307989.P6993820610066344036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075084 (n + 1) - A057427 n

end

end A307989.P6993820610066344036

namespace A307989

/-- `A075084(n+1)-A057427(n)` -/
def P6993820610066344036.Spec : Prop :=
  ∀ n, P6993820610066344036.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P17019314971996841553

`A307912(n+1)+A066247(n+1)`
-/

namespace A307989.P17019314971996841553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1) + A066247 (n + 1)

end

end A307989.P17019314971996841553

namespace A307989

/-- `A307912(n+1)+A066247(n+1)` -/
def P17019314971996841553.Spec : Prop :=
  ∀ n, P17019314971996841553.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P3623246644173745393

`A014684(n+1)-A108954(n+1)`
-/

namespace A307989.P3623246644173745393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A108954 (n + 1)

end

end A307989.P3623246644173745393

namespace A307989

/-- `A014684(n+1)-A108954(n+1)` -/
def P3623246644173745393.Spec : Prop :=
  ∀ n, P3623246644173745393.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P12361847785834959635

`A064427(n+1)-A099802(n+1)`
-/

namespace A307989.P12361847785834959635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1) - A099802 (n + 1)

end

end A307989.P12361847785834959635

namespace A307989

/-- `A064427(n+1)-A099802(n+1)` -/
def P12361847785834959635.Spec : Prop :=
  ∀ n, P12361847785834959635.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P11007984122561000559

`A226983(n+1)+n-A004526(n)`
-/

namespace A307989.P11007984122561000559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226983 (n + 1) + ((n : ℤ) - A004526 n)

end

end A307989.P11007984122561000559

namespace A307989

/-- `A226983(n+1)+n-A004526(n)` -/
def P11007984122561000559.Spec : Prop :=
  ∀ n, P11007984122561000559.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P14809149450871525624

`A064427(n+1)-A000720(2*(n+1))`
-/

namespace A307989.P14809149450871525624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1) - A000720 (2 * (n + 1))

end

end A307989.P14809149450871525624

namespace A307989

/-- `A064427(n+1)-A000720(2*(n+1))` -/
def P14809149450871525624.Spec : Prop :=
  ∀ n, P14809149450871525624.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P17720827978616601704

`n+1-A028310(A056171(2*n+1))`
-/

namespace A307989.P17720827978616601704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A028310 (A056171 (2 * n + 1)).toNat

end

end A307989.P17720827978616601704

namespace A307989

/-- `n+1-A028310(A056171(2*n+1))` -/
def P17720827978616601704.Spec : Prop :=
  ∀ n, P17720827978616601704.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P4765282024250200910

`n-(A057428(n)+A056171(2*n+1))`
-/

namespace A307989.P4765282024250200910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A057428 n + A056171 (2 * n + 1))

end

end A307989.P4765282024250200910

namespace A307989

/-- `n-(A057428(n)+A056171(2*n+1))` -/
def P4765282024250200910.Spec : Prop :=
  ∀ n, P4765282024250200910.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P8043672948746560977

`(n*A035250(n+1))%A000027(n+1)`
-/

namespace A307989.P8043672948746560977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A035250 (n + 1)) (A000027 (n + 1))

end

end A307989.P8043672948746560977

namespace A307989

/-- `(n*A035250(n+1))%A000027(n+1)` -/
def P8043672948746560977.Spec : Prop :=
  ∀ n, P8043672948746560977.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P8636738872998130458

`A000720(n+1)+A210469(n+1)-A010051(n+1)`
-/

namespace A307989.P8636738872998130458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A210469 (n + 1) - A010051 (n + 1))

end

end A307989.P8636738872998130458

namespace A307989

/-- `A000720(n+1)+A210469(n+1)-A010051(n+1)` -/
def P8636738872998130458.Spec : Prop :=
  ∀ n, P8636738872998130458.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P2663497092318072696

`A226983(n+1)+A004526(n+1)`
-/

namespace A307989.P2663497092318072696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226983 (n + 1) + A004526 (n + 1)

end

end A307989.P2663497092318072696

namespace A307989

/-- `A226983(n+1)+A004526(n+1)` -/
def P2663497092318072696.Spec : Prop :=
  ∀ n, P2663497092318072696.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P11580692973104433289

`A113638(n+1)-A056171(2*(n+1))`
-/

namespace A307989.P11580692973104433289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 (n + 1) - A056171 (2 * (n + 1))

end

end A307989.P11580692973104433289

namespace A307989

/-- `A113638(n+1)-A056171(2*(n+1))` -/
def P11580692973104433289.Spec : Prop :=
  ∀ n, P11580692973104433289.a n = A307989 (n + 1)

end A307989

/-! ## A307989.P16114552198352284613

`A077463(A060756(A075084(n+1)))`
-/

namespace A307989.P16114552198352284613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077463 (A060756 (A075084 (n + 1)).toNat).toNat

end

end A307989.P16114552198352284613

namespace A307989

/-- `A077463(A060756(A075084(n+1)))` -/
def P16114552198352284613.Spec : Prop :=
  ∀ n, P16114552198352284613.a n = A307989 (n + 1)

end A307989

/-!
# A307990: Number of partitions of n into 2 distinct nonadjacent prime parts.

The programs for A307990, there is no canonical definition to state claims against.
-/

/-! ## A307990.P15422792997599984927

`A117929(n+1)-char[A001043(n+1)-1]`
-/

namespace A307990.P15422792997599984927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A307990.P15422792997599984927

/-! ## A307990.P17411719996051634129

`A073490(A010066(n)+A001678(n))`
-/

namespace A307990.P17411719996051634129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A010066 n + A001678 n).toNat

end

end A307990.P17411719996051634129

/-! ## A307990.P7008256544090265412

`A007968(and(A180001(n+1), A303815(n)))`
-/

namespace A307990.P7008256544090265412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (Int.land (A180001 (n + 1)) (A303815 n)).toNat

end

end A307990.P7008256544090265412

/-! ## A307990.P9905825522087145406

`A124761(A064722(n+1)+A028364(n))`
-/

namespace A307990.P9905825522087145406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A064722 (n + 1) + A028364 n).toNat

end

end A307990.P9905825522087145406

/-! ## A307990.P10115836400572559328

`A037825(A281171(n+1)+A194594(n+1))`
-/

namespace A307990.P10115836400572559328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A281171 (n + 1) + A194594 (n + 1)).toNat

end

end A307990.P10115836400572559328

/-!
# A307994: G.f. A(x) satisfies: A(x) = x + x^2 + x^3 + x^4 * (1 + A(x) + A(x^2) + A(x^3) + ...).

The programs for A307994, there is no canonical definition to state claims against.
-/

/-! ## A307994.P14826623505312920402

`A185679(A006206(n+1)^gcd(2, n+1))`
-/

namespace A307994.P14826623505312920402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A006206 (n + 1) ^ Nat.gcd 2 (n + 1)).toNat

end

end A307994.P14826623505312920402

/-! ## A307994.P16039704712192942144

`A081604(A058278(n)^A000034(n))`
-/

namespace A307994.P16039704712192942144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.roundAway ((A058278 n : ℚ) ^ (A000034 n : ℤ))).toNat

end

end A307994.P16039704712192942144

/-! ## A307994.P11104741413259237345

`A185679(A006206(n+1)^A000034(n))`
-/

namespace A307994.P11104741413259237345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (SequenceMachineLib.roundAway ((A006206 (n + 1) : ℚ) ^ (A000034 n : ℤ))).toNat

end

end A307994.P11104741413259237345

/-!
# A307996: Expansion of e.g.f. exp(1 - exp(x)*(1 - 2*x)).

The programs for A307996, there is no canonical definition to state claims against.
-/

/-! ## A307996.P3914466261589855554

`A024417(2*A182969(n))`
-/

namespace A307996.P3914466261589855554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (2 * A182969 n).toNat

end

end A307996.P3914466261589855554

/-! ## A307996.P9349857520796110865

`A066888(6*A111529(n))`
-/

namespace A307996.P9349857520796110865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (6 * A111529 n).toNat

end

end A307996.P9349857520796110865

/-!
# A307997: a(n) is the sum of A023896(k) over the totatives of n.

The programs for A307997, there is no canonical definition to state claims against.
-/

/-! ## A307997.P17802525815247530002

`ceil(A333291(n+1)/2)`
-/

namespace A307997.P17802525815247530002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333291 (n + 1) : ℚ) / 2⌉

end

end A307997.P17802525815247530002

/-! ## A307997.P12588839882572529701

`or(round(A333291(n+1)/2), A000007(n))`
-/

namespace A307997.P12588839882572529701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A333291 (n + 1) : ℚ) / 2)) (A000007 n)

end

end A307997.P12588839882572529701

/-! ## A307997.P17717915304070542366

`round(A333291(n+1)/2)^A075852(C(2, n+2))`
-/

namespace A307997.P17717915304070542366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A333291 (n + 1) : ℚ) / 2) : ℚ) ^ (A075852 (Nat.choose 2 (n + 2)) : ℤ)

end

end A307997.P17717915304070542366

/-! ## A307997.P6281719043882555534

`round(A000007(n+1)+A333291(n+1)/2)`
-/

namespace A307997.P6281719043882555534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℚ) + (A333291 (n + 1) : ℚ) / 2)

end

end A307997.P6281719043882555534

/-! ## A307997.P7580478068855435525

`round(A333291(n+1)/2*A007318(C(n, 2)))`
-/

namespace A307997.P7580478068855435525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A333291 (n + 1) : ℚ) / 2 * (A007318 (Nat.choose n 2) : ℚ))

end

end A307997.P7580478068855435525

/-! ## A307997.P15226359439055966952

`A014682(A333291(n+1)+1)`
-/

namespace A307997.P15226359439055966952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A333291 (n + 1) + 1).toNat

end

end A307997.P15226359439055966952

/-!
# A307998: Irregular triangle read by rows, n > 0 and k = 0..PrimePi(n): T(n, k) is the number of Q-linearly independent subsets of { log(1), ..., log(n) } with k elements (where PrimePi corresponds to A000720, the prime-counting function).

The programs for A307998, there is no canonical definition to state claims against.
-/

/-! ## A307998.P11828085642708484091

`A047040(lt[A179462(n+5), A249255(n+1)])`
-/

namespace A307998.P11828085642708484091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179462 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307998.P11828085642708484091

/-! ## A307998.P12007661401764344898

`A023996(n)+A007895(A184955(n))`
-/

namespace A307998.P12007661401764344898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023996 n + A007895 (A184955 n).toNat

end

end A307998.P12007661401764344898

/-! ## A307998.P12562801625513798968

`A047040(lt[A128488(2*n+3), A249255(n+1)])`
-/

namespace A307998.P12562801625513798968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128488 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307998.P12562801625513798968

/-! ## A307998.P11605696825073066043

`A355147(∑[A254609(n)!])`
-/

namespace A307998.P11605696825073066043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A254609 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355147 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307998.P11605696825073066043

/-! ## A307998.P13526242510458581334

`A023996(A184955(n)²+n)`
-/

namespace A307998.P13526242510458581334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023996 (A184955 n ^ 2 + (n : ℤ)).toNat

end

end A307998.P13526242510458581334

/-!
# A307999: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * (1 - (-1)^n*A(x))^(n+1), where A(0) = 0.

The programs for A307999, there is no canonical definition to state claims against.
-/

/-! ## A307999.P12473835307185406869

`A329358(∑[∏[∏[2-n²%3]-1]])`
-/

namespace A307999.P12473835307185406869
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307999.P12473835307185406869

/-! ## A307999.P3200471810012786197

`a(n-2)*A162779(a(n-2))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A307999.P3200471810012786197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 2) * A162779 (a (n - 2)).toNat

end

end A307999.P3200471810012786197

