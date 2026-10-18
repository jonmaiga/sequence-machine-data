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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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

/-!
# A180501: Triangle read by row. T(n,m) gives the number of isomorphism classes of arrangements of n pseudolines and m double pseudolines in the projective plane.

The programs for A180501, there is no canonical definition to state claims against.
-/

/-! ## A180501.P6063905397271536463

`A156070(A054179(n))`
-/

namespace A180501.P6063905397271536463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A054179 n).toNat

end

end A180501.P6063905397271536463

/-! ## A180501.P4304015489245894132

`A360362(A006723(n))`
-/

namespace A180501.P4304015489245894132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360362 (A006723 n).toNat

end

end A180501.P4304015489245894132

/-! ## A180501.P13055064801244820296

`A087343(A293169(n))`
-/

namespace A180501.P13055064801244820296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087343 (A293169 n).toNat

end

end A180501.P13055064801244820296

/-! ## A180501.P17084207076887935373

`A095392(A351345(n))`
-/

namespace A180501.P17084207076887935373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095392 (A351345 n).toNat

end

end A180501.P17084207076887935373

/-! ## A180501.P7060239618098699644

`A343886(A119336(n))`
-/

namespace A180501.P7060239618098699644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343886 (A119336 n).toNat

end

end A180501.P7060239618098699644

/-!
# A180502: Triangle read by row. T(n,m) gives the number of isomorphism classes of arrangements of n pseudolines and m double pseudolines in the Moebius strip.

The programs for A180502, there is no canonical definition to state claims against.
-/

/-! ## A180502.P18398745824614837982

`A144136(C(n, 7)+1)`
-/

namespace A180502.P18398745824614837982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144136 (Nat.choose n 7 + 1)

end

end A180502.P18398745824614837982

/-! ## A180502.P2022780917841461330

`A144136(A212386(n))`
-/

namespace A180502.P2022780917841461330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144136 (A212386 n).toNat

end

end A180502.P2022780917841461330

/-! ## A180502.P9646885866026583623

`A125294(A293169(n))`
-/

namespace A180502.P9646885866026583623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125294 (A293169 n).toNat

end

end A180502.P9646885866026583623

/-! ## A180502.P1642597583884490330

`A144136(A275425(n))`
-/

namespace A180502.P1642597583884490330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144136 (A275425 n).toNat

end

end A180502.P1642597583884490330

/-! ## A180502.P15047710630029637330

`A144136(A306852(n))`
-/

namespace A180502.P15047710630029637330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144136 (A306852 n).toNat

end

end A180502.P15047710630029637330

/-!
# A180506: The largest palindromic prime dividing n, or 0 if such a prime does not exist.

The programs for A180506, there is no canonical definition to state claims against.
-/

/-! ## A180506.P2621035210662231780

`∑{p}[A006530(A087999(n+2)), #]`
-/

namespace A180506.P2621035210662231780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087999 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A180506.P2621035210662231780

/-! ## A180506.P15220002201400753482

`A006530(A087999(n+2))%A088000(n+2)`
-/

namespace A180506.P15220002201400753482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A087999 (n + 2)).toNat) (A088000 (n + 2))

end

end A180506.P15220002201400753482

/-! ## A180506.P7756468198635810092

`A006530(A087999(2*(n+2)))%A087999(2*(n+2))`
-/

namespace A180506.P7756468198635810092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A087999 (2 * (n + 2))).toNat) (A087999 (2 * (n + 2)))

end

end A180506.P7756468198635810092

/-! ## A180506.P16108659900188208066

`∑{p}[A006530(A184392(n+2)), #]`
-/

namespace A180506.P16108659900188208066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A184392 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A180506.P16108659900188208066

/-! ## A180506.P13220637374004535659

`A006530(A184392(n+2))%A088000(n+2)`
-/

namespace A180506.P13220637374004535659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A184392 (n + 2)).toNat) (A088000 (n + 2))

end

end A180506.P13220637374004535659

/-! ## A180506.P4374514001975102607

`∑{d}[A006530(A184392(n+2)), A006530(#)]-1`
-/

namespace A180506.P4374514001975102607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A184392 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006530 d - 1

end

end A180506.P4374514001975102607

/-!
# A180507: Numbers k such that k^2 + 1 = p*q, p and q prime with p == q (mod k).

The programs for A180507, there is no canonical definition to state claims against.
-/

/-! ## A180507.P6446196267555011880

`A123906(A037396(n+2))`
-/

namespace A180507.P6446196267555011880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123906 (A037396 (n + 2)).toNat

end

end A180507.P6446196267555011880

/-!
# A180508: Numbers k such that k^2 + 1 = p*q, p and q primes and | p-q | <= k.

The programs for A180508, there is no canonical definition to state claims against.
-/

/-! ## A180508.P18299778478549029965

`A247340(lt[A247309(n), A247341(2*(n+2))])`
-/

namespace A180508.P18299778478549029965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247341 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247340 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A180508.P18299778478549029965

/-! ## A180508.P1511648450357013781

`A247340(lt[A247321(2*n), A247341(2*(n+2))])`
-/

namespace A180508.P1511648450357013781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247321 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247341 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247340 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A180508.P1511648450357013781

/-!
# A180509: Solutions a(n) of (a(n)-5)*(a(n)-6) = 21*b(n)*(b(n)-1).

The programs for A180509, there is no canonical definition to state claims against.
-/

/-! ## A180509.P393161481740141458

`A144685(n+3)+A144641(ceil((lcm(2, n)+1+n)/2))`
-/

namespace A180509.P393161481740141458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144685 (n + 3) + A144641 ⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉.toNat

end

end A180509.P393161481740141458

/-!
# A180511: Fermat quotients for base 4: (4^(p - 1) - 1)/p, where p = prime(n).

The programs for A180511, there is no canonical definition to state claims against.
-/

/-! ## A180511.P9934537639822526288

`A054660(p?[2*n+1])`
-/

namespace A180511.P9934537639822526288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054660 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A180511.P9934537639822526288

/-! ## A180511.P1393317770473620127

`A054661(p?[2*n+1])`
-/

namespace A180511.P1393317770473620127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A180511.P1393317770473620127

/-! ## A180511.P9342338734938416472

`A054664(p?[2*n+1])`
-/

namespace A180511.P9342338734938416472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054664 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A180511.P9342338734938416472

/-! ## A180511.P5917874610839952963

`A054660(A065091(n+1))`
-/

namespace A180511.P5917874610839952963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054660 (A065091 (n + 1)).toNat

end

end A180511.P5917874610839952963

/-! ## A180511.P775747916306011733

`A054660(A058853(n+2))`
-/

namespace A180511.P775747916306011733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054660 (A058853 (n + 2)).toNat

end

end A180511.P775747916306011733

/-!
# A180515: E.g.f. A(x) satisfies A''(x) = 2*A(x)^3 + x*A(x) + 1.

The programs for A180515, there is no canonical definition to state claims against.
-/

/-! ## A180515.P6619179939332726896

`C(n, 2)%3*A327230(A003114(n))`
-/

namespace A180515.P6619179939332726896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 % 3 : ℕ) : ℤ) * A327230 (A003114 n).toNat

end

end A180515.P6619179939332726896

/-! ## A180515.P4743010771719318034

`A296739(A287020(n))-A000700(n)`
-/

namespace A180515.P4743010771719318034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A287020 n).toNat - A000700 n

end

end A180515.P4743010771719318034

/-! ## A180515.P14523289964618902261

`A327230(A225479(n)-A062275(n))`
-/

namespace A180515.P14523289964618902261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327230 (A225479 n - A062275 n).toNat

end

end A180515.P14523289964618902261

/-! ## A180515.P9707890738426907970

`A090683(n)*A132896(A018224(n))`
-/

namespace A180515.P9707890738426907970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090683 n * A132896 (A018224 n).toNat

end

end A180515.P9707890738426907970

/-! ## A180515.P6656897205807428075

`A008624(n)*A185053(A163327(n))`
-/

namespace A180515.P6656897205807428075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n * A185053 (A163327 n).toNat

end

end A180515.P6656897205807428075

/-!
# A180516: Numbers of the form i*4^j-1 (i=1..3, j >= 0).

The programs for A180516, the canonical program `A180516.P16130991390848713033` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180516 has offset 1).

The definition of A180516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180516.P16130991390848713033

`a(n-1)+4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180516

/-- `a(n-1)+4*a(n-3)-4*a(n-4)` -/
def P16130991390848713033.Spec : Prop :=
  ∀ n, P16130991390848713033.a n = A180516 (n + 1)

theorem P16130991390848713033.correct : P16130991390848713033.Spec := by
  intro n
  simp only [A180516, Nat.add_sub_cancel]

end A180516

/-! ## A180516.P8736660165194507246

`∑[floor(4^floor((n-1)/3))]`
-/

namespace A180516.P8736660165194507246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 3⌋ : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180516.P8736660165194507246

namespace A180516

/-- `∑[floor(4^floor((n-1)/3))]` -/
def P8736660165194507246.Spec : Prop :=
  ∀ n, P8736660165194507246.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P17688058009247606449

`4*a(n-3)+3` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A180516.P17688058009247606449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  4 * a (n - 3) + 3

end

end A180516.P17688058009247606449

namespace A180516

/-- `4*a(n-3)+3` -/
def P17688058009247606449.Spec : Prop :=
  ∀ n, (P17688058009247606449.a n : ℤ) = A180516 (n + 1)

end A180516

/-! ## A180516.P10380413015465710006

`or(3, 4*a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A180516.P10380413015465710006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.lor 3 (4 * a (n - 3))

end

end A180516.P10380413015465710006

namespace A180516

/-- `or(3, 4*a(n-3))` -/
def P10380413015465710006.Spec : Prop :=
  ∀ n, (P10380413015465710006.a n : ℤ) = A180516 (n + 1)

end A180516

/-! ## A180516.P15316144065243226136

`xor(3, 4*a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A180516.P15316144065243226136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.xor 3 (4 * a (n - 3))

end

end A180516.P15316144065243226136

namespace A180516

/-- `xor(3, 4*a(n-3))` -/
def P15316144065243226136.Spec : Prop :=
  ∀ n, (P15316144065243226136.a n : ℤ) = A180516 (n + 1)

end A180516

/-! ## A180516.P14262672852734902132

`∑[4*a(n-3)]-1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A180516.P14262672852734902132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  4 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A180516.P14262672852734902132

namespace A180516

/-- `∑[4*a(n-3)]-1` -/
def P14262672852734902132.Spec : Prop :=
  ∀ n, P14262672852734902132.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P13893966840473269384

`A133464(n)-1`
-/

namespace A180516.P13893966840473269384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 n - 1

end

end A180516.P13893966840473269384

namespace A180516

/-- `A133464(n)-1` -/
def P13893966840473269384.Spec : Prop :=
  ∀ n, P13893966840473269384.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P11178087523902249302

`∑[Δ[A029747(n+2)]²]-1`
-/

namespace A180516.P11178087523902249302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180516.P11178087523902249302

namespace A180516

/-- `∑[Δ[A029747(n+2)]²]-1` -/
def P11178087523902249302.Spec : Prop :=
  ∀ n, P11178087523902249302.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P15875089254456222027

`A137824(A080782(n+1))-1`
-/

namespace A180516.P15875089254456222027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (A080782 (n + 1)).toNat - 1

end

end A180516.P15875089254456222027

namespace A180516

/-- `A137824(A080782(n+1))-1` -/
def P15875089254456222027.Spec : Prop :=
  ∀ n, P15875089254456222027.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P4173704843352654998

`A029744(A319371(n+1))-1`
-/

namespace A180516.P4173704843352654998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A319371 (n + 1)).toNat - 1

end

end A180516.P4173704843352654998

namespace A180516

/-- `A029744(A319371(n+1))-1` -/
def P4173704843352654998.Spec : Prop :=
  ∀ n, P4173704843352654998.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P10726559446440197724

`∪[A000079(n), A084221(n)]-1`
-/

namespace A180516.P10726559446440197724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A180516.P10726559446440197724

namespace A180516

/-- `∪[A000079(n), A084221(n)]-1` -/
def P10726559446440197724.Spec : Prop :=
  ∀ n, P10726559446440197724.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P9606601343583378739

`∪[A000079(n), A134683(n)]-1`
-/

namespace A180516.P9606601343583378739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A180516.P9606601343583378739

namespace A180516

/-- `∪[A000079(n), A134683(n)]-1` -/
def P9606601343583378739.Spec : Prop :=
  ∀ n, P9606601343583378739.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P17998252434388527071

`∪[A084221(n), A134683(n)]-1`
-/

namespace A180516.P17998252434388527071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A180516.P17998252434388527071

namespace A180516

/-- `∪[A084221(n), A134683(n)]-1` -/
def P17998252434388527071.Spec : Prop :=
  ∀ n, P17998252434388527071.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P10973696045194743886

`ogf((x+x^2+x^3)/(1-x-4x^3+4x^4))`
-/

namespace A180516.P10973696045194743886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -1, 0, -4, 4] n

end

end A180516.P10973696045194743886

namespace A180516

/-- `ogf((x+x^2+x^3)/(1-x-4x^3+4x^4))` -/
def P10973696045194743886.Spec : Prop :=
  ∀ n, P10973696045194743886.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P2817562995094044149

`3-(a(n-3)-5*a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A180516.P2817562995094044149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 - (a (n - 3) - 5 * a (n - 3))

end

end A180516.P2817562995094044149

namespace A180516

/-- `3-(a(n-3)-5*a(n-3))` -/
def P2817562995094044149.Spec : Prop :=
  ∀ n, P2817562995094044149.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P8123023029683930549

`∪[A000225(n), A284354(n)]`
-/

namespace A180516.P8123023029683930549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180516.P8123023029683930549

namespace A180516

/-- `∪[A000225(n), A284354(n)]` -/
def P8123023029683930549.Spec : Prop :=
  ∀ n, (P8123023029683930549.a n : ℤ) = A180516 (n + 1)

end A180516

/-! ## A180516.P16206625870018746143

`∑[A173862(n+1)²]-A173862(n+1)²`
-/

namespace A180516.P16206625870018746143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A173862 (n + 1) ^ 2

end

end A180516.P16206625870018746143

namespace A180516

/-- `∑[A173862(n+1)²]-A173862(n+1)²` -/
def P16206625870018746143.Spec : Prop :=
  ∀ n, P16206625870018746143.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P5526281821786558992

`∩[A332520(n+1), A223543(n)]-1`
-/

namespace A180516.P5526281821786558992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223543 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A180516.P5526281821786558992

namespace A180516

/-- `∩[A332520(n+1), A223543(n)]-1` -/
def P5526281821786558992.Spec : Prop :=
  ∀ n, P5526281821786558992.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P14592996098739819585

`A290114(n)%A133464(n)`
-/

namespace A180516.P14592996098739819585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290114 n) (A133464 n)

end

end A180516.P14592996098739819585

namespace A180516

/-- `A290114(n)%A133464(n)` -/
def P14592996098739819585.Spec : Prop :=
  ∀ n, P14592996098739819585.a n = A180516 (n + 1)

end A180516

/-! ## A180516.P10138836312455723803

`A052940(n)%A133464(n)`
-/

namespace A180516.P10138836312455723803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052940 n) (A133464 n)

end

end A180516.P10138836312455723803

namespace A180516

/-- `A052940(n)%A133464(n)` -/
def P10138836312455723803.Spec : Prop :=
  ∀ n, P10138836312455723803.a n = A180516 (n + 1)

end A180516

/-!
# A180518: Primes that become a different prime under the mapping 0 <=> 3.

The programs for A180518, there is no canonical definition to state claims against.
-/

/-! ## A180518.P7964360391581111016

`p?[lt[A098223(n+1)², A325959(n+1)]]`
-/

namespace A180518.P7964360391581111016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098223 (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A180518.P7964360391581111016

/-! ## A180518.P4939901860064876615

`A008578(eq[10, A332937(n+3)+A316355(n)])`
-/

namespace A180518.P4939901860064876615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332937 (n + 3) + A316355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180518.P4939901860064876615

/-!
# A180519: Primes that become a different prime under the mapping 0 <=> 4.

The programs for A180519, there is no canonical definition to state claims against.
-/

/-! ## A180519.P3493060222962208974

`A334094(abs(A117228(2*n+1)-A100330(2*(n+1))))`
-/

namespace A180519.P3493060222962208974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334094 |A117228 (2 * n + 1) - A100330 (2 * (n + 1))|.toNat

end

end A180519.P3493060222962208974

/-!
# A180520: Primes that become a different prime under the mapping 0 <=> 5.

The programs for A180520, there is no canonical definition to state claims against.
-/

/-! ## A180520.P11493010385179817946

`∩[A007459(n+1), A210652(n+1)]`
-/

namespace A180520.P11493010385179817946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180520.P11493010385179817946

/-!
# A180521: Primes that become a different prime under the mapping 0 <=> 6.

The programs for A180521, there is no canonical definition to state claims against.
-/

/-! ## A180521.P10727466138952440843

`filter[A378851(n+3), A303340(#)]`
-/

namespace A180521.P10727466138952440843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378851 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A303340 (f1 j).toNat = 1) n)

end

end A180521.P10727466138952440843

/-!
# A180522: Primes that become a different prime under the mapping 0 <=> 7.

The programs for A180522, there is no canonical definition to state claims against.
-/

/-! ## A180522.P6635549750148224208

`A055387(A116610(n+1)^A350249(n))`
-/

namespace A180522.P6635549750148224208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055387 (SequenceMachineLib.roundAway ((A116610 (n + 1) : ℚ) ^ (A350249 n : ℤ))).toNat

end

end A180522.P6635549750148224208

/-!
# A180524: Primes that become a different prime under the mapping 0 <=> 9.

The programs for A180524, there is no canonical definition to state claims against.
-/

/-! ## A180524.P10856831555136421744

`p?[A015919(n+1)%A318869(A123550(n+1))]`
-/

namespace A180524.P10856831555136421744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015919 (n + 1)) (A318869 (A123550 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180524.P10856831555136421744

/-! ## A180524.P12276409607074530040

`A182320(A057947(n))`
-/

namespace A180524.P12276409607074530040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182320 (A057947 n).toNat

end

end A180524.P12276409607074530040

/-!
# A180525: Primes that become a different prime under the mapping 1 <=> 2.

The programs for A180525, there is no canonical definition to state claims against.
-/

/-! ## A180525.P12063530813159074866

`p?[A352422(n+2)+A352419(n)]`
-/

namespace A180525.P12063530813159074866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352422 (n + 2) + A352419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180525.P12063530813159074866

/-! ## A180525.P10272464311523547183

`∩[A156111(n+1), A322741(n+1)]`
-/

namespace A180525.P10272464311523547183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180525.P10272464311523547183

/-!
# A180527: Primes that become a different prime under the mapping 1 <=> 4.

The programs for A180527, there is no canonical definition to state claims against.
-/

/-! ## A180527.P15572113689749999024

`p?[A356211(n+1)-14]`
-/

namespace A180527.P15572113689749999024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356211 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180527.P15572113689749999024

/-! ## A180527.P7183925912005513296

`p?[∑[p?[A352288(n+1)]²]]`
-/

namespace A180527.P7183925912005513296
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180527.P7183925912005513296

/-!
# A180528: Primes that become a different prime under the mapping 1 <=> 5.

The programs for A180528, there is no canonical definition to state claims against.
-/

/-! ## A180528.P14762408077034796895

`A326536(A181440(n+1)+A105571(n+1))`
-/

namespace A180528.P14762408077034796895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326536 (A181440 (n + 1) + A105571 (n + 1)).toNat

end

end A180528.P14762408077034796895

/-! ## A180528.P12814753404018222829

`p?[A133192(3*n+2)]`
-/

namespace A180528.P12814753404018222829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133192 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180528.P12814753404018222829

/-!
# A180529: Primes that become a different prime under the mapping 1 <=> 6.

The programs for A180529, there is no canonical definition to state claims against.
-/

/-! ## A180529.P7091748358243926738

`A219674(A136338(n+1))`
-/

namespace A180529.P7091748358243926738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219674 (A136338 (n + 1)).toNat

end

end A180529.P7091748358243926738

/-!
# A180530: Primes that become a different prime under the mapping 1 <=> 7.

The programs for A180530, there is no canonical definition to state claims against.
-/

/-! ## A180530.P9181310585042874884

`or(A258081(2*n+1)%5, A061303(n+2))`
-/

namespace A180530.P9181310585042874884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A258081 (2 * n + 1)) 5) (A061303 (n + 2))

end

end A180530.P9181310585042874884

/-! ## A180530.P2238484324236296643

`or(A061303(n+2), A103185(A003724(n)))`
-/

namespace A180530.P2238484324236296643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061303 (n + 2)) (A103185 (A003724 n).toNat)

end

end A180530.P2238484324236296643

/-! ## A180530.P16985788599676673565

`p?[A256827(∑[A082691(n+1)])]`
-/

namespace A180530.P16985788599676673565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082691 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256827 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180530.P16985788599676673565

/-! ## A180530.P10096147591334484123

`A216227(A095202(2*n+5)-A095207(n+1))`
-/

namespace A180530.P10096147591334484123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216227 (A095202 (2 * n + 5) - A095207 (n + 1)).toNat

end

end A180530.P10096147591334484123

/-!
# A180531: Primes that become a different prime under the mapping 1 <=> 8.

The programs for A180531, there is no canonical definition to state claims against.
-/

/-! ## A180531.P4047587226517214830

`A105792(A000695(n+2))`
-/

namespace A180531.P4047587226517214830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105792 (A000695 (n + 2)).toNat

end

end A180531.P4047587226517214830

/-! ## A180531.P13802351732059739562

`A119570(A255567(n+2))`
-/

namespace A180531.P13802351732059739562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119570 (A255567 (n + 2)).toNat

end

end A180531.P13802351732059739562

/-!
# A180532: Primes that become a different prime under the mapping 1 <=> 9.

The programs for A180532, there is no canonical definition to state claims against.
-/

/-! ## A180532.P7826081820503741748

`p?[A093110(comp[A324689(n)])]`
-/

namespace A180532.P7826081820503741748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324689 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180532.P7826081820503741748

/-!
# A180533: Primes that become a different prime under the mapping 2 <=> 3.

The programs for A180533, there is no canonical definition to state claims against.
-/

/-! ## A180533.P8822348436104966197

`p?[A340112(A254608(n))]`
-/

namespace A180533.P8822348436104966197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340112 (A254608 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180533.P8822348436104966197

/-!
# A180534: Primes that become a different prime under the mapping 2 <=> 4.

The programs for A180534, there is no canonical definition to state claims against.
-/

/-! ## A180534.P15614065678009935174

`or(A171697(A171692(n)), A296563(n+1))`
-/

namespace A180534.P15614065678009935174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171697 (A171692 n).toNat) (A296563 (n + 1))

end

end A180534.P15614065678009935174

/-!
# A180537: Primes that become a different prime under the mapping 2 <=> 7.

The programs for A180537, there is no canonical definition to state claims against.
-/

/-! ## A180537.P10308849691327895982

`A284921(n+1)+A064894(A001206(n))`
-/

namespace A180537.P10308849691327895982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) + A064894 (A001206 n).toNat

end

end A180537.P10308849691327895982

/-! ## A180537.P13298074842783557611

`A284921(n+1)+A001221(A161567(n))`
-/

namespace A180537.P13298074842783557611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) + A001221 (A161567 n).toNat

end

end A180537.P13298074842783557611

/-! ## A180537.P9823831366139462910

`A007918(A284921(n+1)^A026492(n))`
-/

namespace A180537.P9823831366139462910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway ((A284921 (n + 1) : ℚ) ^ (A026492 n : ℤ))).toNat

end

end A180537.P9823831366139462910

/-!
# A180538: Primes that become a different prime under the mapping 2 <=> 8.

The programs for A180538, there is no canonical definition to state claims against.
-/

/-! ## A180538.P17419610356333593256

`A020637(xor(4, A032810(n+1)))`
-/

namespace A180538.P17419610356333593256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020637 (Int.xor 4 (A032810 (n + 1))).toNat

end

end A180538.P17419610356333593256

/-!
# A180540: Primes that become a different prime under the mapping 3 <=> 4.

The programs for A180540, there is no canonical definition to state claims against.
-/

/-! ## A180540.P400908712553626155

`∩[A022435(n+1), A095748(n+1)]`
-/

namespace A180540.P400908712553626155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180540.P400908712553626155

/-! ## A180540.P11789577885426220592

`p?[∑[A001113(A230891(n))+2]+5]`
-/

namespace A180540.P11789577885426220592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A230891 n).toNat + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180540.P11789577885426220592

/-!
# A180541: Primes that become a different prime under the mapping 3 <=> 5.

The programs for A180541, there is no canonical definition to state claims against.
-/

/-! ## A180541.P10849784017440691369

`A299956(A056004(n+2))`
-/

namespace A180541.P10849784017440691369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (A056004 (n + 2)).toNat

end

end A180541.P10849784017440691369

/-! ## A180541.P15974077037430496271

`A340113(A166087(n+1)+1)`
-/

namespace A180541.P15974077037430496271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340113 (A166087 (n + 1) + 1).toNat

end

end A180541.P15974077037430496271

/-!
# A180542: Primes that become a different prime under the mapping 3 <=> 6.

The programs for A180542, there is no canonical definition to state claims against.
-/

/-! ## A180542.P12126285142039314180

`A161850(A302552(n+1)+A023857(n+1))`
-/

namespace A180542.P12126285142039314180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161850 (A302552 (n + 1) + A023857 (n + 1)).toNat

end

end A180542.P12126285142039314180

/-! ## A180542.P12021425566343950798

`A260684(A260650(n+1)+A133524(n+1))`
-/

namespace A180542.P12021425566343950798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260684 (A260650 (n + 1) + A133524 (n + 1)).toNat

end

end A180542.P12021425566343950798

/-!
# A180543: Primes that become a different prime under the mapping 3 <=> 7.

The programs for A180543, there is no canonical definition to state claims against.
-/

/-! ## A180543.P1305520116587349432

`filter[A386107(n+1), A117814(#)]`
-/

namespace A180543.P1305520116587349432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117814 (f1 j).toNat = 1) n)

end

end A180543.P1305520116587349432

/-! ## A180543.P1940835344905808687

`p?[A327534(comp[A059540(n+1)-1]+1)+2]`
-/

namespace A180543.P1940835344905808687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059540 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327534 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180543.P1940835344905808687

/-! ## A180543.P11322337380075880033

`p?[∑[gcd(3, A126355(n+1))]]`
-/

namespace A180543.P11322337380075880033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A126355 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A180543.P11322337380075880033

/-! ## A180543.P15047171648430379242

`p?[A115319(2*n+1)-5]`
-/

namespace A180543.P15047171648430379242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115319 (2 * n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180543.P15047171648430379242

/-!
# A180545: Primes that become a different prime under the mapping 3 <=> 9.

The programs for A180545, there is no canonical definition to state claims against.
-/

/-! ## A180545.P5652126188141954385

`A222464(A034913(n+2))`
-/

namespace A180545.P5652126188141954385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222464 (A034913 (n + 2)).toNat

end

end A180545.P5652126188141954385

/-! ## A180545.P3228894314524617947

`∩[A186385(n+1), A336451(n+1)]`
-/

namespace A180545.P3228894314524617947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180545.P3228894314524617947

/-! ## A180545.P7317648978045878694

`p?[A088607(2*(n+2))+A088606(n+1)]`
-/

namespace A180545.P7317648978045878694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088607 (2 * (n + 2)) + A088606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180545.P7317648978045878694

/-! ## A180545.P17640142725626404242

`p?[p?[A137944(n+1)*A325704(n+1)]+6]`
-/

namespace A180545.P17640142725626404242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1) * A325704 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180545.P17640142725626404242

/-!
# A180547: Primes that become a different prime under the mapping 4 <=> 6.

The programs for A180547, there is no canonical definition to state claims against.
-/

/-! ## A180547.P4638696720585258458

`∩[A069556(n+1), A284783(n+1)]`
-/

namespace A180547.P4638696720585258458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180547.P4638696720585258458

/-!
# A180548: Primes that become a different prime under the mapping 4 <=> 7.

The programs for A180548, there is no canonical definition to state claims against.
-/

/-! ## A180548.P7362008079749808122

`A328603(or(16, A054552(n)))`
-/

namespace A180548.P7362008079749808122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328603 (Int.lor 16 (A054552 n)).toNat

end

end A180548.P7362008079749808122

/-!
# A180549: Primes that become a different prime under the mapping 4 <=> 8.

The programs for A180549, there is no canonical definition to state claims against.
-/

/-! ## A180549.P17233741565153314700

`A291284(A194368(n+1)+A000028(2*n+5))`
-/

namespace A180549.P17233741565153314700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (A194368 (n + 1) + A000028 (2 * n + 5)).toNat

end

end A180549.P17233741565153314700

/-!
# A180550: Primes that become a different prime under the mapping 4 <=> 9.

The programs for A180550, there is no canonical definition to state claims against.
-/

/-! ## A180550.P3721759258040862638

`A265769(A359892(2*n+1)+n-1)`
-/

namespace A180550.P3721759258040862638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265769 (A359892 (2 * n + 1) + ((n : ℤ) - 1)).toNat

end

end A180550.P3721759258040862638

/-!
# A180553: Primes that become a different prime under the mapping 5 <=> 8.

The programs for A180553, there is no canonical definition to state claims against.
-/

/-! ## A180553.P13772653909459372528

`A091898(A374559(n+1))`
-/

namespace A180553.P13772653909459372528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091898 (A374559 (n + 1)).toNat

end

end A180553.P13772653909459372528

/-!
# A180554: Primes that become a different prime under the mapping 5 <=> 9.

The programs for A180554, there is no canonical definition to state claims against.
-/

/-! ## A180554.P2806892735789887656

`A167845(A242680(n+2))`
-/

namespace A180554.P2806892735789887656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167845 (A242680 (n + 2)).toNat

end

end A180554.P2806892735789887656

/-!
# A180557: Primes that become a different prime under the mapping 6 <=> 9.

The programs for A180557, there is no canonical definition to state claims against.
-/

/-! ## A180557.P6460419643562907397

`A222251(A088866(n+1))`
-/

namespace A180557.P6460419643562907397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A088866 (n + 1)).toNat

end

end A180557.P6460419643562907397

/-! ## A180557.P18378796705379656985

`p?[A222251(A088998(n+1))]`
-/

namespace A180557.P18378796705379656985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A088998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180557.P18378796705379656985

/-!
# A180558: Primes that become a different prime under the mapping 7 <=> 8.

The programs for A180558, there is no canonical definition to state claims against.
-/

/-! ## A180558.P11951060073023083331

`p?[xor(A028911(n), A113899(n))]`
-/

namespace A180558.P11951060073023083331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028911 n) (A113899 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180558.P11951060073023083331

/-!
# A180559: Primes that become a different prime under the mapping 7 <=> 9.

The programs for A180559, there is no canonical definition to state claims against.
-/

/-! ## A180559.P9781212966768673275

`p?[A353440(A353437(n+1))-7]`
-/

namespace A180559.P9781212966768673275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353440 (A353437 (n + 1)).toNat - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180559.P9781212966768673275

/-!
# A180562: Triangle read by rows: T(n,k) = number of binary words of length n avoiding 010 and having k 1's.

The programs for A180562, there is no canonical definition to state claims against.
-/

/-! ## A180562.P15154212097610026828

`A292589(A318142(n))+A139600(A083920(n))`
-/

namespace A180562.P15154212097610026828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292589 (A318142 n).toNat + A139600 (A083920 n).toNat

end

end A180562.P15154212097610026828

/-! ## A180562.P15832080687195938832

`A318142(2*n+1)+A139600(A083920(n))`
-/

namespace A180562.P15832080687195938832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318142 (2 * n + 1) + A139600 (A083920 n).toNat

end

end A180562.P15832080687195938832

/-! ## A180562.P9842309272852803515

`A139600(A083920(n))+A046079(A078857(n+1))`
-/

namespace A180562.P9842309272852803515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A083920 n).toNat + A046079 (A078857 (n + 1)).toNat

end

end A180562.P9842309272852803515

/-! ## A180562.P11038732863415445552

`A139600(A083920(n))+A001222(A221903(n+1))`
-/

namespace A180562.P11038732863415445552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A083920 n).toNat + A001222 (A221903 (n + 1)).toNat

end

end A180562.P11038732863415445552

/-! ## A180562.P3878918109910279972

`A135225(n)+A020500(A173882(n))`
-/

namespace A180562.P3878918109910279972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 n + A020500 (A173882 n).toNat

end

end A180562.P3878918109910279972

/-!
# A180563: E.g.f. A(x) satisfies: P(A(x)) = exp(x) where P(x) = Product_{n>=1} 1/(1-x^n), the partition function.

The programs for A180563, there is no canonical definition to state claims against.
-/

/-! ## A180563.P14527391090406621824

`(-1)^n*A294330(n+1)`
-/

namespace A180563.P14527391090406621824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A294330 (n + 1)

end

end A180563.P14527391090406621824

/-! ## A180563.P15010235433206468331

`A294330(n+1)*A033999(n)`
-/

namespace A180563.P15010235433206468331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294330 (n + 1) * A033999 n

end

end A180563.P15010235433206468331

/-! ## A180563.P16368907321826201230

`A294330(n+1)/A033999(n²)`
-/

namespace A180563.P16368907321826201230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294330 (n + 1) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A180563.P16368907321826201230

/-! ## A180563.P6243757518761934580

`A294330(n+1)/A062157(n+1)`
-/

namespace A180563.P6243757518761934580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294330 (n + 1) : ℚ) / (A062157 (n + 1) : ℚ)

end

end A180563.P6243757518761934580

/-! ## A180563.P7086191630408685380

`A294330(A000027(n+1))/(-1)^n`
-/

namespace A180563.P7086191630408685380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294330 (A000027 (n + 1)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A180563.P7086191630408685380

/-! ## A180563.P9879590729448245343

`A294330(n+1)*A317529(A007947(n+1))`
-/

namespace A180563.P9879590729448245343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294330 (n + 1) * A317529 (A007947 (n + 1)).toNat

end

end A180563.P9879590729448245343

/-!
# A180564: Number of permutations of [n] having no isolated entries. An entry j of a permutation p is isolated if it is not preceded by j-1 and not followed by j+1. For example, the permutation 23178564 has 2 isolated entries: 1 and 4.

The programs for A180564, there is no canonical definition to state claims against.
-/

/-! ## A180564.P1031327930729580029

`n!-A184181(n)`
-/

namespace A180564.P1031327930729580029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A184181 n

end

end A180564.P1031327930729580029

/-! ## A180564.P17201853112681965769

`A000142(n)-A184181(n)`
-/

namespace A180564.P17201853112681965769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A184181 n

end

end A180564.P17201853112681965769

/-! ## A180564.P11011965437089074008

`A068106(record[A061579(n)])-A184181(n)`
-/

namespace A180564.P11011965437089074008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A184181 n

end

end A180564.P11011965437089074008

/-! ## A180564.P14282357769457504289

`A021009(A000217(n))-A184181(n)`
-/

namespace A180564.P14282357769457504289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A000217 n).toNat - A184181 n

end

end A180564.P14282357769457504289

/-! ## A180564.P12951123987567168732

`A180196(∑[n])`
-/

namespace A180564.P12951123987567168732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180564.P12951123987567168732

/-!
# A180565: Numbers starting with 5 such that the sum of any two distinct entries is two times some prime.

The programs for A180565, there is no canonical definition to state claims against.
-/

/-! ## A180565.P17086818034546763362

`2*A093483(n+1)+1`
-/

namespace A180565.P17086818034546763362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093483 (n + 1) + 1

end

end A180565.P17086818034546763362

/-! ## A180565.P58762547014773094

`A093483(A000027(n+1))+A093483(n+1)+1`
-/

namespace A180565.P58762547014773094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093483 (A000027 (n + 1)).toNat + (A093483 (n + 1) + 1)

end

end A180565.P58762547014773094

/-! ## A180565.P6713652814563921918

`A093483(A090107(n+1))+A093483(n+1)+1`
-/

namespace A180565.P6713652814563921918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093483 (A090107 (n + 1)).toNat + (A093483 (n + 1) + 1)

end

end A180565.P6713652814563921918

/-! ## A180565.P2395087153899726193

`A093483(n+1)+A093483(A180493(n+1))+1`
-/

namespace A180565.P2395087153899726193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093483 (n + 1) + (A093483 (A180493 (n + 1)).toNat + 1)

end

end A180565.P2395087153899726193

/-! ## A180565.P11792881656665449138

`A093483(n+1)+A093483(n+1)+A015928(n)`
-/

namespace A180565.P11792881656665449138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093483 (n + 1) + (A093483 (n + 1) + A015928 n)

end

end A180565.P11792881656665449138

/-!
# A180567: The Wiener index of the Fibonacci tree of order n.

The programs for A180567, there is no canonical definition to state claims against.
-/

/-! ## A180567.P4335527603571050771

`A319853(A084603(n)+A002426(n))`
-/

namespace A180567.P4335527603571050771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319853 (A084603 n + A002426 n).toNat

end

end A180567.P4335527603571050771

/-! ## A180567.P5409239846075686288

`A002530(n)*A010411(A027306(n))`
-/

namespace A180567.P5409239846075686288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A010411 (A027306 n).toNat

end

end A180567.P5409239846075686288

/-!
# A180569: The Wiener index of the P_3 X P_n grid, where P_m is the path graph on m nodes. The Wiener index of a connected graph is the sum of distances between all unordered pairs of nodes in the graph.

The programs for A180569, the canonical program `A180569.P3185072940489511768` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180569 has offset 1).

The definition of A180569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180569.P3185072940489511768

`(n+1)*(n+4)*(3*(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180569

/-- `(n+1)*(n+4)*(3*(n+1)-1)/2` -/
def P3185072940489511768.Spec : Prop :=
  ∀ n, P3185072940489511768.a n = (A180569 (n + 1) : ℚ)

end A180569

/-! ## A180569.P9862342709530728085

`∑[n+2]*A016957(n)/2`
-/

namespace A180569.P9862342709530728085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A016957 n : ℚ) / 2

end

end A180569.P9862342709530728085

namespace A180569

/-- `∑[n+2]*A016957(n)/2` -/
def P9862342709530728085.Spec : Prop :=
  ∀ n, P9862342709530728085.a n = (A180569 (n + 1) : ℚ)

end A180569

/-! ## A180569.P8236052604794266222

`A085788(n+1)+(n+1)*(n-2)`
-/

namespace A180569.P8236052604794266222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085788 (n + 1) + (n + 1 : ℤ) * ((n : ℤ) - 2)

end

end A180569.P8236052604794266222

namespace A180569

/-- `A085788(n+1)+(n+1)*(n-2)` -/
def P8236052604794266222.Spec : Prop :=
  ∀ n, P8236052604794266222.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P1430836962902914440

`A164845(n)+A090197(n)`
-/

namespace A180569.P1430836962902914440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164845 n + A090197 n

end

end A180569.P1430836962902914440

namespace A180569

/-- `A164845(n)+A090197(n)` -/
def P1430836962902914440.Spec : Prop :=
  ∀ n, P1430836962902914440.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P6679526203649695665

`A152740(n)+A130423(n+1)`
-/

namespace A180569.P6679526203649695665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 n + A130423 (n + 1)

end

end A180569.P6679526203649695665

namespace A180569

/-- `A152740(n)+A130423(n+1)` -/
def P6679526203649695665.Spec : Prop :=
  ∀ n, P6679526203649695665.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P14900105421231663336

`A267370(n)+A162254(n+1)`
-/

namespace A180569.P14900105421231663336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n + A162254 (n + 1)

end

end A180569.P14900105421231663336

namespace A180569

/-- `A267370(n)+A162254(n+1)` -/
def P14900105421231663336.Spec : Prop :=
  ∀ n, P14900105421231663336.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P8856625065055907012

`A192025(n+1)-A046092(n)`
-/

namespace A180569.P8856625065055907012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192025 (n + 1) - A046092 n

end

end A180569.P8856625065055907012

namespace A180569

/-- `A192025(n+1)-A046092(n)` -/
def P8856625065055907012.Spec : Prop :=
  ∀ n, P8856625065055907012.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P2887915265189064938

`A268484(n)+A051937(n+4)`
-/

namespace A180569.P2887915265189064938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268484 n + A051937 (n + 4)

end

end A180569.P2887915265189064938

namespace A180569

/-- `A268484(n)+A051937(n+4)` -/
def P2887915265189064938.Spec : Prop :=
  ∀ n, P2887915265189064938.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P9247779181170550185

`A086113(n+1)-A162260(n+1)`
-/

namespace A180569.P9247779181170550185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086113 (n + 1) - A162260 (n + 1)

end

end A180569.P9247779181170550185

namespace A180569

/-- `A086113(n+1)-A162260(n+1)` -/
def P9247779181170550185.Spec : Prop :=
  ∀ n, P9247779181170550185.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P1040667492114847201

`2*(n²+n)+A027903(n+1)/2`
-/

namespace A180569.P1040667492114847201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n ^ 2 + n) : ℚ) + (A027903 (n + 1) : ℚ) / 2

end

end A180569.P1040667492114847201

namespace A180569

/-- `2*(n²+n)+A027903(n+1)/2` -/
def P1040667492114847201.Spec : Prop :=
  ∀ n, P1040667492114847201.a n = (A180569 (n + 1) : ℚ)

end A180569

/-! ## A180569.P3243207476699202056

`A132112(n+1)+A045943(n)-A000330(n)`
-/

namespace A180569.P3243207476699202056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 (n + 1) + (A045943 n - A000330 n)

end

end A180569.P3243207476699202056

namespace A180569

/-- `A132112(n+1)+A045943(n)-A000330(n)` -/
def P3243207476699202056.Spec : Prop :=
  ∀ n, P3243207476699202056.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P16050698820359194327

`A115067(n+2)+A317637(n)+A267370(n)`
-/

namespace A180569.P16050698820359194327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 2) + (A317637 n + A267370 n)

end

end A180569.P16050698820359194327

namespace A180569

/-- `A115067(n+2)+A317637(n)+A267370(n)` -/
def P16050698820359194327.Spec : Prop :=
  ∀ n, P16050698820359194327.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P693431912334179208

`A064043(n+1)+A084990(n+1)+A000292(n)`
-/

namespace A180569.P693431912334179208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064043 (n + 1) + (A084990 (n + 1) + A000292 n)

end

end A180569.P693431912334179208

namespace A180569

/-- `A064043(n+1)+A084990(n+1)+A000292(n)` -/
def P693431912334179208.Spec : Prop :=
  ∀ n, P693431912334179208.a n = A180569 (n + 1)

end A180569

/-! ## A180569.P10376410992486176507

`A077414(n+1)+A267370(n)+A077414(n+2)`
-/

namespace A180569.P10376410992486176507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1) + (A267370 n + A077414 (n + 2))

end

end A180569.P10376410992486176507

namespace A180569

/-- `A077414(n+1)+A267370(n)+A077414(n+2)` -/
def P10376410992486176507.Spec : Prop :=
  ∀ n, P10376410992486176507.a n = A180569 (n + 1)

end A180569

/-!
# A180571: The Wiener index of the graph \|/_\/_\/_..._\/_\|/ having n nodes on the horizontal path.

The programs for A180571, the canonical program `A180571.P16329544807137509130` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180571 has offset 2).

The definition of A180571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180571.P16329544807137509130

`(2+9*(n+2)+18*(n+2)²+3*(n+2)^3)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180571

/-- `(2+9*(n+2)+18*(n+2)²+3*(n+2)^3)/2` -/
def P16329544807137509130.Spec : Prop :=
  ∀ n, P16329544807137509130.a n = (A180571 (n + 2) : ℚ)

end A180571

/-! ## A180571.P16778571238963759926

`A016777(A055831(n+4)+A000330(n+3))`
-/

namespace A180571.P16778571238963759926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A055831 (n + 4) + A000330 (n + 3)).toNat

end

end A180571.P16778571238963759926

namespace A180571

/-- `A016777(A055831(n+4)+A000330(n+3))` -/
def P16778571238963759926.Spec : Prop :=
  ∀ n, P16778571238963759926.a n = A180571 (n + 2)

end A180571

/-! ## A180571.P9781834635918907023

`A047251(A004188(n+3)-A027480(n))`
-/

namespace A180571.P9781834635918907023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047251 (A004188 (n + 3) - A027480 n).toNat

end

end A180571.P9781834635918907023

namespace A180571

/-- `A047251(A004188(n+3)-A027480(n))` -/
def P9781834635918907023.Spec : Prop :=
  ∀ n, P9781834635918907023.a n = A180571 (n + 2)

end A180571

/-!
# A180574: Wiener index of the n-sunlet graph.

The programs for A180574, the canonical program `A180574.P10800761777859421286` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180574 has offset 3).

The definition of A180574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180574.P10800761777859421286

`(A167614(n+2)+A007494(n))*(n+3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180574

/-- `(A167614(n+2)+A007494(n))*(n+3)` -/
def P10800761777859421286.Spec : Prop :=
  ∀ n, P10800761777859421286.a n = A180574 (n + 3)

theorem P10800761777859421286.correct : P10800761777859421286.Spec := by
  intro n
  simp only [A180574, Nat.add_sub_cancel]

end A180574

/-! ## A180574.P3391912269073444826

`(A265284(n+2)+1)*(n+3)`
-/

namespace A180574.P3391912269073444826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A265284 (n + 2) + 1) * (n + 3 : ℤ)

end

end A180574.P3391912269073444826

namespace A180574

/-- `(A265284(n+2)+1)*(n+3)` -/
def P3391912269073444826.Spec : Prop :=
  ∀ n, P3391912269073444826.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P10730206834211746424

`(A267461(n+2)+3)*(n+3)`
-/

namespace A180574.P10730206834211746424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267461 (n + 2) + 3) * (n + 3 : ℤ)

end

end A180574.P10730206834211746424

namespace A180574

/-- `(A267461(n+2)+3)*(n+3)` -/
def P10730206834211746424.Spec : Prop :=
  ∀ n, P10730206834211746424.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P2596321960744123587

`(n+3)*(A074148(n+3)+n+2)`
-/

namespace A180574.P2596321960744123587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A074148 (n + 3) + (n + 2 : ℤ))

end

end A180574.P2596321960744123587

namespace A180574

/-- `(n+3)*(A074148(n+3)+n+2)` -/
def P2596321960744123587.Spec : Prop :=
  ∀ n, P2596321960744123587.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P1313080921441353360

`(A116940(n+2)+n+3)*(n+3)`
-/

namespace A180574.P1313080921441353360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116940 (n + 2) + (n + 3 : ℤ)) * (n + 3 : ℤ)

end

end A180574.P1313080921441353360

namespace A180574

/-- `(A116940(n+2)+n+3)*(n+3)` -/
def P1313080921441353360.Spec : Prop :=
  ∀ n, P1313080921441353360.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P9373759933682182591

`A138179(n+3)+(n+2)*(n+3)`
-/

namespace A180574.P9373759933682182591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138179 (n + 3) + ((n + 2) * (n + 3) : ℤ)

end

end A180574.P9373759933682182591

namespace A180574

/-- `A138179(n+3)+(n+2)*(n+3)` -/
def P9373759933682182591.Spec : Prop :=
  ∀ n, P9373759933682182591.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P16948547653346129717

`A074149(n+3)+A046092(n+2)`
-/

namespace A180574.P16948547653346129717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) + A046092 (n + 2)

end

end A180574.P16948547653346129717

namespace A180574

/-- `A074149(n+3)+A046092(n+2)` -/
def P16948547653346129717.Spec : Prop :=
  ∀ n, P16948547653346129717.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P11478662116809367746

`A106232(n+3)+A074149(n+3)`
-/

namespace A180574.P11478662116809367746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106232 (n + 3) + A074149 (n + 3)

end

end A180574.P11478662116809367746

namespace A180574

/-- `A106232(n+3)+A074149(n+3)` -/
def P11478662116809367746.Spec : Prop :=
  ∀ n, P11478662116809367746.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P10551687717608668186

`(n+3)*(A052905(n+2)-A008619(n))`
-/

namespace A180574.P10551687717608668186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A052905 (n + 2) - A008619 n)

end

end A180574.P10551687717608668186

namespace A180574

/-- `(n+3)*(A052905(n+2)-A008619(n))` -/
def P10551687717608668186.Spec : Prop :=
  ∀ n, P10551687717608668186.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P11350089087839123884

`(n+3)*(A000096(n+3)+A004526(n+1))`
-/

namespace A180574.P11350089087839123884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A000096 (n + 3) + A004526 (n + 1))

end

end A180574.P11350089087839123884

namespace A180574

/-- `(n+3)*(A000096(n+3)+A004526(n+1))` -/
def P11350089087839123884.Spec : Prop :=
  ∀ n, P11350089087839123884.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P14556232497195980414

`(n+3)*(A055998(n+3)-2-A008619(n))`
-/

namespace A180574.P14556232497195980414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A055998 (n + 3) - 2 - A008619 n)

end

end A180574.P14556232497195980414

namespace A180574

/-- `(n+3)*(A055998(n+3)-2-A008619(n))` -/
def P14556232497195980414.Spec : Prop :=
  ∀ n, P14556232497195980414.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P6170567204873367061

`(n+3)*(A000982(n+4)+n+1)`
-/

namespace A180574.P6170567204873367061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A000982 (n + 4) + (n + 1 : ℤ))

end

end A180574.P6170567204873367061

namespace A180574

/-- `(n+3)*(A000982(n+4)+n+1)` -/
def P6170567204873367061.Spec : Prop :=
  ∀ n, P6170567204873367061.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P10618198945879155469

`(n+3)*(A007590(n+5)-3)`
-/

namespace A180574.P10618198945879155469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A007590 (n + 5) - 3)

end

end A180574.P10618198945879155469

namespace A180574

/-- `(n+3)*(A007590(n+5)-3)` -/
def P10618198945879155469.Spec : Prop :=
  ∀ n, P10618198945879155469.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P9410717681481395439

`A074149(n+3)+A074148(2*(n+2))`
-/

namespace A180574.P9410717681481395439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) + A074148 (2 * (n + 2))

end

end A180574.P9410717681481395439

namespace A180574

/-- `A074149(n+3)+A074148(2*(n+2))` -/
def P9410717681481395439.Spec : Prop :=
  ∀ n, P9410717681481395439.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P10489973971086513564

`(n+3)*A005408(A014616(n+2))`
-/

namespace A180574.P10489973971086513564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A005408 (A014616 (n + 2)).toNat

end

end A180574.P10489973971086513564

namespace A180574

/-- `(n+3)*A005408(A014616(n+2))` -/
def P10489973971086513564.Spec : Prop :=
  ∀ n, P10489973971086513564.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P276571228804768411

`(n+3)*A183573(A116940(n+2))`
-/

namespace A180574.P276571228804768411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A183573 (A116940 (n + 2)).toNat

end

end A180574.P276571228804768411

namespace A180574

/-- `(n+3)*A183573(A116940(n+2))` -/
def P276571228804768411.Spec : Prop :=
  ∀ n, P276571228804768411.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P12159149612337012598

`(n+3)*A182834(A182834(A007590(n+3)))`
-/

namespace A180574.P12159149612337012598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A182834 (A182834 (A007590 (n + 3)).toNat).toNat

end

end A180574.P12159149612337012598

namespace A180574

/-- `(n+3)*A182834(A182834(A007590(n+3)))` -/
def P12159149612337012598.Spec : Prop :=
  ∀ n, P12159149612337012598.a n = A180574 (n + 3)

end A180574

/-! ## A180574.P14735656282799795476

`(n+3)*A267458(A116940(n+3))`
-/

namespace A180574.P14735656282799795476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A267458 (A116940 (n + 3)).toNat

end

end A180574.P14735656282799795476

namespace A180574

/-- `(n+3)*A267458(A116940(n+3))` -/
def P14735656282799795476.Spec : Prop :=
  ∀ n, P14735656282799795476.a n = A180574 (n + 3)

end A180574

/-!
# A180576: Wiener index of the n-web graph.

The programs for A180576, the canonical program `A180576.P8358727262021355321` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180576 has offset 1).

The definition of A180576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180576.P8358727262021355321

`(n+1)*(2*(n+1)*(9*(n+1)+40)+9*(-1)^(n+1)-25)/16`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180576

/-- `(n+1)*(2*(n+1)*(9*(n+1)+40)+9*(-1)^(n+1)-25)/16` -/
def P8358727262021355321.Spec : Prop :=
  ∀ n, P8358727262021355321.a n = (A180576 (n + 1) : ℚ)

end A180576

/-! ## A180576.P10321980297461539798

`A053307(3*n+1)+∑[A017305(n)]`
-/

namespace A180576.P10321980297461539798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 (3 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180576.P10321980297461539798

namespace A180576

/-- `A053307(3*n+1)+∑[A017305(n)]` -/
def P10321980297461539798.Spec : Prop :=
  ∀ n, P10321980297461539798.a n = A180576 (n + 1)

end A180576

/-! ## A180576.P14634145928166907043

`A001318(3*n+2)+∑[A001318(3*n+2)+n]`
-/

namespace A180576.P14634145928166907043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (3 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180576.P14634145928166907043

namespace A180576

/-- `A001318(3*n+2)+∑[A001318(3*n+2)+n]` -/
def P14634145928166907043.Spec : Prop :=
  ∀ n, P14634145928166907043.a n = A180576 (n + 1)

end A180576

/-! ## A180576.P5722000916326530492

`∑[A017209(A001318(n)+n)+n]`
-/

namespace A180576.P5722000916326530492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (A001318 n + (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180576.P5722000916326530492

namespace A180576

/-- `∑[A017209(A001318(n)+n)+n]` -/
def P5722000916326530492.Spec : Prop :=
  ∀ n, P5722000916326530492.a n = A180576 (n + 1)

end A180576

/-!
# A180577: The Wiener index of the windmill graph D(6,n). The windmill graph D(m,n) is the graph obtained by taking n copies of the complete graph K_m with a vertex in common (i.e., a bouquet of n pieces of K_m graphs).

The programs for A180577, the canonical program `A180577.P18336512551254499163` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180577 has offset 1).

The definition of A180577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180577.P18336512551254499163

`5*(n+1)*(5*(n+1)-2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180577

/-- `5*(n+1)*(5*(n+1)-2)` -/
def P18336512551254499163.Spec : Prop :=
  ∀ n, P18336512551254499163.a n = A180577 (n + 1)

theorem P18336512551254499163.correct : P18336512551254499163.Spec := by
  intro n
  simp only [A180577, Nat.add_sub_cancel]

end A180577

/-! ## A180577.P8738393330161192912

`(5*n+4)²-cot(atan(1))`
-/

namespace A180577.P8738393330161192912
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 * n + 4) ^ 2 : ℝ) - Real.cot (Real.arctan (1 : ℝ))

end

end A180577.P8738393330161192912

namespace A180577

/-- `(5*n+4)²-cot(atan(1))` -/
def P8738393330161192912.Spec : Prop :=
  ∀ n, P8738393330161192912.a n = (A180577 (n + 1) : ℝ)

end A180577

/-! ## A180577.P17835118675439544162

`record[(gcd(5, n)+n-1)²]-1`
-/

namespace A180577.P17835118675439544162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A180577.P17835118675439544162

namespace A180577

/-- `record[(gcd(5, n)+n-1)²]-1` -/
def P17835118675439544162.Spec : Prop :=
  ∀ n, P17835118675439544162.a n = A180577 (n + 1)

end A180577

/-! ## A180577.P12121614552480377892

`record[(1-abs(5*(1-n)))²]-1`
-/

namespace A180577.P12121614552480377892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |5 * (1 - (n : ℤ))|) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A180577.P12121614552480377892

namespace A180577

/-- `record[(1-abs(5*(1-n)))²]-1` -/
def P12121614552480377892.Spec : Prop :=
  ∀ n, P12121614552480377892.a n = A180577 (n + 1)

end A180577

/-! ## A180577.P10623460906800222303

`A016898(n)-1`
-/

namespace A180577.P10623460906800222303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n - 1

end

end A180577.P10623460906800222303

namespace A180577

/-- `A016898(n)-1` -/
def P10623460906800222303.Spec : Prop :=
  ∀ n, P10623460906800222303.a n = A180577 (n + 1)

end A180577

/-! ## A180577.P6399738481840507132

`A016897(n)²-1`
-/

namespace A180577.P6399738481840507132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n ^ 2 - 1

end

end A180577.P6399738481840507132

namespace A180577

/-- `A016897(n)²-1` -/
def P6399738481840507132.Spec : Prop :=
  ∀ n, P6399738481840507132.a n = A180577 (n + 1)

end A180577

/-! ## A180577.P8811535558460355661

`sqrt(A016900(n))-1`
-/

namespace A180577.P8811535558460355661
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016900 n : ℝ) - 1

end

end A180577.P8811535558460355661

namespace A180577

/-- `sqrt(A016900(n))-1` -/
def P8811535558460355661.Spec : Prop :=
  ∀ n, P8811535558460355661.a n = (A180577 (n + 1) : ℝ)

end A180577

/-! ## A180577.P17731247968765673411

`A017366(n)/4-1`
-/

namespace A180577.P17731247968765673411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017366 n : ℚ) / 4 - 1

end

end A180577.P17731247968765673411

namespace A180577

/-- `A017366(n)/4-1` -/
def P17731247968765673411.Spec : Prop :=
  ∀ n, P17731247968765673411.a n = (A180577 (n + 1) : ℚ)

end A180577

/-! ## A180577.P7598438297234895617

`sqrt(sqrt(A016904(n)))-1`
-/

namespace A180577.P7598438297234895617
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016904 n : ℝ)) - 1

end

end A180577.P7598438297234895617

namespace A180577

/-- `sqrt(sqrt(A016904(n)))-1` -/
def P7598438297234895617.Spec : Prop :=
  ∀ n, P7598438297234895617.a n = (A180577 (n + 1) : ℝ)

end A180577

/-! ## A180577.P4949731889759787811

`(A016885(n)+1)²-1`
-/

namespace A180577.P4949731889759787811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n + 1) ^ 2 - 1

end

end A180577.P4949731889759787811

namespace A180577

/-- `(A016885(n)+1)²-1` -/
def P4949731889759787811.Spec : Prop :=
  ∀ n, P4949731889759787811.a n = A180577 (n + 1)

end A180577

/-! ## A180577.P7605138076330399843

`(A016873(n)+2)²-1`
-/

namespace A180577.P7605138076330399843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016873 n + 2) ^ 2 - 1

end

end A180577.P7605138076330399843

namespace A180577

/-- `(A016873(n)+2)²-1` -/
def P7605138076330399843.Spec : Prop :=
  ∀ n, P7605138076330399843.a n = A180577 (n + 1)

end A180577

/-! ## A180577.P13622495646639009370

`(A017365(n)/2)²-1`
-/

namespace A180577.P13622495646639009370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017365 n : ℚ) / 2) ^ 2 - 1

end

end A180577.P13622495646639009370

namespace A180577

/-- `(A017365(n)/2)²-1` -/
def P13622495646639009370.Spec : Prop :=
  ∀ n, P13622495646639009370.a n = (A180577 (n + 1) : ℚ)

end A180577

/-! ## A180577.P15052825659336645937

`(n-A016957(n))²-1`
-/

namespace A180577.P15052825659336645937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A016957 n) ^ 2 - 1

end

end A180577.P15052825659336645937

namespace A180577

/-- `(n-A016957(n))²-1` -/
def P15052825659336645937.Spec : Prop :=
  ∀ n, P15052825659336645937.a n = A180577 (n + 1)

end A180577

/-! ## A180577.P13421673598144223300

`(1-A016969(n)+n)²-1`
-/

namespace A180577.P13421673598144223300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A016969 n + (n : ℤ)) ^ 2 - 1

end

end A180577.P13421673598144223300

namespace A180577

/-- `(1-A016969(n)+n)²-1` -/
def P13421673598144223300.Spec : Prop :=
  ∀ n, P13421673598144223300.a n = A180577 (n + 1)

end A180577

/-! ## A180577.P1519751209733923547

`A180579(n+1)+n²+n`
-/

namespace A180577.P1519751209733923547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180579 (n + 1) + (n ^ 2 + n : ℤ)

end

end A180577.P1519751209733923547

namespace A180577

/-- `A180579(n+1)+n²+n` -/
def P1519751209733923547.Spec : Prop :=
  ∀ n, P1519751209733923547.a n = A180577 (n + 1)

end A180577

/-!
# A180578: The Wiener index of the Dutch windmill graph D(6,n) (n>=1).

The programs for A180578, the canonical program `A180578.P8224656292788587110` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180578 has offset 1).

The definition of A180578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180578.P8224656292788587110

`9*(n+1)*(5*(n+1)-2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180578

/-- `9*(n+1)*(5*(n+1)-2)` -/
def P8224656292788587110.Spec : Prop :=
  ∀ n, P8224656292788587110.a n = A180578 (n + 1)

theorem P8224656292788587110.correct : P8224656292788587110.Spec := by
  intro n
  simp only [A180578, Nat.add_sub_cancel]

end A180578

/-! ## A180578.P8661143563727090837

`A017234(n)-A016946(n)`
-/

namespace A180578.P8661143563727090837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n - A016946 n

end

end A180578.P8661143563727090837

namespace A180578

/-- `A017234(n)-A016946(n)` -/
def P8661143563727090837.Spec : Prop :=
  ∀ n, P8661143563727090837.a n = A180578 (n + 1)

end A180578

/-! ## A180578.P1066204056004837881

`A157365(n+1)-A277108(n+1)`
-/

namespace A180578.P1066204056004837881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157365 (n + 1) - A277108 (n + 1)

end

end A180578.P1066204056004837881

namespace A180578

/-- `A157365(n+1)-A277108(n+1)` -/
def P1066204056004837881.Spec : Prop :=
  ∀ n, P1066204056004837881.a n = A180578 (n + 1)

end A180578

/-! ## A180578.P18320348505766291371

`A017257(n)+A304507(n)-A004273(n+1)`
-/

namespace A180578.P18320348505766291371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n + (A304507 n - A004273 (n + 1))

end

end A180578.P18320348505766291371

namespace A180578

/-- `A017257(n)+A304507(n)-A004273(n+1)` -/
def P18320348505766291371.Spec : Prop :=
  ∀ n, P18320348505766291371.a n = A180578 (n + 1)

end A180578

/-! ## A180578.P3986233377947507408

`A193872(n+1)+A180577(n+1)`
-/

namespace A180578.P3986233377947507408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193872 (n + 1) + A180577 (n + 1)

end

end A180578.P3986233377947507408

namespace A180578

/-- `A193872(n+1)+A180577(n+1)` -/
def P3986233377947507408.Spec : Prop :=
  ∀ n, P3986233377947507408.a n = A180578 (n + 1)

end A180578

/-! ## A180578.P4758322911805688256

`A008590(n+1)+A192827(n+1)+A014642(n+1)`
-/

namespace A180578.P4758322911805688256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) + (A192827 (n + 1) + A014642 (n + 1))

end

end A180578.P4758322911805688256

namespace A180578

/-- `A008590(n+1)+A192827(n+1)+A014642(n+1)` -/
def P4758322911805688256.Spec : Prop :=
  ∀ n, P4758322911805688256.a n = A180578 (n + 1)

end A180578

/-! ## A180578.P11600648171747804298

`A193872(n+1)+A193872(n+1)+A147874(n+2)`
-/

namespace A180578.P11600648171747804298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193872 (n + 1) + (A193872 (n + 1) + A147874 (n + 2))

end

end A180578.P11600648171747804298

namespace A180578

/-- `A193872(n+1)+A193872(n+1)+A147874(n+2)` -/
def P11600648171747804298.Spec : Prop :=
  ∀ n, P11600648171747804298.a n = A180578 (n + 1)

end A180578

/-! ## A180578.P4842157532801980504

`A180577(n+1)+A180577(n+1)-A147874(n+2)`
-/

namespace A180578.P4842157532801980504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180577 (n + 1) + (A180577 (n + 1) - A147874 (n + 2))

end

end A180578.P4842157532801980504

namespace A180578

/-- `A180577(n+1)+A180577(n+1)-A147874(n+2)` -/
def P4842157532801980504.Spec : Prop :=
  ∀ n, P4842157532801980504.a n = A180578 (n + 1)

end A180578

/-! ## A180578.P13278373656331836141

`A147651(2*n)+A147651(n+1)`
-/

namespace A180578.P13278373656331836141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147651 (2 * n) + A147651 (n + 1)

end

end A180578.P13278373656331836141

namespace A180578

/-- `A147651(2*n)+A147651(n+1)` -/
def P13278373656331836141.Spec : Prop :=
  ∀ n, P13278373656331836141.a n = A180578 (n + 1)

end A180578

/-! ## A180578.P10058931003606968299

`A017234(n)-A152018(2*n+1)`
-/

namespace A180578.P10058931003606968299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n - A152018 (2 * n + 1)

end

end A180578.P10058931003606968299

namespace A180578

/-- `A017234(n)-A152018(2*n+1)` -/
def P10058931003606968299.Spec : Prop :=
  ∀ n, P10058931003606968299.a n = A180578 (n + 1)

end A180578

/-! ## A180578.P11923455962372497200

`A079273(3*(n+1))-2`
-/

namespace A180578.P11923455962372497200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (3 * (n + 1)) - 2

end

end A180578.P11923455962372497200

namespace A180578

/-- `A079273(3*(n+1))-2` -/
def P11923455962372497200.Spec : Prop :=
  ∀ n, P11923455962372497200.a n = A180578 (n + 1)

end A180578

/-!
# A180579: The Wiener index of the Dutch windmill graph D(5,n) (n>=1).

The programs for A180579, the canonical program `A180579.P7022362013141761854` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180579 has offset 1).

The definition of A180579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180579.P7022362013141761854

`3*(n+1)*(8*(n+1)-3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180579

/-- `3*(n+1)*(8*(n+1)-3)` -/
def P7022362013141761854.Spec : Prop :=
  ∀ n, P7022362013141761854.a n = A180579 (n + 1)

theorem P7022362013141761854.correct : P7022362013141761854.Spec := by
  intro n
  simp only [A180579, Nat.add_sub_cancel]

end A180579

/-! ## A180579.P13307955407821538601

`A180577(n+1)-(n²+n)`
-/

namespace A180579.P13307955407821538601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180577 (n + 1) - (n ^ 2 + n : ℤ)

end

end A180579.P13307955407821538601

namespace A180579

/-- `A180577(n+1)-(n²+n)` -/
def P13307955407821538601.Spec : Prop :=
  ∀ n, P13307955407821538601.a n = A180579 (n + 1)

end A180579

/-! ## A180579.P8762243945038859418

`2*A396291(n+1)+n+1`
-/

namespace A180579.P8762243945038859418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A396291 (n + 1) + (n + 1 : ℤ)

end

end A180579.P8762243945038859418

namespace A180579

/-- `2*A396291(n+1)+n+1` -/
def P8762243945038859418.Spec : Prop :=
  ∀ n, P8762243945038859418.a n = A180579 (n + 1)

end A180579

/-! ## A180579.P15432892556576607938

`A016897(n)²+n-(n+1)²`
-/

namespace A180579.P15432892556576607938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n ^ 2 + (n : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A180579.P15432892556576607938

namespace A180579

/-- `A016897(n)²+n-(n+1)²` -/
def P15432892556576607938.Spec : Prop :=
  ∀ n, P15432892556576607938.a n = A180579 (n + 1)

end A180579

/-! ## A180579.P16658617019963567388

`(A016885(n)+1)²+n-(n+1)²`
-/

namespace A180579.P16658617019963567388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n + 1) ^ 2 + (n : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A180579.P16658617019963567388

namespace A180579

/-- `(A016885(n)+1)²+n-(n+1)²` -/
def P16658617019963567388.Spec : Prop :=
  ∀ n, P16658617019963567388.a n = A180579 (n + 1)

end A180579

/-! ## A180579.P17295093516747754641

`A141759(n)+A139278(n)`
-/

namespace A180579.P17295093516747754641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 n + A139278 n

end

end A180579.P17295093516747754641

namespace A180579

/-- `A141759(n)+A139278(n)` -/
def P17295093516747754641.Spec : Prop :=
  ∀ n, P17295093516747754641.a n = A180579 (n + 1)

end A180579

/-! ## A180579.P5046328503958133003

`A157446(n+1)+A035008(n)`
-/

namespace A180579.P5046328503958133003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157446 (n + 1) + A035008 n

end

end A180579.P5046328503958133003

namespace A180579

/-- `A157446(n+1)+A035008(n)` -/
def P5046328503958133003.Spec : Prop :=
  ∀ n, P5046328503958133003.a n = A180579 (n + 1)

end A180579

/-!
# A180580: Number of occurrences of most frequent decimal digit(s) in Fibonacci(n).

The programs for A180580, there is no canonical definition to state claims against.
-/

/-! ## A180580.P4767709782102731128

`A108775(A000700(2*(n+2))*A132106(n))`
-/

namespace A180580.P4767709782102731128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (A000700 (2 * (n + 2)) * A132106 n).toNat

end

end A180580.P4767709782102731128

/-! ## A180580.P1166277449749971286

`A070939(A215905(3*(n+1))%A294788(n+3))`
-/

namespace A180580.P1166277449749971286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A215905 (3 * (n + 1))) (A294788 (n + 3))).toNat

end

end A180580.P1166277449749971286

/-!
# A180582: Number of Hamiltonian cycles in C_6 X P_n.

The programs for A180582, there is no canonical definition to state claims against.
-/

/-! ## A180582.P68908310139542579

`A359855(A046691(n+3))`
-/

namespace A180582.P68908310139542579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359855 (A046691 (n + 3)).toNat

end

end A180582.P68908310139542579

/-! ## A180582.P10991141831968854336

`A359855(A052905(n+2)+1)`
-/

namespace A180582.P10991141831968854336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359855 (A052905 (n + 2) + 1).toNat

end

end A180582.P10991141831968854336

/-! ## A180582.P2366776984747534831

`A359855(A000124(n+4)+n)`
-/

namespace A180582.P2366776984747534831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359855 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A180582.P2366776984747534831

/-!
# A180583: Number of Hamiltonian cycles in C_7 X P_n.

The programs for A180583, there is no canonical definition to state claims against.
-/

/-! ## A180583.P3079280540651764647

`A359855(A052905(n+3))`
-/

namespace A180583.P3079280540651764647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359855 (A052905 (n + 3)).toNat

end

end A180583.P3079280540651764647

/-! ## A180583.P13230629769979941119

`A359855(A055999(n+3)+1)`
-/

namespace A180583.P13230629769979941119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359855 (A055999 (n + 3) + 1).toNat

end

end A180583.P13230629769979941119

/-!
# A180584: Number of Hamiltonian cycles in C_8 X P_n.

The programs for A180584, there is no canonical definition to state claims against.
-/

/-! ## A180584.P13315177408679497245

`A359855(A000096(n+6)-5)`
-/

namespace A180584.P13315177408679497245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359855 (A000096 (n + 6) - 5).toNat

end

end A180584.P13315177408679497245

/-!
# A180589: a(n) = floor(n!*h(n)/n), where h(n) = Sum_{k=1..n} 1/k.

The programs for A180589, there is no canonical definition to state claims against.
-/

/-! ## A180589.P1957697358356188444

`(A000254(n+1)-A061006(n+1))/(n+1)`
-/

namespace A180589.P1957697358356188444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (n + 1) - A061006 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A180589.P1957697358356188444

/-! ## A180589.P1626627514246359146

`floor(A160039(n)/A014973(n+1))`
-/

namespace A180589.P1626627514246359146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160039 n : ℚ) / (A014973 (n + 1) : ℚ)⌋

end

end A180589.P1626627514246359146

/-! ## A180589.P15199303586847839335

`floor(Δ[A097422(n)]/(n+1))`
-/

namespace A180589.P15199303586847839335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A180589.P15199303586847839335

/-! ## A180589.P4673303153359288442

`floor(A000254(n+1)/(n+1))`
-/

namespace A180589.P4673303153359288442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000254 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A180589.P4673303153359288442

/-! ## A180589.P161322820563413214

`floor(A052517(n+2)/(2*(n+1)))`
-/

namespace A180589.P161322820563413214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052517 (n + 2) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A180589.P161322820563413214

/-! ## A180589.P10032932033260699428

`floor(record[A093905(n+1)/A028421(n)])`
-/

namespace A180589.P10032932033260699428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093905 (n + 1) : ℚ) / (A028421 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A180589.P10032932033260699428

/-!
# A180590: Numbers k such that k! is the sum of two triangular numbers.

The programs for A180590, there is no canonical definition to state claims against.
-/

/-! ## A180590.P5063334206196445970

`comp[A152089(n+1)]`
-/

namespace A180590.P5063334206196445970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A180590.P5063334206196445970

/-! ## A180590.P366058999227382466

`lt[0, A171099(n)]`
-/

namespace A180590.P366058999227382466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A180590.P366058999227382466

/-! ## A180590.P8154135887530185166

`eq[A000120(A171099(n)), A088840(2*n+1)]`
-/

namespace A180590.P8154135887530185166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A171099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180590.P8154135887530185166

/-! ## A180590.P17582323762651062858

`eq[A054977(3*n+2), A054977(A171099(n))]`
-/

namespace A180590.P17582323762651062858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A171099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180590.P17582323762651062858

/-!
# A180591: G.f.: A(x) = exp( Sum_{n>=1} 2^[A001511(n)^2]*x^n/n ) where A001511(n) is the exponent in the highest power of 2 that divides 2n.

The programs for A180591, there is no canonical definition to state claims against.
-/

/-! ## A180591.P8916560095270110623

`record[Δ[A162580(n)]-char[2]]`
-/

namespace A180591.P8916560095270110623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162580 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180591.P8916560095270110623

/-! ## A180591.P8544252154904475590

`record[Δ[A162580(n)]*A033999(n)]`
-/

namespace A180591.P8544252154904475590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162580 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180591.P8544252154904475590

/-! ## A180591.P10389819302615394920

`record[Δ[A162580(n)]*A060576(n)]`
-/

namespace A180591.P10389819302615394920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162580 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180591.P10389819302615394920

/-! ## A180591.P6992570328443229035

`record[Δ[A162580(n)]/A040001(n)]`
-/

namespace A180591.P6992570328443229035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162580 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A040001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180591.P6992570328443229035

/-! ## A180591.P12566966999020195173

`record[Δ[A162580(n)]/A050932(n)]`
-/

namespace A180591.P12566966999020195173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162580 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A050932 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180591.P12566966999020195173

/-! ## A180591.P2289331491809217658

`A162580(2*n+1)-A162580(2*n)`
-/

namespace A180591.P2289331491809217658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162580 (2 * n + 1) - A162580 (2 * n)

end

end A180591.P2289331491809217658

/-!
# A180592: Digital root of 2n.

The programs for A180592, the canonical program `A180592.P11755206785399238743` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180592 has offset 0).

The definition of A180592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180592.P11755206785399238743

`(2*n-1)%9+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180592

/-- `(2*n-1)%9+1` -/
def P11755206785399238743.Spec : Prop :=
  ∀ n, P11755206785399238743.a n = A180592 n

theorem P11755206785399238743.correct : P11755206785399238743.Spec := by
  intro n
  simp only [A180592]

end A180592

/-!
# A180593: Digital root of 3n.

The programs for A180593, the canonical program `A180593.P9655409396042490012` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180593 has offset 0).

The definition of A180593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180593.P9655409396042490012

`dr(3*n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180593

/-- `dr(3*n)` -/
def P9655409396042490012.Spec : Prop :=
  ∀ n, (P9655409396042490012.a n : ℤ) = A180593 n

theorem P9655409396042490012.correct : P9655409396042490012.Spec := by
  intro n
  simp only [A180593]

end A180593

/-!
# A180594: Digital root of 4n.

The programs for A180594, the canonical program `A180594.P4637662298707689836` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180594 has offset 0).

The definition of A180594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180594.P4637662298707689836

`dr(4*n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180594

/-- `dr(4*n)` -/
def P4637662298707689836.Spec : Prop :=
  ∀ n, (P4637662298707689836.a n : ℤ) = A180594 n

theorem P4637662298707689836.correct : P4637662298707689836.Spec := by
  intro n
  simp only [A180594]

end A180594

/-!
# A180595: Digital root of 5n.

The programs for A180595, the canonical program `A180595.P4900307302898249881` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180595 has offset 0).

The definition of A180595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180595.P4900307302898249881

`dr(5*n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A180595

/-- `dr(5*n)` -/
def P4900307302898249881.Spec : Prop :=
  ∀ n, (P4900307302898249881.a n : ℤ) = A180595 n

theorem P4900307302898249881.correct : P4900307302898249881.Spec := by
  intro n
  simp only [A180595]

end A180595

/-!
# A180596: Digital root of 6n.

The programs for A180596, the canonical program `A180596.P8428728232860519576` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180596 has offset 0).

The definition of A180596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180596.P8428728232860519576

`A010888(A008588(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180596

/-- `A010888(A008588(n))` -/
def P8428728232860519576.Spec : Prop :=
  ∀ n, P8428728232860519576.a n = A180596 n

theorem P8428728232860519576.correct : P8428728232860519576.Spec := by
  intro n
  simp only [A180596]

end A180596

/-!
# A180597: Digital root of 7n.

The programs for A180597, the canonical program `A180597.P6998354681159105748` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180597 has offset 0).

The definition of A180597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180597.P6998354681159105748

`A010888(A008589(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180597

/-- `A010888(A008589(n))` -/
def P6998354681159105748.Spec : Prop :=
  ∀ n, P6998354681159105748.a n = A180597 n

theorem P6998354681159105748.correct : P6998354681159105748.Spec := by
  intro n
  simp only [A180597]

end A180597

/-!
# A180598: Digital root of 8n.

The programs for A180598, the canonical program `A180598.P16671004431171138074` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180598 has offset 0).

The definition of A180598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180598.P16671004431171138074

`A010888(8*n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180598

/-- `A010888(8*n)` -/
def P16671004431171138074.Spec : Prop :=
  ∀ n, P16671004431171138074.a n = A180598 n

theorem P16671004431171138074.correct : P16671004431171138074.Spec := by
  intro n
  simp only [A180598]

end A180598

/-!
# A180599: Zero followed by infinitely many 9's.

The programs for A180599, the canonical program `A180599.P9398936369413661258` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180599 has offset 0).

The definition of A180599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180599.P9398936369413661258

`A010888(9*n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180599

/-- `A010888(9*n)` -/
def P9398936369413661258.Spec : Prop :=
  ∀ n, P9398936369413661258.a n = A180599 n

theorem P9398936369413661258.correct : P9398936369413661258.Spec := by
  intro n
  simp only [A180599]

end A180599

