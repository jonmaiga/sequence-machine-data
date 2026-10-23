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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A177000: The Collatz iteration of these primes produces only even numbers, primes and 1.

The programs for A177000, there is no canonical definition to state claims against.
-/

/-! ## A177000.P448082558254306606

`eq[A018783(n), A098158(A293496(n+1))]`
-/

namespace A177000.P448082558254306606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (A293496 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177000.P448082558254306606

/-! ## A177000.P11746800836861853857

`record[A007918(n)/A186028(n)]`
-/

namespace A177000.P11746800836861853857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007918 n : ℚ) / (A186028 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177000.P11746800836861853857

/-! ## A177000.P9701394447439441892

`eq[A003415(n), A109672(A057163(n))]`
-/

namespace A177000.P9701394447439441892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109672 (A057163 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177000.P9701394447439441892

/-! ## A177000.P8950118937372545367

`A000040(lt[A003238(n+1), A328908(3*n)])`
-/

namespace A177000.P8950118937372545367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328908 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177000.P8950118937372545367

/-! ## A177000.P5936431734888398323

`A000040(lt[A003586(n+1), A328908(3*n)])`
-/

namespace A177000.P5936431734888398323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328908 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177000.P5936431734888398323

/-!
# A177001: The number of 3x+1 steps in the Collatz iteration of A033491(n), the least number requiring n iterations.

The programs for A177001, there is no canonical definition to state claims against.
-/

/-! ## A177001.P16866894357730461722

`∑[2-ceil(ratio[A033491(n)])]`
-/

namespace A177001.P16866894357730461722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177001.P16866894357730461722

/-! ## A177001.P9525983874021175965

`A006667(A033491(n+1))`
-/

namespace A177001.P9525983874021175965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A033491 (n + 1)).toNat

end

end A177001.P9525983874021175965

/-! ## A177001.P9443981378670802308

`∑[Δ[A006667(A033491(n))]²]`
-/

namespace A177001.P9443981378670802308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A033491 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177001.P9443981378670802308

/-! ## A177001.P11231762510886354301

`A006667(Δ[2*∑[A033491(n)]])`
-/

namespace A177001.P11231762510886354301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (f1 (n + 1) - f1 n).toNat

end

end A177001.P11231762510886354301

/-! ## A177001.P6382545321873017804

`n+1-A006666(A033491(C(n+1, n)))`
-/

namespace A177001.P6382545321873017804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006666 (A033491 (Nat.choose (n + 1) n)).toNat

end

end A177001.P6382545321873017804

/-! ## A177001.P16042975350915212139

`∑[Δ[A006667(A033491(n))]^A007318(n)]`
-/

namespace A177001.P16042975350915212139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A033491 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A007318 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177001.P16042975350915212139

/-! ## A177001.P8520212275368068638

`A000027(n+1)-A006666(A033491(n+1))`
-/

namespace A177001.P8520212275368068638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A006666 (A033491 (n + 1)).toNat

end

end A177001.P8520212275368068638

/-! ## A177001.P10340986017704431132

`(n+1-A006666(A033491(n+1)))%A000040(n+1)`
-/

namespace A177001.P10340986017704431132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A006666 (A033491 (n + 1)).toNat) (A000040 (n + 1))

end

end A177001.P10340986017704431132

/-! ## A177001.P16002416172116679479

`A020639(2*(n+1))-A006666(A033491(n+1))+n-1`
-/

namespace A177001.P16002416172116679479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) - A006666 (A033491 (n + 1)).toNat + ((n : ℤ) - 1)

end

end A177001.P16002416172116679479

/-! ## A177001.P7631026988882866058

`A008683(4*(n+1))+n+1-A006666(A033491(n+1))`
-/

namespace A177001.P7631026988882866058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + ((n + 1 : ℤ) - A006666 (A033491 (n + 1)).toNat)

end

end A177001.P7631026988882866058

/-!
# A177002: Period 4: repeat [1, 2, 4, 2].

The programs for A177002, the canonical program `A177002.P4250697414860805965` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177002 has offset 0).

The definition of A177002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177002.P4250697414860805965

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177002

/-- `a(n-4)` -/
def P4250697414860805965.Spec : Prop :=
  ∀ n, (P4250697414860805965.a n : ℤ) = A177002 n

theorem P4250697414860805965.correct : P4250697414860805965.Spec := by
  intro n
  simp only [A177002]

end A177002

/-!
# A177005: Numbers k such that k^k = k (mod prime(k)).

The programs for A177005, there is no canonical definition to state claims against.
-/

/-! ## A177005.P6389095453969016150

`A000720(A382520(n+1))`
-/

namespace A177005.P6389095453969016150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A382520 (n + 1)).toNat

end

end A177005.P6389095453969016150

/-!
# A177009: a(n) = n^n - A002275(n).

The programs for A177009, the canonical program `A177009.P13275391886955884048` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177009 has offset 1).

The definition of A177009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)-A002275(n+1)` (program `A177009.P13275391886955884048`, by `A177009.P13275391886955884048.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177009.P9079685045314130325

`(n+1)^(n+1)-(10^(n+1)-1)/9`
-/

namespace A177009.P9079685045314130325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) - ((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9

end

end A177009.P9079685045314130325

namespace A177009

/-- `(n+1)^(n+1)-(10^(n+1)-1)/9` -/
def P9079685045314130325.Spec : Prop :=
  ∀ n, P9079685045314130325.a n = (A177009 (n + 1) : ℚ)

end A177009

/-! ## A177009.P13275391886955884048

`(n+1)^(n+1)-A002275(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A177009

/-- `(n+1)^(n+1)-A002275(n+1)` -/
def P13275391886955884048.Spec : Prop :=
  ∀ n, P13275391886955884048.a n = A177009 (n + 1)

theorem P13275391886955884048.correct : P13275391886955884048.Spec := by
  intro n
  simp only [A177009, Nat.add_sub_cancel]

end A177009

/-! ## A177009.P2519195743073750235

`∑[or(1, Δ[n^n])-10^n]`
-/

namespace A177009.P2519195743073750235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177009.P2519195743073750235

namespace A177009

/-- `∑[or(1, Δ[n^n])-10^n]` -/
def P2519195743073750235.Spec : Prop :=
  ∀ n, P2519195743073750235.a n = A177009 (n + 1)

end A177009

/-! ## A177009.P9442869308223821343

`∑[A007781(n)-A011557(n)]`
-/

namespace A177009.P9442869308223821343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007781 n - A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177009.P9442869308223821343

namespace A177009

/-- `∑[A007781(n)-A011557(n)]` -/
def P9442869308223821343.Spec : Prop :=
  ∀ n, P9442869308223821343.a n = A177009 (n + 1)

end A177009

/-! ## A177009.P4266279145698899784

`(A000312(n+1)-record[A127805(n)])*A087960(n)²`
-/

namespace A177009.P4266279145698899784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * A087960 n ^ 2

end

end A177009.P4266279145698899784

namespace A177009

/-- `(A000312(n+1)-record[A127805(n)])*A087960(n)²` -/
def P4266279145698899784.Spec : Prop :=
  ∀ n, P4266279145698899784.a n = A177009 (n + 1)

end A177009

/-!
# A177010: G.f.: ((1-q)^2+(1+q)*sqrt(1-6*q+q^2))/2.

The programs for A177010, there is no canonical definition to state claims against.
-/

/-! ## A177010.P17452406125211288188

`A002865(n)-A064557(A002893(n))`
-/

namespace A177010.P17452406125211288188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A064557 (A002893 n).toNat

end

end A177010.P17452406125211288188

/-! ## A177010.P2300451547668810229

`xor(A057428(n), A302245(A048192(n+1)))`
-/

namespace A177010.P2300451547668810229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057428 n) (A302245 (A048192 (n + 1)).toNat)

end

end A177010.P2300451547668810229

/-!
# A177011: Define two triangular arrays by: B(0,0)=C(0,0)=1, B(0,r)=C(0,r)=0 for r>0, C(t,-1)=C(t,0); and for t,r >= 0, B(t+1,r)=C(t,r-1)+2C(t,r)-B(t,r), C(t+1,r)=B(t+1,r)+2B(t+1,r+1)-C(t,r). Sequence gives array B(t,r) read by rows.

The programs for A177011, there is no canonical definition to state claims against.
-/

/-! ## A177011.P3958363254804933822

`A197956(A057944(n)+A038722(n+1))`
-/

namespace A177011.P3958363254804933822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197956 (A057944 n + A038722 (n + 1)).toNat

end

end A177011.P3958363254804933822

/-! ## A177011.P9724478866374870686

`A309082(A201641(n)^A179930(n+1))`
-/

namespace A177011.P9724478866374870686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309082 (SequenceMachineLib.roundAway ((A201641 n : ℚ) ^ (A179930 (n + 1) : ℤ))).toNat

end

end A177011.P9724478866374870686

/-! ## A177011.P10781724407170347981

`A309082(A201641(n)^A376882(n+1))`
-/

namespace A177011.P10781724407170347981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309082 (SequenceMachineLib.roundAway ((A201641 n : ℚ) ^ (A376882 (n + 1) : ℤ))).toNat

end

end A177011.P10781724407170347981

/-! ## A177011.P13670811771621670648

`A309082(A201641(n)%A186142(n+1))`
-/

namespace A177011.P13670811771621670648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309082 (Int.tmod (A201641 n) (A186142 (n + 1))).toNat

end

end A177011.P13670811771621670648

/-!
# A177012: Numbers k such that k^k == -1 (mod phi(k)).

The programs for A177012, there is no canonical definition to state claims against.
-/

/-! ## A177012.P17124808161033863470

`A007998(A356017(n+1))`
-/

namespace A177012.P17124808161033863470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007998 (A356017 (n + 1)).toNat

end

end A177012.P17124808161033863470

/-!
# A177014: a(n) is the smallest number m such that all the n numbers 1!*m+1, 2!*m+1, ..., n!*m+1 are prime.

The programs for A177014, there is no canonical definition to state claims against.
-/

/-! ## A177014.P16747416611007941668

`A226935(n+1)-1`
-/

namespace A177014.P16747416611007941668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226935 (n + 1) - 1

end

end A177014.P16747416611007941668

/-! ## A177014.P4281136999034996126

`A321800(n)+A226935(n+1)`
-/

namespace A177014.P4281136999034996126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A226935 (n + 1)

end

end A177014.P4281136999034996126

/-! ## A177014.P7364116974747305836

`xor(-A226935(n+1), A057428(n+1))`
-/

namespace A177014.P7364116974747305836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A226935 (n + 1)) (A057428 (n + 1))

end

end A177014.P7364116974747305836

/-! ## A177014.P3580321402259904121

`A228068(gcd(n, n+1))+A226935(n+1)`
-/

namespace A177014.P3580321402259904121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228068 (Nat.gcd n (n + 1)) + A226935 (n + 1)

end

end A177014.P3580321402259904121

/-! ## A177014.P9525522908085182127

`xor(-A146291(n+1), -A226935(n+1))`
-/

namespace A177014.P9525522908085182127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A146291 (n + 1)) (-A226935 (n + 1))

end

end A177014.P9525522908085182127

/-!
# A177017: Primes prime(n) such that prime(n) + prime(n+1) + 1 is also prime.

The programs for A177017, the canonical program `A177017.P2945231276214916138` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177017 has offset 1).

The definition of A177017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177017.P2945231276214916138

`p?[eq[1, A010051(A151800(n)+1+n)]]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A177017

/-- `p?[eq[1, A010051(A151800(n)+1+n)]]` -/
def P2945231276214916138.Spec : Prop :=
  ∀ n, (P2945231276214916138.a n : ℤ) = A177017 (n + 1)

theorem P2945231276214916138.correct : P2945231276214916138.Spec := by
  intro n
  simp only [A177017, Nat.add_sub_cancel]

end A177017

/-! ## A177017.P12697293995373173684

`p?[A000040(n+1)*A001222(A001043(n+1)+1)]`
-/

namespace A177017.P12697293995373173684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A001043 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177017.P12697293995373173684

namespace A177017

/-- `p?[A000040(n+1)*A001222(A001043(n+1)+1)]` -/
def P12697293995373173684.Spec : Prop :=
  ∀ n, P12697293995373173684.a n = A177017 (n + 1)

end A177017

/-! ## A177017.P5036320373937318451

`p?[A006530(A283463(n+1)+n+1)-(n+1)]`
-/

namespace A177017.P5036320373937318451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A283463 (n + 1) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177017.P5036320373937318451

namespace A177017

/-- `p?[A006530(A283463(n+1)+n+1)-(n+1)]` -/
def P5036320373937318451.Spec : Prop :=
  ∀ n, P5036320373937318451.a n = A177017 (n + 1)

end A177017

/-! ## A177017.P15142656427978638826

`p?[A020639(A283463(n+1)+n+1)-(n+1)]`
-/

namespace A177017.P15142656427978638826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A283463 (n + 1) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177017.P15142656427978638826

namespace A177017

/-- `p?[A020639(A283463(n+1)+n+1)-(n+1)]` -/
def P15142656427978638826.Spec : Prop :=
  ∀ n, P15142656427978638826.a n = A177017 (n + 1)

end A177017

/-! ## A177017.P3129904936082798027

`p?[(A239864(n+1)-1)*A000040(n+1)]`
-/

namespace A177017.P3129904936082798027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A239864 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177017.P3129904936082798027

namespace A177017

/-- `p?[(A239864(n+1)-1)*A000040(n+1)]` -/
def P3129904936082798027.Spec : Prop :=
  ∀ n, P3129904936082798027.a n = A177017 (n + 1)

end A177017

/-! ## A177017.P7656992199538081173

`A055377(A092738(n+1))`
-/

namespace A177017.P7656992199538081173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A092738 (n + 1)).toNat

end

end A177017.P7656992199538081173

namespace A177017

/-- `A055377(A092738(n+1))` -/
def P7656992199538081173.Spec : Prop :=
  ∀ n, P7656992199538081173.a n = A177017 (n + 1)

end A177017

/-!
# A177018: a(n) is the smallest integer >= a(n-1) such that a(n) + A067076(n) + n-1 is an odd prime.

The programs for A177018, the canonical program `A177018.P4979215577074210027` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177018 has offset 1).

The definition of A177018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177018.P9113398493161304230

`(p?[2*n+1]+3)/2-n`
-/

namespace A177018.P9113398493161304230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3 : ℚ) / 2 - (n : ℚ)

end

end A177018.P9113398493161304230

namespace A177018

/-- `(p?[2*n+1]+3)/2-n` -/
def P9113398493161304230.Spec : Prop :=
  ∀ n, P9113398493161304230.a n = (A177018 (n + 1) : ℚ)

end A177018

/-! ## A177018.P17780469743216810764

`A008507(n+1)+3`
-/

namespace A177018.P17780469743216810764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + 3

end

end A177018.P17780469743216810764

namespace A177018

/-- `A008507(n+1)+3` -/
def P17780469743216810764.Spec : Prop :=
  ∀ n, P17780469743216810764.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P4645526541520434558

`A098090(n+1)-n`
-/

namespace A177018.P4645526541520434558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - (n : ℤ)

end

end A177018.P4645526541520434558

namespace A177018

/-- `A098090(n+1)-n` -/
def P4645526541520434558.Spec : Prop :=
  ∀ n, P4645526541520434558.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P4979215577074210027

`∑[A100820(n+1)]+3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A177018

/-- `∑[A100820(n+1)]+3` -/
def P4979215577074210027.Spec : Prop :=
  ∀ n, P4979215577074210027.a n = A177018 (n + 1)

theorem P4979215577074210027.correct : P4979215577074210027.Spec := by
  intro n
  simp only [A177018, Nat.add_sub_cancel]

end A177018

/-! ## A177018.P12447236453830855080

`A006254(n+1)+1-n`
-/

namespace A177018.P12447236453830855080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + (1 - (n : ℤ))

end

end A177018.P12447236453830855080

namespace A177018

/-- `A006254(n+1)+1-n` -/
def P12447236453830855080.Spec : Prop :=
  ∀ n, P12447236453830855080.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P7936090904344461402

`A089253(n+1)-(n+1)`
-/

namespace A177018.P7936090904344461402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - (n + 1 : ℤ)

end

end A177018.P7936090904344461402

namespace A177018

/-- `A089253(n+1)-(n+1)` -/
def P7936090904344461402.Spec : Prop :=
  ∀ n, P7936090904344461402.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P8315946546794381148

`A005097(n+1)+2-n`
-/

namespace A177018.P8315946546794381148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + (2 - (n : ℤ))

end

end A177018.P8315946546794381148

namespace A177018

/-- `A005097(n+1)+2-n` -/
def P8315946546794381148.Spec : Prop :=
  ∀ n, P8315946546794381148.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P805526537473446853

`A089192(n+1)-(n+2)`
-/

namespace A177018.P805526537473446853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - (n + 2 : ℤ)

end

end A177018.P805526537473446853

namespace A177018

/-- `A089192(n+1)-(n+2)` -/
def P805526537473446853.Spec : Prop :=
  ∀ n, P805526537473446853.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P6447103629383564538

`A067076(n+1)+3-n`
-/

namespace A177018.P6447103629383564538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + (3 - (n : ℤ))

end

end A177018.P6447103629383564538

namespace A177018

/-- `A067076(n+1)+3-n` -/
def P6447103629383564538.Spec : Prop :=
  ∀ n, P6447103629383564538.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P3657359659881899942

`A097069(n+1)-(n+3)`
-/

namespace A177018.P3657359659881899942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - (n + 3 : ℤ)

end

end A177018.P3657359659881899942

namespace A177018

/-- `A097069(n+1)-(n+3)` -/
def P3657359659881899942.Spec : Prop :=
  ∀ n, P3657359659881899942.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P2578131273485749036

`A097338(n+1)-(n+4)`
-/

namespace A177018.P2578131273485749036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) - (n + 4 : ℤ)

end

end A177018.P2578131273485749036

namespace A177018

/-- `A097338(n+1)-(n+4)` -/
def P2578131273485749036.Spec : Prop :=
  ∀ n, P2578131273485749036.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P10256199517827854769

`A097363(n+1)-(n+5)`
-/

namespace A177018.P10256199517827854769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - (n + 5 : ℤ)

end

end A177018.P10256199517827854769

namespace A177018

/-- `A097363(n+1)-(n+5)` -/
def P10256199517827854769.Spec : Prop :=
  ∀ n, P10256199517827854769.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P8747556673150877558

`A298252(n+1)/2-n`
-/

namespace A177018.P8747556673150877558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298252 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A177018.P8747556673150877558

namespace A177018

/-- `A298252(n+1)/2-n` -/
def P8747556673150877558.Spec : Prop :=
  ∀ n, P8747556673150877558.a n = (A177018 (n + 1) : ℚ)

end A177018

/-! ## A177018.P2236192186691569642

`A175540(n+1)+2*(1-n)`
-/

namespace A177018.P2236192186691569642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + 2 * (1 - (n : ℤ))

end

end A177018.P2236192186691569642

namespace A177018

/-- `A175540(n+1)+2*(1-n)` -/
def P2236192186691569642.Spec : Prop :=
  ∀ n, P2236192186691569642.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P7581446211584703061

`A022958(n)+A005097(n+1)`
-/

namespace A177018.P7581446211584703061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n + A005097 (n + 1)

end

end A177018.P7581446211584703061

namespace A177018

/-- `A022958(n)+A005097(n+1)` -/
def P7581446211584703061.Spec : Prop :=
  ∀ n, P7581446211584703061.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P17172489883632300319

`A024000(n)+A006254(n+1)`
-/

namespace A177018.P17172489883632300319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A006254 (n + 1)

end

end A177018.P17172489883632300319

namespace A177018

/-- `A024000(n)+A006254(n+1)` -/
def P17172489883632300319.Spec : Prop :=
  ∀ n, P17172489883632300319.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P14290552819734328535

`A165747(n)+A163057(n+1)`
-/

namespace A177018.P14290552819734328535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 n + A163057 (n + 1)

end

end A177018.P14290552819734328535

namespace A177018

/-- `A165747(n)+A163057(n+1)` -/
def P14290552819734328535.Spec : Prop :=
  ∀ n, P14290552819734328535.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P14780557049689079510

`A239229(n)+A175540(n+1)`
-/

namespace A177018.P14780557049689079510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239229 n + A175540 (n + 1)

end

end A177018.P14780557049689079510

namespace A177018

/-- `A239229(n)+A175540(n+1)` -/
def P14780557049689079510.Spec : Prop :=
  ∀ n, P14780557049689079510.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P2503969856488451937

`A097480(n+1)-A020715(n)`
-/

namespace A177018.P2503969856488451937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - A020715 n

end

end A177018.P2503969856488451937

namespace A177018

/-- `A097480(n+1)-A020715(n)` -/
def P2503969856488451937.Spec : Prop :=
  ∀ n, P2503969856488451937.a n = A177018 (n + 1)

end A177018

/-! ## A177018.P1753501386608715909

`A097932(n+1)-A020722(n)`
-/

namespace A177018.P1753501386608715909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - A020722 n

end

end A177018.P1753501386608715909

namespace A177018

/-- `A097932(n+1)-A020722(n)` -/
def P1753501386608715909.Spec : Prop :=
  ∀ n, P1753501386608715909.a n = A177018 (n + 1)

end A177018

/-!
# A177019: a(n) = 3*10^(2*n) + 3*10^n + 1.

The programs for A177019, the canonical program `A177019.P12856081201860894678` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177019 has offset 0).

The definition of A177019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*10^(2*n)+3*10^n+1` (program `A177019.P12856081201860894678`, by `A177019.P12856081201860894678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177019.P12856081201860894678

`3*10^(2*n)+3*10^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177019

/-- `3*10^(2*n)+3*10^n+1` -/
def P12856081201860894678.Spec : Prop :=
  ∀ n, (P12856081201860894678.a n : ℤ) = A177019 n

theorem P12856081201860894678.correct : P12856081201860894678.Spec := by
  intro n
  simp only [A177019]

end A177019

/-! ## A177019.P3291966972816264424

`or(1, 6*A037156(n))`
-/

namespace A177019.P3291966972816264424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * A037156 n)

end

end A177019.P3291966972816264424

namespace A177019

/-- `or(1, 6*A037156(n))` -/
def P3291966972816264424.Spec : Prop :=
  ∀ n, P3291966972816264424.a n = A177019 n

end A177019

/-! ## A177019.P14002698095612827328

`ceil(((Δ[A002280(n)]+3)/2)²/3)`
-/

namespace A177019.P14002698095612827328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) - f1 n + 3 : ℚ) / 2) ^ 2 / 3⌉

end

end A177019.P14002698095612827328

namespace A177019

/-- `ceil(((Δ[A002280(n)]+3)/2)²/3)` -/
def P14002698095612827328.Spec : Prop :=
  ∀ n, P14002698095612827328.a n = A177019 n

end A177019

/-! ## A177019.P12712633680418807709

`xor(6*A037156(n), A057427(n+1))`
-/

namespace A177019.P12712633680418807709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 * A037156 n) (A057427 (n + 1))

end

end A177019.P12712633680418807709

namespace A177019

/-- `xor(6*A037156(n), A057427(n+1))` -/
def P12712633680418807709.Spec : Prop :=
  ∀ n, P12712633680418807709.a n = A177019 n

end A177019

/-! ## A177019.P14785121842273445715

`xor(6*A037156(n), A034947(n+1)²)`
-/

namespace A177019.P14785121842273445715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 * A037156 n) (A034947 (n + 1) ^ 2)

end

end A177019.P14785121842273445715

namespace A177019

/-- `xor(6*A037156(n), A034947(n+1)²)` -/
def P14785121842273445715.Spec : Prop :=
  ∀ n, P14785121842273445715.a n = A177019 n

end A177019

/-! ## A177019.P13983158806458859006

`(6*A037156(n)+1)*A000034(2*n)`
-/

namespace A177019.P13983158806458859006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A037156 n + 1) * A000034 (2 * n)

end

end A177019.P13983158806458859006

namespace A177019

/-- `(6*A037156(n)+1)*A000034(2*n)` -/
def P13983158806458859006.Spec : Prop :=
  ∀ n, P13983158806458859006.a n = A177019 n

end A177019

/-! ## A177019.P12001298165993192379

`xor(6*A037156(n), A000010(gcd(n, n+1)))`
-/

namespace A177019.P12001298165993192379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 * A037156 n) (A000010 (Nat.gcd n (n + 1)))

end

end A177019.P12001298165993192379

namespace A177019

/-- `xor(6*A037156(n), A000010(gcd(n, n+1)))` -/
def P12001298165993192379.Spec : Prop :=
  ∀ n, P12001298165993192379.a n = A177019 n

end A177019

/-! ## A177019.P11942197612058367162

`xor(6*A037156(n), A000108(n²%(n+1)))`
-/

namespace A177019.P11942197612058367162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 * A037156 n) (A000108 (n ^ 2 % (n + 1)))

end

end A177019.P11942197612058367162

namespace A177019

/-- `xor(6*A037156(n), A000108(n²%(n+1)))` -/
def P11942197612058367162.Spec : Prop :=
  ∀ n, P11942197612058367162.a n = A177019 n

end A177019

/-! ## A177019.P16131943005618735619

`xor(6*A037156(n), A000120(A059268(n)))`
-/

namespace A177019.P16131943005618735619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 * A037156 n) (A000120 (A059268 n).toNat)

end

end A177019.P16131943005618735619

namespace A177019

/-- `xor(6*A037156(n), A000120(A059268(n)))` -/
def P16131943005618735619.Spec : Prop :=
  ∀ n, P16131943005618735619.a n = A177019 n

end A177019

/-! ## A177019.P14641025914447709974

`(6*A037156(n)+1)*A001221(A002148(n))`
-/

namespace A177019.P14641025914447709974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A037156 n + 1) * A001221 (A002148 n).toNat

end

end A177019.P14641025914447709974

namespace A177019

/-- `(6*A037156(n)+1)*A001221(A002148(n))` -/
def P14641025914447709974.Spec : Prop :=
  ∀ n, P14641025914447709974.a n = A177019 n

end A177019

/-!
# A177020: Define two triangular arrays by: B(0,0)=C(0,0)=1, B(0,r)=C(0,r)=0 for r>0, C(t,-1)=C(t,0); and for t,r >= 0, B(t+1,r)=C(t,r-1)+2C(t,r)-B(t,r), C(t+1,r)=B(t+1,r)+2B(t+1,r+1)-C(t,r). Sequence gives array C(t,r) read by rows.

The programs for A177020, there is no canonical definition to state claims against.
-/

/-! ## A177020.P13232099784207583674

`A197956(A093995(n+1)+A004736(n+1))`
-/

namespace A177020.P13232099784207583674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197956 (A093995 (n + 1) + A004736 (n + 1)).toNat

end

end A177020.P13232099784207583674

/-!
# A177021: Numbers which are the area of exactly three Pythagorean triangles.

The programs for A177021, there is no canonical definition to state claims against.
-/

/-! ## A177021.P9573711052842065038

`A222154(n+1)/A174571(A051642(n))`
-/

namespace A177021.P9573711052842065038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222154 (n + 1) : ℚ) / (A174571 (A051642 n).toNat : ℚ)

end

end A177021.P9573711052842065038

/-! ## A177021.P5918385820159772072

`A222154(n+1)/A033479(A158306(n+1))`
-/

namespace A177021.P5918385820159772072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222154 (n + 1) : ℚ) / (A033479 (A158306 (n + 1)).toNat : ℚ)

end

end A177021.P5918385820159772072

/-! ## A177021.P12447521233148819674

`A222154(n+1)/A174571(A146360(n+1))`
-/

namespace A177021.P12447521233148819674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222154 (n + 1) : ℚ) / (A174571 (A146360 (n + 1)).toNat : ℚ)

end

end A177021.P12447521233148819674

/-! ## A177021.P219616674065218446

`A222154(n+1)/A107279(A024365(n+1))²`
-/

namespace A177021.P219616674065218446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222154 (n + 1) : ℚ) / (A107279 (A024365 (n + 1)).toNat ^ 2 : ℚ)

end

end A177021.P219616674065218446

/-! ## A177021.P273005324635925464

`A222154(n+1)/A010694(A283989(n))`
-/

namespace A177021.P273005324635925464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222154 (n + 1) : ℚ) / (A010694 (A283989 n).toNat : ℚ)

end

end A177021.P273005324635925464

/-!
# A177022: Decimal expansion of 49/36.

The programs for A177022, the canonical program `A177022.P4834879487549861926` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177022 has offset 1).

The definition of A177022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177022.P4834879487549861926

`a(n-1)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177022

/-- `a(n-1)` -/
def P4834879487549861926.Spec : Prop :=
  ∀ n, (P4834879487549861926.a n : ℤ) = A177022 (n + 1)

theorem P4834879487549861926.correct : P4834879487549861926.Spec := by
  intro n
  simp only [A177022, Nat.add_sub_cancel]

end A177022

/-!
# A177023: a(n) = 2^(2*n) mod (2*n+1).

The programs for A177023, the canonical program `A177023.P14815235721899607360` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177023 has offset 1).

The definition of A177023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2*(n+1)))%(2*(n+1)+1)` (program `A177023.P14815235721899607360`, by `A177023.P14815235721899607360.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177023.P14815235721899607360

`(2^(2*(n+1)))%(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177023

/-- `(2^(2*(n+1)))%(2*(n+1)+1)` -/
def P14815235721899607360.Spec : Prop :=
  ∀ n, (P14815235721899607360.a n : ℤ) = A177023 (n + 1)

theorem P14815235721899607360.correct : P14815235721899607360.Spec := by
  intro n
  simp only [A177023, Nat.add_sub_cancel]

end A177023

/-! ## A177023.P7730058031630086016

`A062173(2*n+3)`
-/

namespace A177023.P7730058031630086016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (2 * n + 3)

end

end A177023.P7730058031630086016

namespace A177023

/-- `A062173(2*n+3)` -/
def P7730058031630086016.Spec : Prop :=
  ∀ n, P7730058031630086016.a n = A177023 (n + 1)

end A177023

/-! ## A177023.P17044665390083846524

`A110146(Δ[n²])`
-/

namespace A177023.P17044665390083846524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110146 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A177023.P17044665390083846524

namespace A177023

/-- `A110146(Δ[n²])` -/
def P17044665390083846524.Spec : Prop :=
  ∀ n, P17044665390083846524.a n = A177023 (n + 1)

end A177023

/-! ## A177023.P1679927691561785354

`A385073(2*n+3)`
-/

namespace A177023.P1679927691561785354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385073 (2 * n + 3)

end

end A177023.P1679927691561785354

namespace A177023

/-- `A385073(2*n+3)` -/
def P1679927691561785354.Spec : Prop :=
  ∀ n, P1679927691561785354.a n = A177023 (n + 1)

end A177023

/-! ## A177023.P400718789856879739

`A128311(2*n+3)+1`
-/

namespace A177023.P400718789856879739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (2 * n + 3) + 1

end

end A177023.P400718789856879739

namespace A177023

/-- `A128311(2*n+3)+1` -/
def P400718789856879739.Spec : Prop :=
  ∀ n, P400718789856879739.a n = A177023 (n + 1)

end A177023

/-! ## A177023.P738438283679424067

`A028310(A011782(n+2)²%(2*n+3))`
-/

namespace A177023.P738438283679424067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A011782 (n + 2) ^ 2) (2 * n + 3 : ℤ)).toNat

end

end A177023.P738438283679424067

namespace A177023

/-- `A028310(A011782(n+2)²%(2*n+3))` -/
def P738438283679424067.Spec : Prop :=
  ∀ n, P738438283679424067.a n = A177023 (n + 1)

end A177023

/-! ## A177023.P434675714645064133

`A028310(A011782(2*n+3)%A109613(2*n+3))`
-/

namespace A177023.P434675714645064133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A011782 (2 * n + 3)) (A109613 (2 * n + 3))).toNat

end

end A177023.P434675714645064133

namespace A177023

/-- `A028310(A011782(2*n+3)%A109613(2*n+3))` -/
def P434675714645064133.Spec : Prop :=
  ∀ n, P434675714645064133.a n = A177023 (n + 1)

end A177023

/-! ## A177023.P2667055477000864509

`A004525((8*A000079(n)²)%(4*n+6))`
-/

namespace A177023.P2667055477000864509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (8 * A000079 n ^ 2) (4 * n + 6 : ℤ)).toNat

end

end A177023.P2667055477000864509

namespace A177023

/-- `A004525((8*A000079(n)²)%(4*n+6))` -/
def P2667055477000864509.Spec : Prop :=
  ∀ n, P2667055477000864509.a n = A177023 (n + 1)

end A177023

/-! ## A177023.P1560429602945569894

`A004525(A000079(2*n+3)%A004277(2*n+3))`
-/

namespace A177023.P1560429602945569894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A000079 (2 * n + 3)) (A004277 (2 * n + 3))).toNat

end

end A177023.P1560429602945569894

namespace A177023

/-- `A004525(A000079(2*n+3)%A004277(2*n+3))` -/
def P1560429602945569894.Spec : Prop :=
  ∀ n, P1560429602945569894.a n = A177023 (n + 1)

end A177023

/-! ## A177023.P8498556387450627765

`A200146((n+1)*(2*n+3))`
-/

namespace A177023.P8498556387450627765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200146 ((n + 1) * (2 * n + 3))

end

end A177023.P8498556387450627765

namespace A177023

/-- `A200146((n+1)*(2*n+3))` -/
def P8498556387450627765.Spec : Prop :=
  ∀ n, P8498556387450627765.a n = A177023 (n + 1)

end A177023

/-!
# A177024: Numbers k such that 2^(k-1) mod k = number of divisors of k.

The programs for A177024, the canonical program `A177024.P16288091499050602830` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177024 has offset 1).

The definition of A177024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177024.P16288091499050602830

`eq[A000005(n+1), A062173(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A177024

/-- `eq[A000005(n+1), A062173(n+1)]+1` -/
def P16288091499050602830.Spec : Prop :=
  ∀ n, (P16288091499050602830.a n : ℤ) = A177024 (n + 1)

theorem P16288091499050602830.correct : P16288091499050602830.Spec := by
  intro n
  simp only [A177024, Nat.add_sub_cancel]

end A177024

/-! ## A177024.P12587711845045616719

`eq[A015910(n+1), A062011(n+1)]+1`
-/

namespace A177024.P12587711845045616719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177024.P12587711845045616719

namespace A177024

/-- `eq[A015910(n+1), A062011(n+1)]+1` -/
def P12587711845045616719.Spec : Prop :=
  ∀ n, (P12587711845045616719.a n : ℤ) = A177024 (n + 1)

end A177024

/-! ## A177024.P14020491215538533146

`eq[A062011(n+1)/2, A062173(n+1)]+1`
-/

namespace A177024.P14020491215538533146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A177024.P14020491215538533146

namespace A177024

/-- `eq[A062011(n+1)/2, A062173(n+1)]+1` -/
def P14020491215538533146.Spec : Prop :=
  ∀ n, (P14020491215538533146.a n : ℤ) = A177024 (n + 1)

end A177024

/-! ## A177024.P5654176326392061175

`A020725(eq[A015910(n+1), A062011(n+1)])`
-/

namespace A177024.P5654176326392061175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177024.P5654176326392061175

namespace A177024

/-- `A020725(eq[A015910(n+1), A062011(n+1)])` -/
def P5654176326392061175.Spec : Prop :=
  ∀ n, P5654176326392061175.a n = A177024 (n + 1)

end A177024

/-! ## A177024.P17910983836612263641

`A065475(eq[A015910(n+1), A062011(n+1)])`
-/

namespace A177024.P17910983836612263641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177024.P17910983836612263641

namespace A177024

/-- `A065475(eq[A015910(n+1), A062011(n+1)])` -/
def P17910983836612263641.Spec : Prop :=
  ∀ n, P17910983836612263641.a n = A177024 (n + 1)

end A177024

/-! ## A177024.P7673688725423164086

`A153152(eq[A015910(n+1), A062011(n+1)])`
-/

namespace A177024.P7673688725423164086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177024.P7673688725423164086

namespace A177024

/-- `A153152(eq[A015910(n+1), A062011(n+1)])` -/
def P7673688725423164086.Spec : Prop :=
  ∀ n, P7673688725423164086.a n = A177024 (n + 1)

end A177024

/-!
# A177025: Number of ways to represent n as a polygonal number.

The programs for A177025, there is no canonical definition to state claims against.
-/

/-! ## A177025.P17737483211127025437

`A129654(n+3)-1`
-/

namespace A177025.P17737483211127025437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 3) - 1

end

end A177025.P17737483211127025437

/-! ## A177025.P1673893146255204066

`∑[Δ[A129654(n+2)]%7]`
-/

namespace A177025.P1673893146255204066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177025.P1673893146255204066

/-! ## A177025.P18051066283622581972

`A153881(n+2)+A129654(n+3)`
-/

namespace A177025.P18051066283622581972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A129654 (n + 3)

end

end A177025.P18051066283622581972

/-! ## A177025.P14351897429928754560

`xor(-A129654(n+3), A057428(n+1))`
-/

namespace A177025.P14351897429928754560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A129654 (n + 3)) (A057428 (n + 1))

end

end A177025.P14351897429928754560

/-! ## A177025.P3497808189190936491

`abs(A129654(n+3)+A033999(2*n+1))`
-/

namespace A177025.P3497808189190936491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129654 (n + 3) + A033999 (2 * n + 1)|

end

end A177025.P3497808189190936491

/-! ## A177025.P11895008685839100987

`A033999(2*n+1)+A033999(2*n)*A129654(n+3)`
-/

namespace A177025.P11895008685839100987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A129654 (n + 3)

end

end A177025.P11895008685839100987

/-! ## A177025.P6973800317560174341

`A333822(n+3)-A333836(n+3)`
-/

namespace A177025.P6973800317560174341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333822 (n + 3) - A333836 (n + 3)

end

end A177025.P6973800317560174341

/-! ## A177025.P17748076190877061558

`A239550(Δ[A005286(n+1)])-1`
-/

namespace A177025.P17748076190877061558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (f1 (n + 1) - f1 n).toNat - 1

end

end A177025.P17748076190877061558

/-! ## A177025.P371911887912619700

`A239550(Δ[A005586(n+1)])-1`
-/

namespace A177025.P371911887912619700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (f1 (n + 1) - f1 n).toNat - 1

end

end A177025.P371911887912619700

/-!
# A177026: 

The programs for A177026, there is no canonical definition to state claims against.
-/

/-! ## A177026.P13868314305136043863

`A155629(A098856(n+1))`
-/

namespace A177026.P13868314305136043863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155629 (A098856 (n + 1)).toNat

end

end A177026.P13868314305136043863

/-!
# A177029: Numbers that have exactly two different representations as polygonal numbers.

The programs for A177029, there is no canonical definition to state claims against.
-/

/-! ## A177029.P3302023519084017099

`eq[2, A177025(n+4)]+4`
-/

namespace A177029.P3302023519084017099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A177029.P3302023519084017099

/-! ## A177029.P16625263071180131112

`eq[3, A129654(n+2)]+2`
-/

namespace A177029.P16625263071180131112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A177029.P16625263071180131112

/-! ## A177029.P2953019334399379309

`A171463(eq[3, A129654(n+2)])`
-/

namespace A177029.P2953019334399379309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177029.P2953019334399379309

/-! ## A177029.P3376205423390212323

`eq[A176774(n+3), A342805(n+3)]+3`
-/

namespace A177029.P3376205423390212323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176774 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342805 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A177029.P3376205423390212323

/-! ## A177029.P2839959895817232353

`eq[3, A129654(A233583(n+1))]`
-/

namespace A177029.P2839959895817232353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177029.P2839959895817232353

/-! ## A177029.P6838915842157314740

`eq[3, A239550(A000096(n))]`
-/

namespace A177029.P6838915842157314740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A000096 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177029.P6838915842157314740

/-! ## A177029.P12043399835402067642

`eq[3, A239550(A034856(n+1)-(n+1))]`
-/

namespace A177029.P12043399835402067642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A034856 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177029.P12043399835402067642

/-!
# A177030: Numbers k such that 11^k + 3^k - 1 is prime.

The programs for A177030, there is no canonical definition to state claims against.
-/

/-! ## A177030.P14673802858001598461

`A140691(A083595(n))`
-/

namespace A177030.P14673802858001598461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140691 (A083595 n).toNat

end

end A177030.P14673802858001598461

/-!
# A177032: Primes p of a quadruplet (p,p+2,p+6,p+8) such that (p+(p+2)+(p+6)+(p+8))/60 is a prime.

The programs for A177032, there is no canonical definition to state claims against.
-/

/-! ## A177032.P3240277455845513191

`p?[A136720(n+1)-A001222(A173092(n+1))]`
-/

namespace A177032.P3240277455845513191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (n + 1) - A001222 (A173092 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177032.P3240277455845513191

/-!
# A177040: Irregular triangle t(n,m) = binomial(m+1,n-m) read by rows floor((n+1)/2) <= m <= n.

The programs for A177040, there is no canonical definition to state claims against.
-/

/-! ## A177040.P13296761874212301326

`A098925(comp[∑[2*n]])`
-/

namespace A177040.P13296761874212301326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A177040.P13296761874212301326

/-! ## A177040.P5806988039485002271

`A102426(∑[char[n²]+1])`
-/

namespace A177040.P5806988039485002271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177040.P5806988039485002271

/-! ## A177040.P10015722860451896625

`abs(A092865(comp[∑[2*n]]))`
-/

namespace A177040.P10015722860451896625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092865 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A177040.P10015722860451896625

/-! ## A177040.P4151330211164714393

`A134513(comp[∑[2*n]]+n)`
-/

namespace A177040.P4151330211164714393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134513 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A177040.P4151330211164714393

/-! ## A177040.P798551482053749896

`A168561(∑[char[n²]+2]-1)`
-/

namespace A177040.P798551482053749896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A177040.P798551482053749896

/-! ## A177040.P18211648240204904702

`A046854(Δ[n²]+∑[char[n²]])`
-/

namespace A177040.P18211648240204904702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A177040.P18211648240204904702

/-! ## A177040.P3979888217563787284

`A206474(comp[floor((n/2)²)]+comp[n²])`
-/

namespace A177040.P3979888217563787284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206474 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A177040.P3979888217563787284

/-! ## A177040.P9786901319641135251

`A026729(eq[0, floor(sqrt(8*n+1))%2])`
-/

namespace A177040.P9786901319641135251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177040.P9786901319641135251

/-! ## A177040.P16436691991124746077

`A026729(lt[round(sqrt(2*(n+1)))²-(2*n+1), 0])`
-/

namespace A177040.P16436691991124746077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A177040.P16436691991124746077

/-! ## A177040.P7601398220652921213

`A074909(A090894(n))`
-/

namespace A177040.P7601398220652921213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A090894 n).toNat

end

end A177040.P7601398220652921213

/-!
# A177041: Sum(round(k^2/n),k=1..n).

The programs for A177041, there is no canonical definition to state claims against.
-/

/-! ## A177041.P69553524059442791

`A008611(A207188(∑[n+1]))`
-/

namespace A177041.P69553524059442791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A207188 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A177041.P69553524059442791

/-! ## A177041.P5381994348804564144

`A261133(A092220(n)+A027379(n))`
-/

namespace A177041.P5381994348804564144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261133 (A092220 n + A027379 n).toNat

end

end A177041.P5381994348804564144

/-! ## A177041.P18234378093780798983

`A078617(n+1)+A000035(A054841(n+1))`
-/

namespace A177041.P18234378093780798983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078617 (n + 1) + A000035 (A054841 (n + 1)).toNat

end

end A177041.P18234378093780798983

/-! ## A177041.P592887137253776578

`A078617(n+1)+A000035(A059884(n+1))`
-/

namespace A177041.P592887137253776578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078617 (n + 1) + A000035 (A059884 (n + 1)).toNat

end

end A177041.P592887137253776578

/-! ## A177041.P8965311335494288075

`A323239(A000129(n+4))+A078617(n+1)`
-/

namespace A177041.P8965311335494288075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A000129 (n + 4)).toNat + A078617 (n + 1)

end

end A177041.P8965311335494288075

/-!
# A177042: Eulerian version of the Catalan numbers, a(n) = A008292(2*n+1,n+1)/(n+1).

The programs for A177042, there is no canonical definition to state claims against.
-/

/-! ## A177042.P3052052043652184748

`A025585(n+1)/(n+1)`
-/

namespace A177042.P3052052043652184748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025585 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A177042.P3052052043652184748

/-! ## A177042.P1549512907851051490

`A303287(Δ[n²])`
-/

namespace A177042.P1549512907851051490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303287 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A177042.P1549512907851051490

/-! ## A177042.P15997288252959493452

`A008518(∑[4*n])`
-/

namespace A177042.P15997288252959493452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008518 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177042.P15997288252959493452

/-! ## A177042.P18018241388087259594

`(A057427(n)+1)*A180056(n)`
-/

namespace A177042.P18018241388087259594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A180056 n

end

end A177042.P18018241388087259594

/-! ## A177042.P13719476940019982409

`A185246(n)+A008518(A046092(n))`
-/

namespace A177042.P13719476940019982409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A008518 (A046092 n).toNat

end

end A177042.P13719476940019982409

/-!
# A177043: Central MacMahon numbers: a(n)=A060187(2*n+1, n+1).

The programs for A177043, there is no canonical definition to state claims against.
-/

/-! ## A177043.P7946205473395783829

`A154420(2*n)`
-/

namespace A177043.P7946205473395783829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154420 (2 * n)

end

end A177043.P7946205473395783829

/-! ## A177043.P6948446859469302036

`A261398(Δ[n²])`
-/

namespace A177043.P6948446859469302036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261398 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A177043.P6948446859469302036

/-! ## A177043.P15379666722632979521

`A060187(∑[4*n]+1)`
-/

namespace A177043.P15379666722632979521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A177043.P15379666722632979521

/-! ## A177043.P8840925838905687996

`record[A154420(n)/(-1)^n]`
-/

namespace A177043.P8840925838905687996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154420 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177043.P8840925838905687996

/-! ## A177043.P16518944140382061371

`record[A154420(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A177043.P16518944140382061371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A154420 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177043.P16518944140382061371

/-!
# A177044: a(n) = 103*(n-1)-a(n-1) with n>1, a(1)=38.

The programs for A177044, the canonical program `A177044.P10406714975396764761` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177044 has offset 1).

The definition of A177044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `103*n-a(n-1)` (program `A177044.P10406714975396764761`, by `A177044.P10406714975396764761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177044.P10406714975396764761

`103*n-a(n-1)` with `a(0)=38`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177044

/-- `103*n-a(n-1)` -/
def P10406714975396764761.Spec : Prop :=
  ∀ n, P10406714975396764761.a n = A177044 (n + 1)

theorem P10406714975396764761.correct : P10406714975396764761.Spec := by
  intro n
  simp only [A177044, Nat.add_sub_cancel]

end A177044

/-! ## A177044.P14316889985047354137

`(103+49*(-1)^n+206*n)/4`
-/

namespace A177044.P14316889985047354137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (103 + 49 * (-1) ^ n + (206 * n : ℤ) : ℚ) / 4

end

end A177044.P14316889985047354137

namespace A177044

/-- `(103+49*(-1)^n+206*n)/4` -/
def P14316889985047354137.Spec : Prop :=
  ∀ n, P14316889985047354137.a n = (A177044 (n + 1) : ℚ)

theorem P14316889985047354137.correct : P14316889985047354137.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A177044, Nat.add_sub_cancel, A177044.P14316889985047354137.a, A177044.P10406714975396764761.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A177044, Nat.add_sub_cancel, A177044.P14316889985047354137.a, A177044.P10406714975396764761.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177044

/-! ## A177044.P15948851614504445008

`∑[A040649(n)+A040156(n)]`
-/

namespace A177044.P15948851614504445008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040649 n + A040156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177044.P15948851614504445008

namespace A177044

/-- `∑[A040649(n)+A040156(n)]` -/
def P15948851614504445008.Spec : Prop :=
  ∀ n, P15948851614504445008.a n = A177044 (n + 1)

end A177044

/-! ## A177044.P16459691871883751629

`∑[A040155(n)+2*A040157(n)]`
-/

namespace A177044.P16459691871883751629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040155 n + 2 * A040157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177044.P16459691871883751629

namespace A177044

/-- `∑[A040155(n)+2*A040157(n)]` -/
def P16459691871883751629.Spec : Prop :=
  ∀ n, P16459691871883751629.a n = A177044 (n + 1)

end A177044

/-! ## A177044.P15758253212503018993

`A241520(n+1)+A113804(n+1)`
-/

namespace A177044.P15758253212503018993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241520 (n + 1) + A113804 (n + 1)

end

end A177044.P15758253212503018993

namespace A177044

/-- `A241520(n+1)+A113804(n+1)` -/
def P15758253212503018993.Spec : Prop :=
  ∀ n, P15758253212503018993.a n = A177044 (n + 1)

end A177044

/-! ## A177044.P11393591169304840454

`A158803(n+1)+A204769(n+1)-A159008(n+1)`
-/

namespace A177044.P11393591169304840454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (n + 1) + (A204769 (n + 1) - A159008 (n + 1))

end

end A177044.P11393591169304840454

namespace A177044

/-- `A158803(n+1)+A204769(n+1)-A159008(n+1)` -/
def P11393591169304840454.Spec : Prop :=
  ∀ n, P11393591169304840454.a n = A177044 (n + 1)

end A177044

/-! ## A177044.P9646376788956102844

`A164131(n+1)+A008458(A092242(n+1))`
-/

namespace A177044.P9646376788956102844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) + A008458 (A092242 (n + 1)).toNat

end

end A177044.P9646376788956102844

namespace A177044

/-- `A164131(n+1)+A008458(A092242(n+1))` -/
def P9646376788956102844.Spec : Prop :=
  ∀ n, P9646376788956102844.a n = A177044 (n + 1)

end A177044

/-! ## A177044.P3187715128298977244

`A008619(A017005(n))+A008594(A047621(n+1))`
-/

namespace A177044.P3187715128298977244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A017005 n).toNat + A008594 (A047621 (n + 1)).toNat

end

end A177044.P3187715128298977244

namespace A177044

/-- `A008619(A017005(n))+A008594(A047621(n+1))` -/
def P3187715128298977244.Spec : Prop :=
  ∀ n, P3187715128298977244.a n = A177044 (n + 1)

end A177044

/-!
# A177046: a(n) = 127*(n-1)-a(n-1) with n>1, a(1)=16.

The programs for A177046, the canonical program `A177046.P10358745529625315707` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177046 has offset 1).

The definition of A177046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `127*n-a(n-1)` (program `A177046.P10358745529625315707`, by `A177046.P10358745529625315707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177046.P10358745529625315707

`127*n-a(n-1)` with `a(0)=16`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177046

/-- `127*n-a(n-1)` -/
def P10358745529625315707.Spec : Prop :=
  ∀ n, P10358745529625315707.a n = A177046 (n + 1)

theorem P10358745529625315707.correct : P10358745529625315707.Spec := by
  intro n
  simp only [A177046, Nat.add_sub_cancel]

end A177046

/-! ## A177046.P817866411312353967

`(127-63*(-1)^n+254*n)/4`
-/

namespace A177046.P817866411312353967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (127 - 63 * (-1) ^ n + (254 * n : ℤ) : ℚ) / 4

end

end A177046.P817866411312353967

namespace A177046

/-- `(127-63*(-1)^n+254*n)/4` -/
def P817866411312353967.Spec : Prop :=
  ∀ n, P817866411312353967.a n = (A177046 (n + 1) : ℚ)

theorem P817866411312353967.correct : P817866411312353967.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A177046, Nat.add_sub_cancel, A177046.P817866411312353967.a, A177046.P10358745529625315707.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A177046, Nat.add_sub_cancel, A177046.P817866411312353967.a, A177046.P10358745529625315707.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177046

/-! ## A177046.P16048870920426425010

`∑[A259715(A014963(a(n-1)))]` with `a(0)=16`
-/

namespace A177046.P16048870920426425010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  A259715 (A014963 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177046.P16048870920426425010

namespace A177046

/-- `∑[A259715(A014963(a(n-1)))]` -/
def P16048870920426425010.Spec : Prop :=
  ∀ n, P16048870920426425010.a n = A177046 (n + 1)

end A177046

/-! ## A177046.P15744817108171949800

`A008603(A047336(n+1))-A017329(n)`
-/

namespace A177046.P15744817108171949800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 (A047336 (n + 1)).toNat - A017329 n

end

end A177046.P15744817108171949800

namespace A177046

/-- `A008603(A047336(n+1))-A017329(n)` -/
def P15744817108171949800.Spec : Prop :=
  ∀ n, P15744817108171949800.a n = A177046 (n + 1)

end A177046

/-! ## A177046.P6514373268838872011

`A008598(A047522(n+1))-A110654(n)`
-/

namespace A177046.P6514373268838872011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A047522 (n + 1)).toNat - A110654 n

end

end A177046.P6514373268838872011

namespace A177046

/-- `A008598(A047522(n+1))-A110654(n)` -/
def P6514373268838872011.Spec : Prop :=
  ∀ n, P6514373268838872011.a n = A177046 (n + 1)

end A177046

/-! ## A177046.P10795368353315546317

`A089644(A090771(n+1))+A017497(n)`
-/

namespace A177046.P10795368353315546317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (A090771 (n + 1)).toNat + A017497 n

end

end A177046.P10795368353315546317

namespace A177046

/-- `A089644(A090771(n+1))+A017497(n)` -/
def P10795368353315546317.Spec : Prop :=
  ∀ n, P10795368353315546317.a n = A177046 (n + 1)

end A177046

/-! ## A177046.P8866995102967239652

`A017209(A106389(n+1))+A016885(n)`
-/

namespace A177046.P8866995102967239652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (A106389 (n + 1)).toNat + A016885 n

end

end A177046.P8866995102967239652

namespace A177046

/-- `A017209(A106389(n+1))+A016885(n)` -/
def P8866995102967239652.Spec : Prop :=
  ∀ n, P8866995102967239652.a n = A177046 (n + 1)

end A177046

/-!
# A177049: Numerator of (3n+1)*(3n+2)/4.

The programs for A177049, the canonical program `A177049.P13793878134069651499` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177049 has offset 0).

The definition of A177049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177049.P7568416550605711710

`lcm(2, C(3*n+2, 2))/2`
-/

namespace A177049.P7568416550605711710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.choose (3 * n + 2) 2) : ℚ) / 2

end

end A177049.P7568416550605711710

namespace A177049

/-- `lcm(2, C(3*n+2, 2))/2` -/
def P7568416550605711710.Spec : Prop :=
  ∀ n, P7568416550605711710.a n = (A177049 n : ℚ)

end A177049

/-! ## A177049.P3277255217557425107

`lcm(2, A000217(3*n+1))/2`
-/

namespace A177049.P3277255217557425107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000217 (3 * n + 1)) : ℚ) / 2

end

end A177049.P3277255217557425107

namespace A177049

/-- `lcm(2, A000217(3*n+1))/2` -/
def P3277255217557425107.Spec : Prop :=
  ∀ n, P3277255217557425107.a n = (A177049 n : ℚ)

end A177049

/-! ## A177049.P13793878134069651499

`A176672(n)*A302773(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A177049

/-- `A176672(n)*A302773(n)` -/
def P13793878134069651499.Spec : Prop :=
  ∀ n, P13793878134069651499.a n = A177049 n

theorem P13793878134069651499.correct : P13793878134069651499.Spec := by
  intro n
  simp only [A177049]

end A177049

/-! ## A177049.P15981942212630776947

`A060544(n+1)/A014695(n)`
-/

namespace A177049.P15981942212630776947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060544 (n + 1) : ℚ) / (A014695 n : ℚ)

end

end A177049.P15981942212630776947

namespace A177049

/-- `A060544(n+1)/A014695(n)` -/
def P15981942212630776947.Spec : Prop :=
  ∀ n, P15981942212630776947.a n = (A177049 n : ℚ)

end A177049

/-! ## A177049.P8642300031464987642

`(A033954(n)+A000217(n+1))/A130658(n+1)`
-/

namespace A177049.P8642300031464987642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033954 n + A000217 (n + 1) : ℚ) / (A130658 (n + 1) : ℚ)

end

end A177049.P8642300031464987642

namespace A177049

/-- `(A033954(n)+A000217(n+1))/A130658(n+1)` -/
def P8642300031464987642.Spec : Prop :=
  ∀ n, P8642300031464987642.a n = (A177049 n : ℚ)

end A177049

/-! ## A177049.P16509710213880624155

`gcd(A050534(3*n+1), A060544(n+1))`
-/

namespace A177049.P16509710213880624155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050534 (3 * n + 1)) (A060544 (n + 1))

end

end A177049.P16509710213880624155

namespace A177049

/-- `gcd(A050534(3*n+1), A060544(n+1))` -/
def P16509710213880624155.Spec : Prop :=
  ∀ n, (P16509710213880624155.a n : ℤ) = A177049 n

end A177049

/-! ## A177049.P2802232890997507408

`A026741(A165355(n))*A302773(n)`
-/

namespace A177049.P2802232890997507408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165355 n).toNat * A302773 n

end

end A177049.P2802232890997507408

namespace A177049

/-- `A026741(A165355(n))*A302773(n)` -/
def P2802232890997507408.Spec : Prop :=
  ∀ n, P2802232890997507408.a n = A177049 n

end A177049

/-! ## A177049.P14281976409600958135

`A060819(A165367(2*n))*A302773(n)`
-/

namespace A177049.P14281976409600958135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A165367 (2 * n)).toNat * A302773 n

end

end A177049.P14281976409600958135

namespace A177049

/-- `A060819(A165367(2*n))*A302773(n)` -/
def P14281976409600958135.Spec : Prop :=
  ∀ n, P14281976409600958135.a n = A177049 n

end A177049

/-! ## A177049.P14779945274545999098

`A026741(A302773(2*n))*A302773(n)`
-/

namespace A177049.P14779945274545999098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A302773 (2 * n)).toNat * A302773 n

end

end A177049.P14779945274545999098

namespace A177049

/-- `A026741(A302773(2*n))*A302773(n)` -/
def P14779945274545999098.Spec : Prop :=
  ∀ n, P14779945274545999098.a n = A177049 n

end A177049

/-! ## A177049.P4845727145697859775

`gcd(A000217(A016777(n)), A050534(3*n+1))`
-/

namespace A177049.P4845727145697859775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A016777 n).toNat) (A050534 (3 * n + 1))

end

end A177049.P4845727145697859775

namespace A177049

/-- `gcd(A000217(A016777(n)), A050534(3*n+1))` -/
def P4845727145697859775.Spec : Prop :=
  ∀ n, (P4845727145697859775.a n : ℤ) = A177049 n

end A177049

/-! ## A177049.P571220595177955565

`A064038(3*n+2)`
-/

namespace A177049.P571220595177955565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (3 * n + 2)

end

end A177049.P571220595177955565

namespace A177049

/-- `A064038(3*n+2)` -/
def P571220595177955565.Spec : Prop :=
  ∀ n, P571220595177955565.a n = A177049 n

end A177049

/-! ## A177049.P14568630805539974587

`A060819(A016789(n))*A176672(n)`
-/

namespace A177049.P14568630805539974587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A016789 n).toNat * A176672 n

end

end A177049.P14568630805539974587

namespace A177049

/-- `A060819(A016789(n))*A176672(n)` -/
def P14568630805539974587.Spec : Prop :=
  ∀ n, P14568630805539974587.a n = A177049 n

end A177049

/-! ## A177049.P16713078666291145312

`A026741(A165367(n))*A176672(n)`
-/

namespace A177049.P16713078666291145312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165367 n).toNat * A176672 n

end

end A177049.P16713078666291145312

namespace A177049

/-- `A026741(A165367(n))*A176672(n)` -/
def P16713078666291145312.Spec : Prop :=
  ∀ n, P16713078666291145312.a n = A177049 n

end A177049

/-! ## A177049.P12999993630265043650

`A026741(A176672(2*n+1))*A176672(n)`
-/

namespace A177049.P12999993630265043650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A176672 (2 * n + 1)).toNat * A176672 n

end

end A177049.P12999993630265043650

namespace A177049

/-- `A026741(A176672(2*n+1))*A176672(n)` -/
def P12999993630265043650.Spec : Prop :=
  ∀ n, P12999993630265043650.a n = A177049 n

end A177049

/-! ## A177049.P18135261123420616145

`A060819(3*n+2)*A060819(A165367(2*n))`
-/

namespace A177049.P18135261123420616145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (3 * n + 2) * A060819 (A165367 (2 * n)).toNat

end

end A177049.P18135261123420616145

namespace A177049

/-- `A060819(3*n+2)*A060819(A165367(2*n))` -/
def P18135261123420616145.Spec : Prop :=
  ∀ n, P18135261123420616145.a n = A177049 n

end A177049

/-! ## A177049.P690834827967398353

`A026741(A165355(n))*A026741(A165367(n))`
-/

namespace A177049.P690834827967398353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165355 n).toNat * A026741 (A165367 n).toNat

end

end A177049.P690834827967398353

namespace A177049

/-- `A026741(A165355(n))*A026741(A165367(n))` -/
def P690834827967398353.Spec : Prop :=
  ∀ n, P690834827967398353.a n = A177049 n

end A177049

/-! ## A177049.P2548867718642543

`A061041(6*(4*n+2))`
-/

namespace A177049.P2548867718642543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061041 (6 * (4 * n + 2))

end

end A177049.P2548867718642543

namespace A177049

/-- `A061041(6*(4*n+2))` -/
def P2548867718642543.Spec : Prop :=
  ∀ n, P2548867718642543.a n = A177049 n

end A177049

/-! ## A177049.P3770937283930198948

`A174680(6*(4*n+2))`
-/

namespace A177049.P3770937283930198948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174680 (6 * (4 * n + 2))

end

end A177049.P3770937283930198948

namespace A177049

/-- `A174680(6*(4*n+2))` -/
def P3770937283930198948.Spec : Prop :=
  ∀ n, P3770937283930198948.a n = A177049 n

end A177049

/-! ## A177049.P5991503380752992966

`A008805(A008458(n))/A000034(∑[n])`
-/

namespace A177049.P5991503380752992966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008805 (A008458 n).toNat : ℚ) / (A000034 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A177049.P5991503380752992966

namespace A177049

/-- `A008805(A008458(n))/A000034(∑[n])` -/
def P5991503380752992966.Spec : Prop :=
  ∀ n, P5991503380752992966.a n = (A177049 n : ℚ)

end A177049

/-! ## A177049.P3091636935055961667

`A000217(3*n+1)/A000034(A000217(n))`
-/

namespace A177049.P3091636935055961667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (3 * n + 1) : ℚ) / (A000034 (A000217 n).toNat : ℚ)

end

end A177049.P3091636935055961667

namespace A177049

/-- `A000217(3*n+1)/A000034(A000217(n))` -/
def P3091636935055961667.Spec : Prop :=
  ∀ n, P3091636935055961667.a n = (A177049 n : ℚ)

end A177049

/-!
# A177050: Ceiling(n/2)-perfect numbers.

The programs for A177050, there is no canonical definition to state claims against.
-/

/-! ## A177050.P2406235223499032577

`eq[A082901(n+1), A082902(n+1)]+1`
-/

namespace A177050.P2406235223499032577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082902 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177050.P2406235223499032577

/-! ## A177050.P15847880742478949456

`eq[A001221(n+1), A286449(n+1)]+1`
-/

namespace A177050.P15847880742478949456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177050.P15847880742478949456

/-! ## A177050.P8232562257223045046

`A020725(eq[A082901(n+1), A082902(n+1)])`
-/

namespace A177050.P8232562257223045046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177050.P8232562257223045046

/-! ## A177050.P7680288992213075632

`A222257(eq[A082901(n+1), A082902(n+1)])`
-/

namespace A177050.P7680288992213075632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177050.P7680288992213075632

/-! ## A177050.P15949495886824681735

`∩[A222264(n+1), A274284(n+1)]`
-/

namespace A177050.P15949495886824681735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177050.P15949495886824681735

/-!
# A177051: A subsequence of the Fibonacci sequence such that a(n) is a quadratic residue mod a(n+1).

The programs for A177051, there is no canonical definition to state claims against.
-/

/-! ## A177051.P18021543324984490184

`A000045(A287022(n)*A309348(n+1))`
-/

namespace A177051.P18021543324984490184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A287022 n * A309348 (n + 1)).toNat

end

end A177051.P18021543324984490184

/-! ## A177051.P280539579872488488

`A000045(A309348(n+1)^A287022(n))`
-/

namespace A177051.P280539579872488488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A309348 (n + 1) : ℚ) ^ (A287022 n : ℤ))).toNat

end

end A177051.P280539579872488488

/-! ## A177051.P9641348803212435870

`filter[A069041(n+2), A266848(#)]`
-/

namespace A177051.P9641348803212435870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069041 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266848 (f1 j).toNat = 1) n)

end

end A177051.P9641348803212435870

/-!
# A177052: Ceiling(n/2)-abundant numbers.

The programs for A177052, the canonical program `A177052.P2975540966760511883` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177052 has offset 1).

The definition of A177052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177052.P6992608375666379548

`lt[A235796(A028310(n)), A069283(n)]`
-/

namespace A177052.P6992608375666379548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177052.P6992608375666379548

namespace A177052

/-- `lt[A235796(A028310(n)), A069283(n)]` -/
def P6992608375666379548.Spec : Prop :=
  ∀ n, (P6992608375666379548.a n : ℤ) = A177052 (n + 1)

end A177052

/-! ## A177052.P1018947711371316910

`A020725(lt[A033879(n+1), A001227(n+1)])`
-/

namespace A177052.P1018947711371316910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177052.P1018947711371316910

namespace A177052

/-- `A020725(lt[A033879(n+1), A001227(n+1)])` -/
def P1018947711371316910.Spec : Prop :=
  ∀ n, P1018947711371316910.a n = A177052 (n + 1)

end A177052

/-! ## A177052.P8670331793325431072

`A020725(lt[A033879(n+1), A111775(n+1)])`
-/

namespace A177052.P8670331793325431072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177052.P8670331793325431072

namespace A177052

/-- `A020725(lt[A033879(n+1), A111775(n+1)])` -/
def P8670331793325431072.Spec : Prop :=
  ∀ n, P8670331793325431072.a n = A177052 (n + 1)

end A177052

/-! ## A177052.P13460316820392987633

`A020725(lt[-A033880(n+1), A001227(n+1)])`
-/

namespace A177052.P13460316820392987633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177052.P13460316820392987633

namespace A177052

/-- `A020725(lt[-A033880(n+1), A001227(n+1)])` -/
def P13460316820392987633.Spec : Prop :=
  ∀ n, P13460316820392987633.a n = A177052 (n + 1)

end A177052

/-! ## A177052.P2975540966760511883

`A020725(lt[-A033880(n+1), A111775(n+1)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A177052

/-- `A020725(lt[-A033880(n+1), A111775(n+1)])` -/
def P2975540966760511883.Spec : Prop :=
  ∀ n, P2975540966760511883.a n = A177052 (n + 1)

theorem P2975540966760511883.correct : P2975540966760511883.Spec := by
  intro n
  simp only [A177052, Nat.add_sub_cancel]

end A177052

/-! ## A177052.P9203951612193957879

`A020725(lt[2*(n+1)-A000203(n+1), A001227(n+1)])`
-/

namespace A177052.P9203951612193957879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177052.P9203951612193957879

namespace A177052

/-- `A020725(lt[2*(n+1)-A000203(n+1), A001227(n+1)])` -/
def P9203951612193957879.Spec : Prop :=
  ∀ n, P9203951612193957879.a n = A177052 (n + 1)

end A177052

/-! ## A177052.P16043743771727163336

`A020725(lt[2*(n+1)-A000203(n+1), A111775(n+1)])`
-/

namespace A177052.P16043743771727163336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177052.P16043743771727163336

namespace A177052

/-- `A020725(lt[2*(n+1)-A000203(n+1), A111775(n+1)])` -/
def P16043743771727163336.Spec : Prop :=
  ∀ n, P16043743771727163336.a n = A177052 (n + 1)

end A177052

/-!
# A177053: Numbers k such that sum of the decimal digits of k is a quadratic residue modulo k.

The programs for A177053, there is no canonical definition to state claims against.
-/

/-! ## A177053.P8941357840952452390

`eq[A054868(A069138(n+1)), A054868(n)]`
-/

namespace A177053.P8941357840952452390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A069138 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177053.P8941357840952452390

/-! ## A177053.P16079587985414947312

`∑[A001511(A202053(A049899(n+1)))]`
-/

namespace A177053.P16079587985414947312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A202053 (A049899 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177053.P16079587985414947312

/-! ## A177053.P7679807764550511713

`A103969(n+2)-A124778(A103969(n+1))`
-/

namespace A177053.P7679807764550511713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (n + 2) - A124778 (A103969 (n + 1)).toNat

end

end A177053.P7679807764550511713

/-! ## A177053.P16473972916717609446

`lt[A098825(A348366(2*n+1)), A347188(n+1)]`
-/

namespace A177053.P16473972916717609446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A348366 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177053.P16473972916717609446

/-!
# A177054: Numbers k such that each of the decimal digits is a quadratic residue modulo k.

The programs for A177054, there is no canonical definition to state claims against.
-/

/-! ## A177054.P9245801813437087452

`∑[A000005(A054252(A024792(n+1)))]`
-/

namespace A177054.P9245801813437087452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054252 (A024792 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177054.P9245801813437087452

/-! ## A177054.P8375206370107397158

`eq[A070176(A027193(n+2))², C(2, n+2)]`
-/

namespace A177054.P8375206370107397158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A027193 (n + 2)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A177054.P8375206370107397158

/-! ## A177054.P911732268415311294

`lt[A295213(A118848(n+1)), A161409(n)]`
-/

namespace A177054.P911732268415311294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A118848 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161409 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177054.P911732268415311294

/-! ## A177054.P2122021608874300887

`lt[A293226(A027336(n)), 2*A319722(n)]`
-/

namespace A177054.P2122021608874300887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293226 (A027336 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177054.P2122021608874300887

/-! ## A177054.P5625769561088528026

`eq[A070176(A027193(n+2))², A000007(n)]`
-/

namespace A177054.P5625769561088528026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A027193 (n + 2)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177054.P5625769561088528026

/-!
# A177056: Decimal expansion of (7/6)^3.

The programs for A177056, the canonical program `A177056.P1678218430778415242` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177056 has offset 1).

The definition of A177056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177056.P1678218430778415242

`a(n-3)` with `a(0)=1, a(1)=5, a(2)=8, a(3)=7, a(4)=9, a(5)=6, a(6)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177056

/-- `a(n-3)` -/
def P1678218430778415242.Spec : Prop :=
  ∀ n, (P1678218430778415242.a n : ℤ) = A177056 (n + 1)

theorem P1678218430778415242.correct : P1678218430778415242.Spec := by
  intro n
  simp only [A177056, Nat.add_sub_cancel]

end A177056

/-!
# A177057: Decimal expansion of 7/6.

The programs for A177057, the canonical program `A177057.P9318285435736720104` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177057 has offset 1).

The definition of A177057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177057.P9318285435736720104

`(3%(n+2))!`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177057

/-- `(3%(n+2))!` -/
def P9318285435736720104.Spec : Prop :=
  ∀ n, (P9318285435736720104.a n : ℤ) = A177057 (n + 1)

theorem P9318285435736720104.correct : P9318285435736720104.Spec := by
  intro n
  simp only [A177057, Nat.add_sub_cancel]

end A177057

/-!
# A177058: a(n) = n^3 - 3n^2 + 3.

The programs for A177058, the canonical program `A177058.P1386879316244507660` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177058 has offset 0).

The definition of A177058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-3*n²+3` (program `A177058.P1386879316244507660`, by `A177058.P1386879316244507660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177058.P1386879316244507660

`n^3-3*n²+3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177058

/-- `n^3-3*n²+3` -/
def P1386879316244507660.Spec : Prop :=
  ∀ n, P1386879316244507660.a n = A177058 n

theorem P1386879316244507660.correct : P1386879316244507660.Spec := by
  intro n
  simp only [A177058]

end A177058

/-! ## A177058.P9301122142769740093

`or(1, (n-1)*((1-n)²-3))`
-/

namespace A177058.P9301122142769740093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1) * ((1 - (n : ℤ)) ^ 2 - 3))

end

end A177058.P9301122142769740093

namespace A177058

/-- `or(1, (n-1)*((1-n)²-3))` -/
def P9301122142769740093.Spec : Prop :=
  ∀ n, P9301122142769740093.a n = A177058 n

end A177058

/-! ## A177058.P13150388488809165202

`xor(1, (n-1)*((1-n)²-3))`
-/

namespace A177058.P13150388488809165202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) * ((1 - (n : ℤ)) ^ 2 - 3))

end

end A177058.P13150388488809165202

namespace A177058

/-- `xor(1, (n-1)*((1-n)²-3))` -/
def P13150388488809165202.Spec : Prop :=
  ∀ n, P13150388488809165202.a n = A177058 n

end A177058

/-! ## A177058.P7366544823289218814

`∑[1-∑[a(n-1)-6]]` with `a(0)=-2, a(1)=5, a(2)=0`
-/

namespace A177058.P7366544823289218814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2, 5, 0] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177058.P7366544823289218814

namespace A177058

/-- `∑[1-∑[a(n-1)-6]]` -/
def P7366544823289218814.Spec : Prop :=
  ∀ n, P7366544823289218814.a n = A177058 n

end A177058

/-! ## A177058.P9025590105824352552

`∑[A027599(n)-A051755(n+2)]`
-/

namespace A177058.P9025590105824352552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027599 n - A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177058.P9025590105824352552

namespace A177058

/-- `∑[A027599(n)-A051755(n+2)]` -/
def P9025590105824352552.Spec : Prop :=
  ∀ n, P9025590105824352552.a n = A177058 n

end A177058

/-! ## A177058.P8593096645775263700

`Δ[A052149(n+1)-A063523(n)]`
-/

namespace A177058.P8593096645775263700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052149 (n + 1) - A063523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177058.P8593096645775263700

namespace A177058

/-- `Δ[A052149(n+1)-A063523(n)]` -/
def P8593096645775263700.Spec : Prop :=
  ∀ n, P8593096645775263700.a n = A177058 n

end A177058

/-! ## A177058.P3934437792743963289

`Δ[A066375(n+1)-(A004188(n)-n)]`
-/

namespace A177058.P3934437792743963289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066375 (n + 1) - (A004188 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177058.P3934437792743963289

namespace A177058

/-- `Δ[A066375(n+1)-(A004188(n)-n)]` -/
def P3934437792743963289.Spec : Prop :=
  ∀ n, P3934437792743963289.a n = A177058 n

end A177058

/-! ## A177058.P2352156513605015536

`∑[∑[6*n+4]-A022144(2*n)]`
-/

namespace A177058.P2352156513605015536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A022144 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177058.P2352156513605015536

namespace A177058

/-- `∑[∑[6*n+4]-A022144(2*n)]` -/
def P2352156513605015536.Spec : Prop :=
  ∀ n, P2352156513605015536.a n = A177058 n

end A177058

/-!
# A177059: a(n) = 25*n^2 + 25*n + 6.

The programs for A177059, the canonical program `A177059.P11129240338913351021` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177059 has offset 0).

The definition of A177059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*n²+25*n+6` (program `A177059.P11129240338913351021`, by `A177059.P11129240338913351021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177059.P3828550399416004894

`50*n+a(n-1)` with `a(0)=6`
-/

namespace A177059.P3828550399416004894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  50 * n + a (n - 1)

end

end A177059.P3828550399416004894

namespace A177059

/-- `50*n+a(n-1)` -/
def P3828550399416004894.Spec : Prop :=
  ∀ n, (P3828550399416004894.a n : ℤ) = A177059 n

theorem P3828550399416004894.correct : P3828550399416004894.Spec := by
  intro n
  induction n with
  | zero => simp [A177059, A177059.P3828550399416004894.a, A177059.P11129240338913351021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A177059, Nat.add_sub_cancel, A177059.P3828550399416004894.a, A177059.P11129240338913351021.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A177059

/-! ## A177059.P11129240338913351021

`25*n²+25*n+6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177059

/-- `25*n²+25*n+6` -/
def P11129240338913351021.Spec : Prop :=
  ∀ n, (P11129240338913351021.a n : ℤ) = A177059 n

theorem P11129240338913351021.correct : P11129240338913351021.Spec := by
  intro n
  simp only [A177059]

end A177059

/-! ## A177059.P15994846393405405998

`2*A061793(n)`
-/

namespace A177059.P15994846393405405998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061793 n

end

end A177059.P15994846393405405998

namespace A177059

/-- `2*A061793(n)` -/
def P15994846393405405998.Spec : Prop :=
  ∀ n, P15994846393405405998.a n = A177059 n

end A177059

/-! ## A177059.P10048640841588316648

`A016873(n)*A016885(n)`
-/

namespace A177059.P10048640841588316648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n * A016885 n

end

end A177059.P10048640841588316648

namespace A177059

/-- `A016873(n)*A016885(n)` -/
def P10048640841588316648.Spec : Prop :=
  ∀ n, P10048640841588316648.a n = A177059 n

end A177059

/-! ## A177059.P369149688997756277

`2*C(5*n+3, 2)`
-/

namespace A177059.P369149688997756277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (5 * n + 3) 2

end

end A177059.P369149688997756277

namespace A177059

/-- `2*C(5*n+3, 2)` -/
def P369149688997756277.Spec : Prop :=
  ∀ n, (P369149688997756277.a n : ℤ) = A177059 n

end A177059

/-! ## A177059.P8846587062808045080

`∑[a(n-1)+50]` with `a(0)=6, a(1)=50`
-/

namespace A177059.P8846587062808045080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 50] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177059.P8846587062808045080

namespace A177059

/-- `∑[a(n-1)+50]` -/
def P8846587062808045080.Spec : Prop :=
  ∀ n, (P8846587062808045080.a n : ℤ) = A177059 n

end A177059

/-! ## A177059.P11563834756577319660

`(record[xor(3, n)]+n)*(5*n+2)`
-/

namespace A177059.P11563834756577319660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n) * (5 * n + 2)

end

end A177059.P11563834756577319660

namespace A177059

/-- `(record[xor(3, n)]+n)*(5*n+2)` -/
def P11563834756577319660.Spec : Prop :=
  ∀ n, (P11563834756577319660.a n : ℤ) = A177059 n

end A177059

/-! ## A177059.P3529232457077753098

`2*(A262221(n)+2)`
-/

namespace A177059.P3529232457077753098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A262221 n + 2)

end

end A177059.P3529232457077753098

namespace A177059

/-- `2*(A262221(n)+2)` -/
def P3529232457077753098.Spec : Prop :=
  ∀ n, P3529232457077753098.a n = A177059 n

end A177059

/-! ## A177059.P16930773420705550092

`2*(A123296(n)+3)`
-/

namespace A177059.P16930773420705550092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A123296 n + 3)

end

end A177059.P16930773420705550092

namespace A177059

/-- `2*(A123296(n)+3)` -/
def P16930773420705550092.Spec : Prop :=
  ∀ n, P16930773420705550092.a n = A177059 n

end A177059

/-! ## A177059.P12165595699568956367

`2*(A164015(n)-2)`
-/

namespace A177059.P12165595699568956367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A164015 n - 2)

end

end A177059.P12165595699568956367

namespace A177059

/-- `2*(A164015(n)-2)` -/
def P12165595699568956367.Spec : Prop :=
  ∀ n, P12165595699568956367.a n = A177059 n

end A177059

/-! ## A177059.P988347869812146405

`(A017330(n)-1)/4`
-/

namespace A177059.P988347869812146405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017330 n - 1 : ℚ) / 4

end

end A177059.P988347869812146405

namespace A177059

/-- `(A017330(n)-1)/4` -/
def P988347869812146405.Spec : Prop :=
  ∀ n, P988347869812146405.a n = (A177059 n : ℚ)

end A177059

/-! ## A177059.P1101085019621073399

`(A152161(n)+3)/4`
-/

namespace A177059.P1101085019621073399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152161 n + 3 : ℚ) / 4

end

end A177059.P1101085019621073399

namespace A177059

/-- `(A152161(n)+3)/4` -/
def P1101085019621073399.Spec : Prop :=
  ∀ n, P1101085019621073399.a n = (A177059 n : ℚ)

end A177059

/-! ## A177059.P5181545331098764417

`round((A017329(n)/2)²)`
-/

namespace A177059.P5181545331098764417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017329 n : ℚ) / 2) ^ 2)

end

end A177059.P5181545331098764417

namespace A177059

/-- `round((A017329(n)/2)²)` -/
def P5181545331098764417.Spec : Prop :=
  ∀ n, P5181545331098764417.a n = A177059 n

end A177059

/-! ## A177059.P14696600382945442436

`A001512(n)/A001545(n)`
-/

namespace A177059.P14696600382945442436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001512 n : ℚ) / (A001545 n : ℚ)

end

end A177059.P14696600382945442436

namespace A177059

/-- `A001512(n)/A001545(n)` -/
def P14696600382945442436.Spec : Prop :=
  ∀ n, P14696600382945442436.a n = (A177059 n : ℚ)

end A177059

/-! ## A177059.P7823122627487009222

`A001509(n)/A016861(n)`
-/

namespace A177059.P7823122627487009222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001509 n : ℚ) / (A016861 n : ℚ)

end

end A177059.P7823122627487009222

namespace A177059

/-- `A001509(n)/A016861(n)` -/
def P7823122627487009222.Spec : Prop :=
  ∀ n, P7823122627487009222.a n = (A177059 n : ℚ)

end A177059

/-! ## A177059.P4048796614615751756

`(A016861(n)+1)*A016885(n)`
-/

namespace A177059.P4048796614615751756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n + 1) * A016885 n

end

end A177059.P4048796614615751756

namespace A177059

/-- `(A016861(n)+1)*A016885(n)` -/
def P4048796614615751756.Spec : Prop :=
  ∀ n, P4048796614615751756.a n = A177059 n

end A177059

/-! ## A177059.P1836662070447752043

`A001509(n)/(A008587(n)+1)`
-/

namespace A177059.P1836662070447752043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001509 n : ℚ) / (A008587 n + 1 : ℚ)

end

end A177059.P1836662070447752043

namespace A177059

/-- `A001509(n)/(A008587(n)+1)` -/
def P1836662070447752043.Spec : Prop :=
  ∀ n, P1836662070447752043.a n = (A177059 n : ℚ)

end A177059

/-! ## A177059.P6191388653264108841

`(A016861(n)+2)*A016873(n)`
-/

namespace A177059.P6191388653264108841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n + 2) * A016873 n

end

end A177059.P6191388653264108841

namespace A177059

/-- `(A016861(n)+2)*A016873(n)` -/
def P6191388653264108841.Spec : Prop :=
  ∀ n, P6191388653264108841.a n = A177059 n

end A177059

/-! ## A177059.P3961346207208912023

`(A016897(n)-1)*A016873(n)`
-/

namespace A177059.P3961346207208912023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n - 1) * A016873 n

end

end A177059.P3961346207208912023

namespace A177059

/-- `(A016897(n)-1)*A016873(n)` -/
def P3961346207208912023.Spec : Prop :=
  ∀ n, P3961346207208912023.a n = A177059 n

end A177059

/-! ## A177059.P16134825871527280387

`A001509(n)/(A016873(n)-1)`
-/

namespace A177059.P16134825871527280387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001509 n : ℚ) / (A016873 n - 1 : ℚ)

end

end A177059.P16134825871527280387

namespace A177059

/-- `A001509(n)/(A016873(n)-1)` -/
def P16134825871527280387.Spec : Prop :=
  ∀ n, P16134825871527280387.a n = (A177059 n : ℚ)

end A177059

/-!
# A177060: a(n) = (7*n+2)*(7*n+5) = 49*n^2 + 49*n + 10.

The programs for A177060, the canonical program `A177060.P646170667136550175` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177060 has offset 0).

The definition of A177060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*n²+49*n+10` (program `A177060.P646170667136550175`, by `A177060.P646170667136550175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177060.P16364594024466498350

`49*n*(n+1)+10`
-/

namespace A177060.P16364594024466498350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n * (n + 1) + 10

end

end A177060.P16364594024466498350

namespace A177060

/-- `49*n*(n+1)+10` -/
def P16364594024466498350.Spec : Prop :=
  ∀ n, (P16364594024466498350.a n : ℤ) = A177060 n

theorem P16364594024466498350.correct : P16364594024466498350.Spec := by
  intro n
  simp only [A177060, Nat.add_sub_cancel, A177060.P16364594024466498350.a, A177060.P646170667136550175.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A177060

/-! ## A177060.P646170667136550175

`49*n²+49*n+10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177060

/-- `49*n²+49*n+10` -/
def P646170667136550175.Spec : Prop :=
  ∀ n, (P646170667136550175.a n : ℤ) = A177060 n

theorem P646170667136550175.correct : P646170667136550175.Spec := by
  intro n
  simp only [A177060]

end A177060

/-! ## A177060.P14671565140614472875

`(7*n+2)*(7*n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177060.P14671565140614472875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 2) * (7 * n + 5)

end

end A177060.P14671565140614472875

namespace A177060

/-- `(7*n+2)*(7*n+5)` -/
def P14671565140614472875.Spec : Prop :=
  ∀ n, (P14671565140614472875.a n : ℤ) = A177060 n

theorem P14671565140614472875.correct : P14671565140614472875.Spec := by
  intro n
  simp only [A177060, Nat.add_sub_cancel, A177060.P14671565140614472875.a, A177060.P646170667136550175.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A177060

/-! ## A177060.P5746105153471157998

`A001561(n)%A017030(n)`
-/

namespace A177060.P5746105153471157998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001561 n) (A017030 n)

end

end A177060.P5746105153471157998

namespace A177060

/-- `A001561(n)%A017030(n)` -/
def P5746105153471157998.Spec : Prop :=
  ∀ n, P5746105153471157998.a n = A177060 n

end A177060

/-! ## A177060.P1975567862452622388

`(A177071(n)-2)%A177071(n)`
-/

namespace A177060.P1975567862452622388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177071 n - 2) (A177071 n)

end

end A177060.P1975567862452622388

namespace A177060

/-- `(A177071(n)-2)%A177071(n)` -/
def P1975567862452622388.Spec : Prop :=
  ∀ n, P1975567862452622388.a n = A177060 n

end A177060

/-! ## A177060.P4597572254862205347

`A028552(A017005(n))`
-/

namespace A177060.P4597572254862205347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (A017005 n).toNat

end

end A177060.P4597572254862205347

namespace A177060

/-- `A028552(A017005(n))` -/
def P4597572254862205347.Spec : Prop :=
  ∀ n, P4597572254862205347.a n = A177060 n

end A177060

/-! ## A177060.P7160050017939016037

`A217748(A017041(n))`
-/

namespace A177060.P7160050017939016037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (A017041 n).toNat

end

end A177060.P7160050017939016037

namespace A177060

/-- `A217748(A017041(n))` -/
def P7160050017939016037.Spec : Prop :=
  ∀ n, P7160050017939016037.a n = A177060 n

end A177060

/-! ## A177060.P1594329601691973669

`A028552(A028560(n+1)-A027690(n))`
-/

namespace A177060.P1594329601691973669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (A028560 (n + 1) - A027690 n).toNat

end

end A177060.P1594329601691973669

namespace A177060

/-- `A028552(A028560(n+1)-A027690(n))` -/
def P1594329601691973669.Spec : Prop :=
  ∀ n, P1594329601691973669.a n = A177060 n

end A177060

/-! ## A177060.P16123761478562927122

`A014616(A017113(2*n)-2*n)`
-/

namespace A177060.P16123761478562927122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (A017113 (2 * n) - (2 * n : ℤ)).toNat

end

end A177060.P16123761478562927122

namespace A177060

/-- `A014616(A017113(2*n)-2*n)` -/
def P16123761478562927122.Spec : Prop :=
  ∀ n, P16123761478562927122.a n = A177060 n

end A177060

/-! ## A177060.P18341441697774695458

`A156674((n+1)²+n²)`
-/

namespace A177060.P18341441697774695458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 ((n + 1) ^ 2 + n ^ 2)

end

end A177060.P18341441697774695458

namespace A177060

/-- `A156674((n+1)²+n²)` -/
def P18341441697774695458.Spec : Prop :=
  ∀ n, P18341441697774695458.a n = A177060 n

end A177060

/-!
# A177062: Length of the longest common substring in binary representations of n and n^2.

The programs for A177062, there is no canonical definition to state claims against.
-/

/-! ## A177062.P9797563511996456231

`A043282(A299282(n))*A227185(2*n+1)`
-/

namespace A177062.P9797563511996456231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A299282 n).toNat * A227185 (2 * n + 1)

end

end A177062.P9797563511996456231

/-! ## A177062.P16684787393159476159

`A000120(2*A204983(n+1)+n)`
-/

namespace A177062.P16684787393159476159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A204983 (n + 1) + (n : ℤ)).toNat

end

end A177062.P16684787393159476159

/-! ## A177062.P18321819435303732316

`A000120(A204991(2*(n+1))+n)`
-/

namespace A177062.P18321819435303732316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A204991 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A177062.P18321819435303732316

/-! ## A177062.P706786059309695189

`A000120(A085593(3*(n+1))+n)`
-/

namespace A177062.P706786059309695189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A085593 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A177062.P706786059309695189

/-! ## A177062.P9091229413678573775

`A358371(A358522(n+1)+2^∑{e}[n+1, #])`
-/

namespace A177062.P9091229413678573775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A358522 (n + 1) + (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)).toNat

end

end A177062.P9091229413678573775

/-!
# A177063: Number of Pythagorean triangles with area n.

The programs for A177063, there is no canonical definition to state claims against.
-/

/-! ## A177063.P12256676949086905675

`char[A009112(n+1)-1]-A000007(A053799(n))`
-/

namespace A177063.P12256676949086905675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A000007 (A053799 n).toNat

end

end A177063.P12256676949086905675

/-! ## A177063.P12405637499161643267

`A394904(A368544(A397224((n+1)²)))`
-/

namespace A177063.P12405637499161643267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394904 (A368544 (A397224 ((n + 1) ^ 2)).toNat).toNat

end

end A177063.P12405637499161643267

/-! ## A177063.P16723189639875249506

`A157928(A219534(n)%A007862(n+1))`
-/

namespace A177063.P16723189639875249506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (Int.tmod (A219534 n) (A007862 (n + 1))).toNat

end

end A177063.P16723189639875249506

/-! ## A177063.P3204087248059147815

`A010051(∑[a(n-1)+26])` with `a(0)=48, a(1)=87`
-/

namespace A177063.P3204087248059147815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [48, 87] fun n f1 =>
  f1 (n - 1) + 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177063.P3204087248059147815

/-! ## A177063.P5493842668450727798

`A000035(val(n+1, 6)*A238794(n+3))`
-/

namespace A177063.P5493842668450727798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((SequenceMachineLib.valuation (n + 1) 6 : ℤ) * A238794 (n + 3)).toNat

end

end A177063.P5493842668450727798

/-! ## A177063.P12489025398214531663

`and(A053662(A364007(n+1))-(n+1), A025426(3*(n+1)))`
-/

namespace A177063.P12489025398214531663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053662 (A364007 (n + 1)).toNat - (n + 1 : ℤ)) (A025426 (3 * (n + 1)))

end

end A177063.P12489025398214531663

/-! ## A177063.P2307614344424223832

`and(comp[A194701(3*(n+1))], A122841(n+1))`
-/

namespace A177063.P2307614344424223832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194701 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A122841 (n + 1))

end

end A177063.P2307614344424223832

/-! ## A177063.P12447136366497306741

`A339071(gcd(A024936(n+3), A373404(n+4)))`
-/

namespace A177063.P12447136366497306741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339071 (Int.gcd (A024936 (n + 3)) (A373404 (n + 4)))

end

end A177063.P12447136366497306741

/-! ## A177063.P1562548164187019827

`A135461(A135462(A134324(n+1))-n)`
-/

namespace A177063.P1562548164187019827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (A135462 (A134324 (n + 1)).toNat - (n : ℤ)).toNat

end

end A177063.P1562548164187019827

/-! ## A177063.P7160125024938142098

`A262431(n)%A372565(n+1)`
-/

namespace A177063.P7160125024938142098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262431 n) (A372565 (n + 1))

end

end A177063.P7160125024938142098

/-!
# A177064: Primorial indices j such that P(j)#*2^k - 1 is a lower twin prime for the minimal k selected in A103782.

The programs for A177064, there is no canonical definition to state claims against.
-/

/-! ## A177064.P88159918336890498

`A181835(A099962(n))+n`
-/

namespace A177064.P88159918336890498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181835 (A099962 n).toNat + (n : ℤ)

end

end A177064.P88159918336890498

/-! ## A177064.P14451822142048051701

`floor(A023443(A153968(n))/30+n)`
-/

namespace A177064.P14451822142048051701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023443 (A153968 n).toNat : ℚ) / 30 + (n : ℚ)⌋

end

end A177064.P14451822142048051701

/-! ## A177064.P12632123913150563581

`A120430(n+1)-A064131(A120430(n+1))`
-/

namespace A177064.P12632123913150563581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120430 (n + 1) - A064131 (A120430 (n + 1)).toNat

end

end A177064.P12632123913150563581

/-! ## A177064.P16803572099343498729

`lt[A135042(n), A111168(A057550(2*(n+2)))]`
-/

namespace A177064.P16803572099343498729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111168 (A057550 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177064.P16803572099343498729

/-!
# A177065: a(n) = (8*n+3)*(8*n+5).

The programs for A177065, the canonical program `A177065.P13952455461040547032` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177065 has offset 0).

The definition of A177065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)*(8*n+5)` (program `A177065.P13952455461040547032`, by `A177065.P13952455461040547032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177065.P6367707577854873036

`128*n+a(n-1)` with `a(0)=15`
-/

namespace A177065.P6367707577854873036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  128 * n + a (n - 1)

end

end A177065.P6367707577854873036

namespace A177065

/-- `128*n+a(n-1)` -/
def P6367707577854873036.Spec : Prop :=
  ∀ n, (P6367707577854873036.a n : ℤ) = A177065 n

theorem P6367707577854873036.correct : P6367707577854873036.Spec := by
  intro n
  induction n with
  | zero => simp [A177065, A177065.P6367707577854873036.a, A177065.P13952455461040547032.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A177065, Nat.add_sub_cancel, A177065.P6367707577854873036.a, A177065.P13952455461040547032.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A177065

/-! ## A177065.P13952455461040547032

`(8*n+3)*(8*n+5)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177065

/-- `(8*n+3)*(8*n+5)` -/
def P13952455461040547032.Spec : Prop :=
  ∀ n, (P13952455461040547032.a n : ℤ) = A177065 n

theorem P13952455461040547032.correct : P13952455461040547032.Spec := by
  intro n
  simp only [A177065]

end A177065

/-! ## A177065.P16267260814486889677

`A125169(A016754(n)-1)`
-/

namespace A177065.P16267260814486889677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (A016754 n - 1).toNat

end

end A177065.P16267260814486889677

namespace A177065

/-- `A125169(A016754(n)-1)` -/
def P16267260814486889677.Spec : Prop :=
  ∀ n, P16267260814486889677.a n = A177065 n

end A177065

/-! ## A177065.P17553660773545236475

`record[lcm(4, n+1)²-1]`
-/

namespace A177065.P17553660773545236475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177065.P17553660773545236475

namespace A177065

/-- `record[lcm(4, n+1)²-1]` -/
def P17553660773545236475.Spec : Prop :=
  ∀ n, P17553660773545236475.a n = A177065 n

end A177065

/-! ## A177065.P5625220019807561298

`-or(1, -(8*n+4)²)`
-/

namespace A177065.P5625220019807561298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((8 * n + 4) ^ 2 : ℤ))

end

end A177065.P5625220019807561298

namespace A177065

/-- `-or(1, -(8*n+4)²)` -/
def P5625220019807561298.Spec : Prop :=
  ∀ n, P5625220019807561298.a n = A177065 n

end A177065

/-! ## A177065.P14070801999129381079

`-xor(1, -(8*n+4)²)`
-/

namespace A177065.P14070801999129381079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-((8 * n + 4) ^ 2 : ℤ))

end

end A177065.P14070801999129381079

namespace A177065

/-- `-xor(1, -(8*n+4)²)` -/
def P14070801999129381079.Spec : Prop :=
  ∀ n, P14070801999129381079.a n = A177065 n

end A177065

/-! ## A177065.P8071188122901882240

`or(4, Δ[(2*n)²]²-1)`
-/

namespace A177065.P8071188122901882240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - 1)

end

end A177065.P8071188122901882240

namespace A177065

/-- `or(4, Δ[(2*n)²]²-1)` -/
def P8071188122901882240.Spec : Prop :=
  ∀ n, P8071188122901882240.a n = A177065 n

end A177065

/-! ## A177065.P14252352556899106737

`xor(4, Δ[(2*n)²]²-5)`
-/

namespace A177065.P14252352556899106737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - 5)

end

end A177065.P14252352556899106737

namespace A177065

/-- `xor(4, Δ[(2*n)²]²-5)` -/
def P14252352556899106737.Spec : Prop :=
  ∀ n, P14252352556899106737.a n = A177065 n

end A177065

/-! ## A177065.P12994218692793424313

`A017114(n)-1`
-/

namespace A177065.P12994218692793424313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n - 1

end

end A177065.P12994218692793424313

namespace A177065

/-- `A017114(n)-1` -/
def P12994218692793424313.Spec : Prop :=
  ∀ n, P12994218692793424313.a n = A177065 n

end A177065

/-! ## A177065.P15523335153856896395

`A001533(n)+8`
-/

namespace A177065.P15523335153856896395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001533 n + 8

end

end A177065.P15523335153856896395

namespace A177065

/-- `A001533(n)+8` -/
def P15523335153856896395.Spec : Prop :=
  ∀ n, P15523335153856896395.a n = A177065 n

end A177065

/-! ## A177065.P18139286773978561865

`A017113(n)²-1`
-/

namespace A177065.P18139286773978561865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n ^ 2 - 1

end

end A177065.P18139286773978561865

namespace A177065

/-- `A017113(n)²-1` -/
def P18139286773978561865.Spec : Prop :=
  ∀ n, P18139286773978561865.a n = A177065 n

end A177065

/-! ## A177065.P8559042866753225042

`sqrt(A017116(n))-1`
-/

namespace A177065.P8559042866753225042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017116 n : ℝ) - 1

end

end A177065.P8559042866753225042

namespace A177065

/-- `sqrt(A017116(n))-1` -/
def P8559042866753225042.Spec : Prop :=
  ∀ n, P8559042866753225042.a n = (A177065 n : ℝ)

end A177065

/-! ## A177065.P9294481079107374447

`4*A016826(n)-1`
-/

namespace A177065.P9294481079107374447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016826 n - 1

end

end A177065.P9294481079107374447

namespace A177065

/-- `4*A016826(n)-1` -/
def P9294481079107374447.Spec : Prop :=
  ∀ n, P9294481079107374447.a n = A177065 n

end A177065

/-! ## A177065.P4092652055741596638

`4*A001539(n)+3`
-/

namespace A177065.P4092652055741596638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001539 n + 3

end

end A177065.P4092652055741596638

namespace A177065

/-- `4*A001539(n)+3` -/
def P4092652055741596638.Spec : Prop :=
  ∀ n, P4092652055741596638.a n = A177065 n

end A177065

/-! ## A177065.P10465095901819005901

`A332243(n)+A069894(n)`
-/

namespace A177065.P10465095901819005901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332243 n + A069894 n

end

end A177065.P10465095901819005901

namespace A177065

/-- `A332243(n)+A069894(n)` -/
def P10465095901819005901.Spec : Prop :=
  ∀ n, P10465095901819005901.a n = A177065 n

end A177065

/-! ## A177065.P15792924017476261616

`A001546(n)/A001533(n)`
-/

namespace A177065.P15792924017476261616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001546 n : ℚ) / (A001533 n : ℚ)

end

end A177065.P15792924017476261616

namespace A177065

/-- `A001546(n)/A001533(n)` -/
def P15792924017476261616.Spec : Prop :=
  ∀ n, P15792924017476261616.a n = (A177065 n : ℚ)

end A177065

/-! ## A177065.P3762461672765905463

`A133818(n)/A158684(n+1)`
-/

namespace A177065.P3762461672765905463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133818 n : ℚ) / (A158684 (n + 1) : ℚ)

end

end A177065.P3762461672765905463

namespace A177065

/-- `A133818(n)/A158684(n+1)` -/
def P3762461672765905463.Spec : Prop :=
  ∀ n, P3762461672765905463.a n = (A177065 n : ℚ)

end A177065

/-! ## A177065.P17154487864623438335

`lcm(A004770(n+1), A017101(n))`
-/

namespace A177065.P17154487864623438335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004770 (n + 1)) (A017101 n)

end

end A177065.P17154487864623438335

namespace A177065

/-- `lcm(A004770(n+1), A017101(n))` -/
def P17154487864623438335.Spec : Prop :=
  ∀ n, (P17154487864623438335.a n : ℤ) = A177065 n

end A177065

/-! ## A177065.P18317882988449092163

`A157912(n+1)-A158071(n+1)`
-/

namespace A177065.P18317882988449092163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157912 (n + 1) - A158071 (n + 1)

end

end A177065.P18317882988449092163

namespace A177065

/-- `A157912(n+1)-A158071(n+1)` -/
def P18317882988449092163.Spec : Prop :=
  ∀ n, P18317882988449092163.a n = A177065 n

end A177065

/-! ## A177065.P12662200973685837927

`Δ[A000466(n)]²-1`
-/

namespace A177065.P12662200973685837927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A177065.P12662200973685837927

namespace A177065

/-- `Δ[A000466(n)]²-1` -/
def P12662200973685837927.Spec : Prop :=
  ∀ n, P12662200973685837927.a n = A177065 n

end A177065

/-!
# A177066: Determinant of the symmetric n X n matrix M defined by M(i,j) = gcd(2i-1,2j-1) for 1 <= i,j <= n.

The programs for A177066, there is no canonical definition to state claims against.
-/

/-! ## A177066.P10548285493651932800

`∏[A000010(A004280(n+1))]`
-/

namespace A177066.P10548285493651932800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177066.P10548285493651932800

/-! ## A177066.P18379301792671123195

`∏[A000010(comp[A103164(2*n)])]`
-/

namespace A177066.P18379301792671123195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177066.P18379301792671123195

/-! ## A177066.P8766273311180155037

`∏[A000010(A109613(comp[2*(n+1)]))]`
-/

namespace A177066.P8766273311180155037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A109613 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177066.P8766273311180155037

/-! ## A177066.P18201845987240607951

`∏[A037225(n)]/A037225(n)`
-/

namespace A177066.P18201845987240607951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A037225 n : ℚ)

end

end A177066.P18201845987240607951

/-! ## A177066.P3952038940992281228

`∏[A000010(2*n+1)]/A000010(2*n+1)`
-/

namespace A177066.P3952038940992281228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000010 (2 * n + 1) : ℚ)

end

end A177066.P3952038940992281228

/-!
# A177068: a(n) = 10^n + n^10.

The programs for A177068, the canonical program `A177068.P16967518034322304449` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177068 has offset 0).

The definition of A177068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+n^10` (program `A177068.P16967518034322304449`, by `A177068.P16967518034322304449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177068.P16967518034322304449

`10^n+n^10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177068

/-- `10^n+n^10` -/
def P16967518034322304449.Spec : Prop :=
  ∀ n, (P16967518034322304449.a n : ℤ) = A177068 n

theorem P16967518034322304449.correct : P16967518034322304449.Spec := by
  intro n
  simp only [A177068]

end A177068

/-! ## A177068.P15808659642934561162

`A055652(A253145(n+9)+10)`
-/

namespace A177068.P15808659642934561162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A253145 (n + 9) + 10).toNat

end

end A177068.P15808659642934561162

namespace A177068

/-- `A055652(A253145(n+9)+10)` -/
def P15808659642934561162.Spec : Prop :=
  ∀ n, P15808659642934561162.a n = A177068 n

end A177068

/-! ## A177068.P9893112725418727349

`A055652(A000096(n+9)+11)`
-/

namespace A177068.P9893112725418727349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A000096 (n + 9) + 11).toNat

end

end A177068.P9893112725418727349

namespace A177068

/-- `A055652(A000096(n+9)+11)` -/
def P9893112725418727349.Spec : Prop :=
  ∀ n, P9893112725418727349.a n = A177068 n

end A177068

/-! ## A177068.P1563998357889010067

`A156354(A000217(n+10)+10)`
-/

namespace A177068.P1563998357889010067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000217 (n + 10) + 10).toNat

end

end A177068.P1563998357889010067

namespace A177068

/-- `A156354(A000217(n+10)+10)` -/
def P1563998357889010067.Spec : Prop :=
  ∀ n, P1563998357889010067.a n = A177068 n

end A177068

/-! ## A177068.P15670772941648782751

`A156354(A000096(n+9)+n+1)`
-/

namespace A177068.P15670772941648782751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A177068.P15670772941648782751

namespace A177068

/-- `A156354(A000096(n+9)+n+1)` -/
def P15670772941648782751.Spec : Prop :=
  ∀ n, P15670772941648782751.a n = A177068 n

end A177068

/-!
# A177069: a(n) = 11^n + n^11.

The programs for A177069, the canonical program `A177069.P3989821419646162598` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177069 has offset 0).

The definition of A177069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+n^11` (program `A177069.P3989821419646162598`, by `A177069.P3989821419646162598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177069.P3989821419646162598

`11^n+n^11`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177069

/-- `11^n+n^11` -/
def P3989821419646162598.Spec : Prop :=
  ∀ n, (P3989821419646162598.a n : ℤ) = A177069 n

theorem P3989821419646162598.correct : P3989821419646162598.Spec := by
  intro n
  simp only [A177069]

end A177069

/-! ## A177069.P17644781733042440953

`abs(A008593(n)-A220653(n))`
-/

namespace A177069.P17644781733042440953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A220653 n|

end

end A177069.P17644781733042440953

namespace A177069

/-- `abs(A008593(n)-A220653(n))` -/
def P17644781733042440953.Spec : Prop :=
  ∀ n, P17644781733042440953.a n = A177069 n

end A177069

/-! ## A177069.P12604598378045681684

`gcd(A008593(n)-A220653(n), A000038(n))`
-/

namespace A177069.P12604598378045681684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008593 n - A220653 n) (A000038 n)

end

end A177069.P12604598378045681684

namespace A177069

/-- `gcd(A008593(n)-A220653(n), A000038(n))` -/
def P12604598378045681684.Spec : Prop :=
  ∀ n, (P12604598378045681684.a n : ℤ) = A177069 n

end A177069

/-! ## A177069.P2300268581294862810

`lcm(A008593(n)-A220653(n), A074290(2*n+1)!)`
-/

namespace A177069.P2300268581294862810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008593 n - A220653 n) (Nat.factorial (A074290 (2 * n + 1)).toNat : ℤ)

end

end A177069.P2300268581294862810

namespace A177069

/-- `lcm(A008593(n)-A220653(n), A074290(2*n+1)!)` -/
def P2300268581294862810.Spec : Prop :=
  ∀ n, (P2300268581294862810.a n : ℤ) = A177069 n

end A177069

/-! ## A177069.P11863213636414701840

`(A008593(n)-A220653(n))*A008683(A002144(n+1))`
-/

namespace A177069.P11863213636414701840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008593 n - A220653 n) * A008683 (A002144 (n + 1)).toNat

end

end A177069.P11863213636414701840

namespace A177069

/-- `(A008593(n)-A220653(n))*A008683(A002144(n+1))` -/
def P11863213636414701840.Spec : Prop :=
  ∀ n, P11863213636414701840.a n = A177069 n

end A177069

/-! ## A177069.P14093062294391142859

`(A008593(n)-A220653(n))*A008683(A078329(n+1))`
-/

namespace A177069.P14093062294391142859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008593 n - A220653 n) * A008683 (A078329 (n + 1)).toNat

end

end A177069.P14093062294391142859

namespace A177069

/-- `(A008593(n)-A220653(n))*A008683(A078329(n+1))` -/
def P14093062294391142859.Spec : Prop :=
  ∀ n, P14093062294391142859.a n = A177069 n

end A177069

/-! ## A177069.P2343933417839634928

`A156354(A167499(n)+A017281(n+7))`
-/

namespace A177069.P2343933417839634928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A167499 n + A017281 (n + 7)).toNat

end

end A177069.P2343933417839634928

namespace A177069

/-- `A156354(A167499(n)+A017281(n+7))` -/
def P2343933417839634928.Spec : Prop :=
  ∀ n, P2343933417839634928.a n = A177069 n

end A177069

/-! ## A177069.P4109840335363449701

`A156354(2*n+A000217(n+10)+11)`
-/

namespace A177069.P4109840335363449701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 ((2 * n : ℤ) + (A000217 (n + 10) + 11)).toNat

end

end A177069.P4109840335363449701

namespace A177069

/-- `A156354(2*n+A000217(n+10)+11)` -/
def P4109840335363449701.Spec : Prop :=
  ∀ n, P4109840335363449701.a n = A177069 n

end A177069

/-!
# A177070: Numbers k such that 2^k + k^2 + 2 is prime.

The programs for A177070, there is no canonical definition to state claims against.
-/

/-! ## A177070.P6915112043069593024

`eq[(n%2)^n, A366426(floor((n+1)*sqrt(3)))]`
-/

namespace A177070.P6915112043069593024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366426 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177070.P6915112043069593024

/-! ## A177070.P6002121537869894519

`or(A046929(3^n), A261089(n))`
-/

namespace A177070.P6002121537869894519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046929 (3 ^ n)) (A261089 n)

end

end A177070.P6002121537869894519

/-! ## A177070.P11063065341315193783

`lt[A191212(n+1), A192034(n)]`
-/

namespace A177070.P11063065341315193783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177070.P11063065341315193783

/-! ## A177070.P11661620840753214680

`eq[A224076(n+1), A281130(n+1)]`
-/

namespace A177070.P11661620840753214680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177070.P11661620840753214680

/-! ## A177070.P9826891904617402615

`A103265(2*n)-A008836(A321722(n))`
-/

namespace A177070.P9826891904617402615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103265 (2 * n) - A008836 (A321722 n).toNat

end

end A177070.P9826891904617402615

/-!
# A177071: a(n) = (7*n + 3)*(7*n + 4).

The programs for A177071, the canonical program `A177071.P183334433867899260` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177071 has offset 0).

The definition of A177071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)*(7*n+4)` (program `A177071.P183334433867899260`, by `A177071.P183334433867899260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177071.P3507808616298154029

`2*C(7*n+4, 2)`
-/

namespace A177071.P3507808616298154029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (7 * n + 4) 2

end

end A177071.P3507808616298154029

namespace A177071

/-- `2*C(7*n+4, 2)` -/
def P3507808616298154029.Spec : Prop :=
  ∀ n, (P3507808616298154029.a n : ℤ) = A177071 n

end A177071

/-! ## A177071.P4183465216486283236

`98*n+a(n-1)` with `a(0)=12`
-/

namespace A177071.P4183465216486283236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  98 * n + a (n - 1)

end

end A177071.P4183465216486283236

namespace A177071

/-- `98*n+a(n-1)` -/
def P4183465216486283236.Spec : Prop :=
  ∀ n, (P4183465216486283236.a n : ℤ) = A177071 n

theorem P4183465216486283236.correct : P4183465216486283236.Spec := by
  intro n
  induction n with
  | zero => simp [A177071, A177071.P4183465216486283236.a, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A177071, Nat.add_sub_cancel, A177071.P4183465216486283236.a, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A177071

/-! ## A177071.P183334433867899260

`(7*n+3)*(7*n+4)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177071

/-- `(7*n+3)*(7*n+4)` -/
def P183334433867899260.Spec : Prop :=
  ∀ n, (P183334433867899260.a n : ℤ) = A177071 n

theorem P183334433867899260.correct : P183334433867899260.Spec := by
  intro n
  simp only [A177071]

end A177071

/-! ## A177071.P12597320303677988447

`A177060(n)+2`
-/

namespace A177071.P12597320303677988447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177060 n + 2

end

end A177071.P12597320303677988447

namespace A177071

/-- `A177060(n)+2` -/
def P12597320303677988447.Spec : Prop :=
  ∀ n, P12597320303677988447.a n = A177071 n

end A177071

/-! ## A177071.P14768383098557716349

`A001526(n)+6`
-/

namespace A177071.P14768383098557716349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001526 n + 6

end

end A177071.P14768383098557716349

namespace A177071

/-- `A001526(n)+6` -/
def P14768383098557716349.Spec : Prop :=
  ∀ n, P14768383098557716349.a n = A177071 n

end A177071

/-! ## A177071.P14346664991605457070

`A017018(n)+A017017(n)`
-/

namespace A177071.P14346664991605457070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n + A017017 n

end

end A177071.P14346664991605457070

namespace A177071

/-- `A017018(n)+A017017(n)` -/
def P14346664991605457070.Spec : Prop :=
  ∀ n, P14346664991605457070.a n = A177071 n

end A177071

/-! ## A177071.P8937332777982217071

`A304504(n)+A022274(n)`
-/

namespace A177071.P8937332777982217071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304504 n + A022274 n

end

end A177071.P8937332777982217071

namespace A177071

/-- `A304504(n)+A022274(n)` -/
def P8937332777982217071.Spec : Prop :=
  ∀ n, P8937332777982217071.a n = A177071 n

end A177071

/-! ## A177071.P7343723857239105713

`A260955(n)+A177059(n)`
-/

namespace A177071.P7343723857239105713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260955 n + A177059 n

end

end A177071.P7343723857239105713

namespace A177071

/-- `A260955(n)+A177059(n)` -/
def P7343723857239105713.Spec : Prop :=
  ∀ n, P7343723857239105713.a n = A177071 n

end A177071

/-! ## A177071.P3649528617707123616

`A017030(n)-A017029(n)`
-/

namespace A177071.P3649528617707123616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n - A017029 n

end

end A177071.P3649528617707123616

namespace A177071

/-- `A017030(n)-A017029(n)` -/
def P3649528617707123616.Spec : Prop :=
  ∀ n, P3649528617707123616.a n = A177071 n

end A177071

/-! ## A177071.P16738770003654576170

`lcm(A017017(n), A017029(n))`
-/

namespace A177071.P16738770003654576170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017017 n) (A017029 n)

end

end A177071.P16738770003654576170

namespace A177071

/-- `lcm(A017017(n), A017029(n))` -/
def P16738770003654576170.Spec : Prop :=
  ∀ n, (P16738770003654576170.a n : ℤ) = A177071 n

end A177071

/-! ## A177071.P637906741747181116

`A304205(n+1)+A016982(n)`
-/

namespace A177071.P637906741747181116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A016982 n

end

end A177071.P637906741747181116

namespace A177071

/-- `A304205(n+1)+A016982(n)` -/
def P637906741747181116.Spec : Prop :=
  ∀ n, P637906741747181116.a n = A177071 n

end A177071

/-! ## A177071.P2237556078935983787

`A332243(n)-A069173(n+1)`
-/

namespace A177071.P2237556078935983787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332243 n - A069173 (n + 1)

end

end A177071.P2237556078935983787

namespace A177071

/-- `A332243(n)-A069173(n+1)` -/
def P2237556078935983787.Spec : Prop :=
  ∀ n, P2237556078935983787.a n = A177071 n

end A177071

/-! ## A177071.P1719857821987437270

`lcm(A061792(n), A113804(n+1))`
-/

namespace A177071.P1719857821987437270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061792 n) (A113804 (n + 1))

end

end A177071.P1719857821987437270

namespace A177071

/-- `lcm(A061792(n), A113804(n+1))` -/
def P1719857821987437270.Spec : Prop :=
  ∀ n, (P1719857821987437270.a n : ℤ) = A177071 n

end A177071

/-! ## A177071.P2432521132778196469

`A192827(n+1)+A143838(n+1)`
-/

namespace A177071.P2432521132778196469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192827 (n + 1) + A143838 (n + 1)

end

end A177071.P2432521132778196469

namespace A177071

/-- `A192827(n+1)+A143838(n+1)` -/
def P2432521132778196469.Spec : Prop :=
  ∀ n, P2432521132778196469.a n = A177071 n

end A177071

/-! ## A177071.P13173797626480012961

`A157953(n+1)-A292344(n+1)`
-/

namespace A177071.P13173797626480012961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157953 (n + 1) - A292344 (n + 1)

end

end A177071.P13173797626480012961

namespace A177071

/-- `A157953(n+1)-A292344(n+1)` -/
def P13173797626480012961.Spec : Prop :=
  ∀ n, P13173797626480012961.a n = A177071 n

end A177071

/-! ## A177071.P12031890292249990991

`lcm(A063211(n+1), A063237(n+1))`
-/

namespace A177071.P12031890292249990991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063211 (n + 1)) (A063237 (n + 1))

end

end A177071.P12031890292249990991

namespace A177071

/-- `lcm(A063211(n+1), A063237(n+1))` -/
def P12031890292249990991.Spec : Prop :=
  ∀ n, (P12031890292249990991.a n : ℤ) = A177071 n

end A177071

/-! ## A177071.P5423379437463612809

`A017017(n)+A017023(n)/A017021(n)`
-/

namespace A177071.P5423379437463612809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017017 n : ℚ) + (A017023 n : ℚ) / (A017021 n : ℚ)

end

end A177071.P5423379437463612809

namespace A177071

/-- `A017017(n)+A017023(n)/A017021(n)` -/
def P5423379437463612809.Spec : Prop :=
  ∀ n, P5423379437463612809.a n = (A177071 n : ℚ)

end A177071

/-! ## A177071.P3190488410981082100

`A017017(n)+A017024(n)/A017022(n)`
-/

namespace A177071.P3190488410981082100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017017 n : ℚ) + (A017024 n : ℚ) / (A017022 n : ℚ)

end

end A177071.P3190488410981082100

namespace A177071

/-- `A017017(n)+A017024(n)/A017022(n)` -/
def P3190488410981082100.Spec : Prop :=
  ∀ n, P3190488410981082100.a n = (A177071 n : ℚ)

end A177071

/-! ## A177071.P4877457606131477100

`A017017(n)+A017025(n)/A017023(n)`
-/

namespace A177071.P4877457606131477100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017017 n : ℚ) + (A017025 n : ℚ) / (A017023 n : ℚ)

end

end A177071.P4877457606131477100

namespace A177071

/-- `A017017(n)+A017025(n)/A017023(n)` -/
def P4877457606131477100.Spec : Prop :=
  ∀ n, P4877457606131477100.a n = (A177071 n : ℚ)

end A177071

/-! ## A177071.P14102013834750272459

`(A017023(n)+A017022(n))/A017021(n)`
-/

namespace A177071.P14102013834750272459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017023 n + A017022 n : ℚ) / (A017021 n : ℚ)

end

end A177071.P14102013834750272459

namespace A177071

/-- `(A017023(n)+A017022(n))/A017021(n)` -/
def P14102013834750272459.Spec : Prop :=
  ∀ n, P14102013834750272459.a n = (A177071 n : ℚ)

end A177071

/-!
# A177072: a(n) = (9*n+2)*(9*n+7).

The programs for A177072, the canonical program `A177072.P1995508505510612793` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177072 has offset 0).

The definition of A177072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)*(9*n+7)` (program `A177072.P1995508505510612793`, by `A177072.P1995508505510612793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177072.P13726501108577399879

`162*n+a(n-1)` with `a(0)=14`
-/

namespace A177072.P13726501108577399879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14] fun n a =>
  162 * n + a (n - 1)

end

end A177072.P13726501108577399879

namespace A177072

/-- `162*n+a(n-1)` -/
def P13726501108577399879.Spec : Prop :=
  ∀ n, (P13726501108577399879.a n : ℤ) = A177072 n

theorem P13726501108577399879.correct : P13726501108577399879.Spec := by
  intro n
  induction n with
  | zero => simp [A177072, A177072.P13726501108577399879.a, A177072.P1995508505510612793.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A177072, Nat.add_sub_cancel, A177072.P13726501108577399879.a, A177072.P1995508505510612793.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A177072

/-! ## A177072.P1995508505510612793

`(9*n+2)*(9*n+7)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177072

/-- `(9*n+2)*(9*n+7)` -/
def P1995508505510612793.Spec : Prop :=
  ∀ n, (P1995508505510612793.a n : ℤ) = A177072 n

theorem P1995508505510612793.correct : P1995508505510612793.Spec := by
  intro n
  simp only [A177072]

end A177072

/-! ## A177072.P15919389093534466956

`record[(dr(n+1)-(n-3))²-(n+2)]`
-/

namespace A177072.P15919389093534466956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - ((n : ℤ) - 3)) ^ 2 - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177072.P15919389093534466956

namespace A177072

/-- `record[(dr(n+1)-(n-3))²-(n+2)]` -/
def P15919389093534466956.Spec : Prop :=
  ∀ n, P15919389093534466956.a n = A177072 n

end A177072

/-! ## A177072.P8607446378837777680

`A001534(n)+6`
-/

namespace A177072.P8607446378837777680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001534 n + 6

end

end A177072.P8607446378837777680

namespace A177072

/-- `A001534(n)+6` -/
def P8607446378837777680.Spec : Prop :=
  ∀ n, P8607446378837777680.a n = A177072 n

end A177072

/-! ## A177072.P1034234346191103972

`A177073(n)-6`
-/

namespace A177072.P1034234346191103972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177073 n - 6

end

end A177072.P1034234346191103972

namespace A177072

/-- `A177073(n)-6` -/
def P1034234346191103972.Spec : Prop :=
  ∀ n, P1034234346191103972.a n = A177072 n

end A177072

/-! ## A177072.P3328564864063627863

`A139610(n)+A017186(n)`
-/

namespace A177072.P3328564864063627863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A017186 n

end

end A177072.P3328564864063627863

namespace A177072

/-- `A139610(n)+A017186(n)` -/
def P3328564864063627863.Spec : Prop :=
  ∀ n, P3328564864063627863.a n = A177072 n

end A177072

/-! ## A177072.P12064202706344134268

`A139610(n)+A017185(n)²`
-/

namespace A177072.P12064202706344134268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A017185 n ^ 2

end

end A177072.P12064202706344134268

namespace A177072

/-- `A139610(n)+A017185(n)²` -/
def P12064202706344134268.Spec : Prop :=
  ∀ n, P12064202706344134268.a n = A177072 n

end A177072

/-! ## A177072.P18338976841801651310

`A017185(n)+A017185(n)*A017233(n)`
-/

namespace A177072.P18338976841801651310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n + A017185 n * A017233 n

end

end A177072.P18338976841801651310

namespace A177072

/-- `A017185(n)+A017185(n)*A017233(n)` -/
def P18338976841801651310.Spec : Prop :=
  ∀ n, P18338976841801651310.a n = A177072 n

end A177072

/-! ## A177072.P403099659015416909

`A017245(n)+A017173(n)*A017245(n)`
-/

namespace A177072.P403099659015416909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n + A017173 n * A017245 n

end

end A177072.P403099659015416909

namespace A177072

/-- `A017245(n)+A017173(n)*A017245(n)` -/
def P403099659015416909.Spec : Prop :=
  ∀ n, P403099659015416909.a n = A177072 n

end A177072

/-! ## A177072.P14558962143460515649

`A017209(n)*A017233(n)-A017173(n+1)`
-/

namespace A177072.P14558962143460515649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n * A017233 n - A017173 (n + 1)

end

end A177072.P14558962143460515649

namespace A177072

/-- `A017209(n)*A017233(n)-A017173(n+1)` -/
def P14558962143460515649.Spec : Prop :=
  ∀ n, P14558962143460515649.a n = A177072 n

end A177072

/-! ## A177072.P17699595331900042072

`abs(5-A069131(3*n+2))`
-/

namespace A177072.P17699595331900042072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A069131 (3 * n + 2)|

end

end A177072.P17699595331900042072

namespace A177072

/-- `abs(5-A069131(3*n+2))` -/
def P17699595331900042072.Spec : Prop :=
  ∀ n, P17699595331900042072.a n = A177072 n

end A177072

/-! ## A177072.P17961357578726527828

`A104675(9*n+1)`
-/

namespace A177072.P17961357578726527828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 (9 * n + 1)

end

end A177072.P17961357578726527828

namespace A177072

/-- `A104675(9*n+1)` -/
def P17961357578726527828.Spec : Prop :=
  ∀ n, P17961357578726527828.a n = A177072 n

end A177072

/-! ## A177072.P5520246156870156986

`A028557(9*n+2)`
-/

namespace A177072.P5520246156870156986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (9 * n + 2)

end

end A177072.P5520246156870156986

namespace A177072

/-- `A028557(9*n+2)` -/
def P5520246156870156986.Spec : Prop :=
  ∀ n, P5520246156870156986.a n = A177072 n

end A177072

/-! ## A177072.P6800331908984505084

`A184115(A139610(n))`
-/

namespace A177072.P6800331908984505084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184115 (A139610 n).toNat

end

end A177072.P6800331908984505084

namespace A177072

/-- `A184115(A139610(n))` -/
def P6800331908984505084.Spec : Prop :=
  ∀ n, P6800331908984505084.a n = A177072 n

end A177072

/-!
# A177073: a(n) = (9*n+4)*(9*n+5).

The programs for A177073, the canonical program `A177073.P12367509334309309339` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177073 has offset 0).

The definition of A177073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+4)*(9*n+5)` (program `A177073.P12367509334309309339`, by `A177073.P12367509334309309339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177073.P11501884654225712821

`162*n+a(n-1)` with `a(0)=20`
-/

namespace A177073.P11501884654225712821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20] fun n a =>
  162 * n + a (n - 1)

end

end A177073.P11501884654225712821

namespace A177073

/-- `162*n+a(n-1)` -/
def P11501884654225712821.Spec : Prop :=
  ∀ n, (P11501884654225712821.a n : ℤ) = A177073 n

theorem P11501884654225712821.correct : P11501884654225712821.Spec := by
  intro n
  induction n with
  | zero => simp [A177073, A177073.P11501884654225712821.a, A177073.P12367509334309309339.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A177073, Nat.add_sub_cancel, A177073.P11501884654225712821.a, A177073.P12367509334309309339.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A177073

/-! ## A177073.P12367509334309309339

`(9*n+4)*(9*n+5)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177073

/-- `(9*n+4)*(9*n+5)` -/
def P12367509334309309339.Spec : Prop :=
  ∀ n, (P12367509334309309339.a n : ℤ) = A177073 n

theorem P12367509334309309339.correct : P12367509334309309339.Spec := by
  intro n
  simp only [A177073]

end A177073

/-! ## A177073.P8334868812911531133

`A177072(n)+6`
-/

namespace A177073.P8334868812911531133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177072 n + 6

end

end A177073.P8334868812911531133

namespace A177073

/-- `A177072(n)+6` -/
def P8334868812911531133.Spec : Prop :=
  ∀ n, P8334868812911531133.a n = A177073 n

end A177073

/-! ## A177073.P1699768667775390440

`A017222(n)-(9*n+5)`
-/

namespace A177073.P1699768667775390440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n - (9 * n + 5 : ℤ)

end

end A177073.P1699768667775390440

namespace A177073

/-- `A017222(n)-(9*n+5)` -/
def P1699768667775390440.Spec : Prop :=
  ∀ n, P1699768667775390440.a n = A177073 n

end A177073

/-! ## A177073.P9050880429999866543

`A017210(n)+A017209(n)`
-/

namespace A177073.P9050880429999866543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017210 n + A017209 n

end

end A177073.P9050880429999866543

namespace A177073

/-- `A017210(n)+A017209(n)` -/
def P9050880429999866543.Spec : Prop :=
  ∀ n, P9050880429999866543.a n = A177073 n

end A177073

/-! ## A177073.P7109947832821268652

`A304508(n)+A268351(n)`
-/

namespace A177073.P7109947832821268652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304508 n + A268351 n

end

end A177073.P7109947832821268652

namespace A177073

/-- `A304508(n)+A268351(n)` -/
def P7109947832821268652.Spec : Prop :=
  ∀ n, P7109947832821268652.a n = A177073 n

end A177073

/-! ## A177073.P14426439831631194366

`lcm(A017209(n), A017221(n))`
-/

namespace A177073.P14426439831631194366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017209 n) (A017221 n)

end

end A177073.P14426439831631194366

namespace A177073

/-- `lcm(A017209(n), A017221(n))` -/
def P14426439831631194366.Spec : Prop :=
  ∀ n, (P14426439831631194366.a n : ℤ) = A177073 n

end A177073

/-! ## A177073.P12993428648785223419

`A154295(n+1)+A017197(n)`
-/

namespace A177073.P12993428648785223419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154295 (n + 1) + A017197 n

end

end A177073.P12993428648785223419

namespace A177073

/-- `A154295(n+1)+A017197(n)` -/
def P12993428648785223419.Spec : Prop :=
  ∀ n, P12993428648785223419.a n = A177073 n

end A177073

/-! ## A177073.P17318869191540383408

`A017227(n)/A017225(n)-A017221(n)`
-/

namespace A177073.P17318869191540383408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017227 n : ℚ) / (A017225 n : ℚ) - (A017221 n : ℚ)

end

end A177073.P17318869191540383408

namespace A177073

/-- `A017227(n)/A017225(n)-A017221(n)` -/
def P17318869191540383408.Spec : Prop :=
  ∀ n, P17318869191540383408.a n = (A177073 n : ℚ)

end A177073

/-! ## A177073.P4114650973065810769

`A017228(n)/A017226(n)-A017221(n)`
-/

namespace A177073.P4114650973065810769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017228 n : ℚ) / (A017226 n : ℚ) - (A017221 n : ℚ)

end

end A177073.P4114650973065810769

namespace A177073

/-- `A017228(n)/A017226(n)-A017221(n)` -/
def P4114650973065810769.Spec : Prop :=
  ∀ n, P4114650973065810769.a n = (A177073 n : ℚ)

end A177073

/-! ## A177073.P3825338937674338365

`(A017228(n)-A017227(n))/A017226(n)`
-/

namespace A177073.P3825338937674338365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017228 n - A017227 n : ℚ) / (A017226 n : ℚ)

end

end A177073.P3825338937674338365

namespace A177073

/-- `(A017228(n)-A017227(n))/A017226(n)` -/
def P3825338937674338365.Spec : Prop :=
  ∀ n, P3825338937674338365.a n = (A177073 n : ℚ)

end A177073

/-! ## A177073.P5444682804426283040

`A017229(n)/A017227(n)-A017221(n)`
-/

namespace A177073.P5444682804426283040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / (A017227 n : ℚ) - (A017221 n : ℚ)

end

end A177073.P5444682804426283040

namespace A177073

/-- `A017229(n)/A017227(n)-A017221(n)` -/
def P5444682804426283040.Spec : Prop :=
  ∀ n, P5444682804426283040.a n = (A177073 n : ℚ)

end A177073

/-! ## A177073.P17037515247248620060

`(A017229(n)-A017228(n))/A017227(n)`
-/

namespace A177073.P17037515247248620060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n - A017228 n : ℚ) / (A017227 n : ℚ)

end

end A177073.P17037515247248620060

namespace A177073

/-- `(A017229(n)-A017228(n))/A017227(n)` -/
def P17037515247248620060.Spec : Prop :=
  ∀ n, P17037515247248620060.a n = (A177073 n : ℚ)

end A177073

/-! ## A177073.P3356544068229988434

`floor((A008591(2*n+1)/2)²)`
-/

namespace A177073.P3356544068229988434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A008591 (2 * n + 1) : ℚ) / 2) ^ 2⌋

end

end A177073.P3356544068229988434

namespace A177073

/-- `floor((A008591(2*n+1)/2)²)` -/
def P3356544068229988434.Spec : Prop :=
  ∀ n, P3356544068229988434.a n = A177073 n

end A177073

/-! ## A177073.P746458480333539287

`A061101(2*n+1)+A017209(n)`
-/

namespace A177073.P746458480333539287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061101 (2 * n + 1) + A017209 n

end

end A177073.P746458480333539287

namespace A177073

/-- `A061101(2*n+1)+A017209(n)` -/
def P746458480333539287.Spec : Prop :=
  ∀ n, P746458480333539287.a n = A177073 n

end A177073

/-! ## A177073.P14015008395327886165

`A001504(3*n+1)`
-/

namespace A177073.P14015008395327886165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 (3 * n + 1)

end

end A177073.P14015008395327886165

namespace A177073

/-- `A001504(3*n+1)` -/
def P14015008395327886165.Spec : Prop :=
  ∀ n, P14015008395327886165.a n = A177073 n

end A177073

/-! ## A177073.P2850143071280056348

`A069131(A016789(n))+1`
-/

namespace A177073.P2850143071280056348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (A016789 n).toNat + 1

end

end A177073.P2850143071280056348

namespace A177073

/-- `A069131(A016789(n))+1` -/
def P2850143071280056348.Spec : Prop :=
  ∀ n, P2850143071280056348.a n = A177073 n

end A177073

/-! ## A177073.P3205955104673024863

`A173102(6*n+3)`
-/

namespace A177073.P3205955104673024863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173102 (6 * n + 3)

end

end A177073.P3205955104673024863

namespace A177073

/-- `A173102(6*n+3)` -/
def P3205955104673024863.Spec : Prop :=
  ∀ n, P3205955104673024863.a n = A177073 n

end A177073

/-! ## A177073.P12251688433724090971

`A195042(A008585(2*n+1))+1`
-/

namespace A177073.P12251688433724090971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 (A008585 (2 * n + 1)).toNat + 1

end

end A177073.P12251688433724090971

namespace A177073

/-- `A195042(A008585(2*n+1))+1` -/
def P12251688433724090971.Spec : Prop :=
  ∀ n, P12251688433724090971.a n = A177073 n

end A177073

/-! ## A177073.P15983628463964115192

`A279019(9*(n+1))`
-/

namespace A177073.P15983628463964115192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279019 (9 * (n + 1))

end

end A177073.P15983628463964115192

namespace A177073

/-- `A279019(9*(n+1))` -/
def P15983628463964115192.Spec : Prop :=
  ∀ n, P15983628463964115192.a n = A177073 n

end A177073

/-!
# A177074: a(n) = 3*(10^n-5).

The programs for A177074, the canonical program `A177074.P17838302546417673985` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177074 has offset 1).

The definition of A177074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(10^(n+1)-5)` (program `A177074.P17838302546417673985`, by `A177074.P17838302546417673985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177074.P17838302546417673985

`3*(10^(n+1)-5)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177074

/-- `3*(10^(n+1)-5)` -/
def P17838302546417673985.Spec : Prop :=
  ∀ n, P17838302546417673985.a n = A177074 (n + 1)

theorem P17838302546417673985.correct : P17838302546417673985.Spec := by
  intro n
  simp only [A177074, Nat.add_sub_cancel]

end A177074

/-! ## A177074.P16734947397294605633

`11*a(n-1)-10*a(n-2)` with `a(0)=15, a(1)=285`
-/

namespace A177074.P16734947397294605633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 285] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A177074.P16734947397294605633

namespace A177074

/-- `11*a(n-1)-10*a(n-2)` -/
def P16734947397294605633.Spec : Prop :=
  ∀ n, P16734947397294605633.a n = A177074 (n + 1)

theorem P16734947397294605633.correct : P16734947397294605633.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A177074, Nat.add_sub_cancel, A177074.P16734947397294605633.a, A177074.P17838302546417673985.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A177074, Nat.add_sub_cancel, A177074.P16734947397294605633.a, A177074.P17838302546417673985.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177074

/-! ## A177074.P7844359636823142017

`lcm(3, 5-10^(n+1))`
-/

namespace A177074.P7844359636823142017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (5 - (10 ^ (n + 1) : ℤ))

end

end A177074.P7844359636823142017

namespace A177074

/-- `lcm(3, 5-10^(n+1))` -/
def P7844359636823142017.Spec : Prop :=
  ∀ n, (P7844359636823142017.a n : ℤ) = A177074 (n + 1)

end A177074

/-! ## A177074.P16881124587595643901

`A177097(n+1)/2`
-/

namespace A177074.P16881124587595643901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177097 (n + 1) : ℚ) / 2

end

end A177074.P16881124587595643901

namespace A177074

/-- `A177097(n+1)/2` -/
def P16881124587595643901.Spec : Prop :=
  ∀ n, P16881124587595643901.a n = (A177074 (n + 1) : ℚ)

end A177074

/-! ## A177074.P6078194757093197827

`A177107(n+1)+6`
-/

namespace A177074.P6078194757093197827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177107 (n + 1) + 6

end

end A177074.P6078194757093197827

namespace A177074

/-- `A177107(n+1)+6` -/
def P6078194757093197827.Spec : Prop :=
  ∀ n, P6078194757093197827.a n = A177074 (n + 1)

end A177074

/-! ## A177074.P3422947042640413959

`A086947(n+1)-6`
-/

namespace A177074.P3422947042640413959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086947 (n + 1) - 6

end

end A177074.P3422947042640413959

namespace A177074

/-- `A086947(n+1)-6` -/
def P3422947042640413959.Spec : Prop :=
  ∀ n, P3422947042640413959.a n = A177074 (n + 1)

end A177074

/-! ## A177074.P4438257112658480245

`A086943(n+1)-8`
-/

namespace A177074.P4438257112658480245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086943 (n + 1) - 8

end

end A177074.P4438257112658480245

namespace A177074

/-- `A086943(n+1)-8` -/
def P4438257112658480245.Spec : Prop :=
  ∀ n, P4438257112658480245.a n = A177074 (n + 1)

end A177074

/-! ## A177074.P15485959454461024169

`A086941(n+1)-9`
-/

namespace A177074.P15485959454461024169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086941 (n + 1) - 9

end

end A177074.P15485959454461024169

namespace A177074

/-- `A086941(n+1)-9` -/
def P15485959454461024169.Spec : Prop :=
  ∀ n, P15485959454461024169.a n = A177074 (n + 1)

end A177074

/-! ## A177074.P9827375013279363307

`A175602(n+1)-A086949(n+1)`
-/

namespace A177074.P9827375013279363307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175602 (n + 1) - A086949 (n + 1)

end

end A177074.P9827375013279363307

namespace A177074

/-- `A175602(n+1)-A086949(n+1)` -/
def P9827375013279363307.Spec : Prop :=
  ∀ n, P9827375013279363307.a n = A177074 (n + 1)

end A177074

/-! ## A177074.P697775053490384792

`3*A177109(n+1)/4`
-/

namespace A177074.P697775053490384792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A177109 (n + 1) : ℚ) / 4

end

end A177074.P697775053490384792

namespace A177074

/-- `3*A177109(n+1)/4` -/
def P697775053490384792.Spec : Prop :=
  ∀ n, P697775053490384792.a n = (A177074 (n + 1) : ℚ)

end A177074

/-!
# A177075: a(n) = n^5 - n^3 - 2*n^2 + 1.

The programs for A177075, the canonical program `A177075.P16499185338141625789` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177075 has offset 0).

The definition of A177075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^3-2*n²+1` (program `A177075.P16499185338141625789`, by `A177075.P16499185338141625789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177075.P16499185338141625789

`n^5-n^3-2*n²+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177075

/-- `n^5-n^3-2*n²+1` -/
def P16499185338141625789.Spec : Prop :=
  ∀ n, P16499185338141625789.a n = A177075 n

theorem P16499185338141625789.correct : P16499185338141625789.Spec := by
  intro n
  simp only [A177075]

end A177075

/-! ## A177075.P7608093853187649027

`xor(1, A133070(n)-n²)`
-/

namespace A177075.P7608093853187649027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A133070 n - (n ^ 2 : ℤ))

end

end A177075.P7608093853187649027

namespace A177075

/-- `xor(1, A133070(n)-n²)` -/
def P7608093853187649027.Spec : Prop :=
  ∀ n, P7608093853187649027.a n = A177075 n

end A177075

/-! ## A177075.P9758153619996335428

`or(1, A133754(n)-A056220(n))`
-/

namespace A177075.P9758153619996335428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133754 n - A056220 n)

end

end A177075.P9758153619996335428

namespace A177075

/-- `or(1, A133754(n)-A056220(n))` -/
def P9758153619996335428.Spec : Prop :=
  ∀ n, P9758153619996335428.a n = A177075 n

end A177075

/-! ## A177075.P10160965099844783648

`(A133754(n)-A056220(n))%A016889(n)`
-/

namespace A177075.P10160965099844783648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133754 n - A056220 n) (A016889 n)

end

end A177075.P10160965099844783648

namespace A177075

/-- `(A133754(n)-A056220(n))%A016889(n)` -/
def P10160965099844783648.Spec : Prop :=
  ∀ n, P10160965099844783648.a n = A177075 n

end A177075

/-! ## A177075.P6012977651607103000

`(A133754(n)-A056220(n))*A007318(and(3, -n)!)`
-/

namespace A177075.P6012977651607103000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133754 n - A056220 n) * A007318 (Nat.factorial (Int.land 3 (-(n : ℤ))).toNat)

end

end A177075.P6012977651607103000

namespace A177075

/-- `(A133754(n)-A056220(n))*A007318(and(3, -n)!)` -/
def P6012977651607103000.Spec : Prop :=
  ∀ n, P6012977651607103000.a n = A177075 n

end A177075

/-! ## A177075.P3138490213460413778

`(A133754(n)-A056220(n))*A001222(A215848(n+2))`
-/

namespace A177075.P3138490213460413778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133754 n - A056220 n) * A001222 (A215848 (n + 2)).toNat

end

end A177075.P3138490213460413778

namespace A177075

/-- `(A133754(n)-A056220(n))*A001222(A215848(n+2))` -/
def P3138490213460413778.Spec : Prop :=
  ∀ n, P3138490213460413778.a n = A177075 n

end A177075

/-! ## A177075.P9740818799300022982

`(A133754(n)-A056220(n))*A001222(A002476(n+1))`
-/

namespace A177075.P9740818799300022982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133754 n - A056220 n) * A001222 (A002476 (n + 1)).toNat

end

end A177075.P9740818799300022982

namespace A177075

/-- `(A133754(n)-A056220(n))*A001222(A002476(n+1))` -/
def P9740818799300022982.Spec : Prop :=
  ∀ n, P9740818799300022982.a n = A177075 n

end A177075

/-! ## A177075.P11911489078620910811

`(A133754(n)-A056220(n))*A007318(2*A285982(3*n))`
-/

namespace A177075.P11911489078620910811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133754 n - A056220 n) * A007318 (2 * A285982 (3 * n)).toNat

end

end A177075.P11911489078620910811

namespace A177075

/-- `(A133754(n)-A056220(n))*A007318(2*A285982(3*n))` -/
def P11911489078620910811.Spec : Prop :=
  ∀ n, P11911489078620910811.a n = A177075 n

end A177075

/-! ## A177075.P12696030217985431894

`(A133754(n)-A056220(n))*A014963(A008458(n))`
-/

namespace A177075.P12696030217985431894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133754 n - A056220 n) * A014963 (A008458 n).toNat

end

end A177075.P12696030217985431894

namespace A177075

/-- `(A133754(n)-A056220(n))*A014963(A008458(n))` -/
def P12696030217985431894.Spec : Prop :=
  ∀ n, P12696030217985431894.a n = A177075 n

end A177075

/-! ## A177075.P10293607960943669068

`(A133754(n)-A056220(n))*A001222(A074822(n+1))`
-/

namespace A177075.P10293607960943669068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133754 n - A056220 n) * A001222 (A074822 (n + 1)).toNat

end

end A177075.P10293607960943669068

namespace A177075

/-- `(A133754(n)-A056220(n))*A001222(A074822(n+1))` -/
def P10293607960943669068.Spec : Prop :=
  ∀ n, P10293607960943669068.a n = A177075 n

end A177075

/-! ## A177075.P13152823701350477850

`(A133754(n)-A056220(n))*A007318(∑[n])`
-/

namespace A177075.P13152823701350477850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133754 n - A056220 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177075.P13152823701350477850

namespace A177075

/-- `(A133754(n)-A056220(n))*A007318(∑[n])` -/
def P13152823701350477850.Spec : Prop :=
  ∀ n, P13152823701350477850.a n = A177075 n

end A177075

/-! ## A177075.P14025342045683244901

`(A133754(n)-A056220(n))^A014963(∑[n+1])`
-/

namespace A177075.P14025342045683244901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133754 n - A056220 n : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A177075.P14025342045683244901

namespace A177075

/-- `(A133754(n)-A056220(n))^A014963(∑[n+1])` -/
def P14025342045683244901.Spec : Prop :=
  ∀ n, P14025342045683244901.a n = (A177075 n : ℚ)

end A177075

/-!
# A177076: Primes of the form k^5 - k^3 - 2*k^2 + 1.

The programs for A177076, there is no canonical definition to state claims against.
-/

/-! ## A177076.P6211437311772478757

`p?[n^5-n^3-2*n²+1]`
-/

namespace A177076.P6211437311772478757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℤ) - (n ^ 3 : ℤ) - (2 * n ^ 2 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177076.P6211437311772478757

/-! ## A177076.P5335122492088692777

`or(1, p?[A177075(n)])`
-/

namespace A177076.P5335122492088692777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A177076.P5335122492088692777

/-! ## A177076.P1461240431858732394

`∏{d}[p?[A177075(n+1)], #]`
-/

namespace A177076.P1461240431858732394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177075 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A177076.P1461240431858732394

/-!
# A177077: Primes of the form 5*x^2 - 2*y^2, where x and y are successive natural numbers.

The programs for A177077, there is no canonical definition to state claims against.
-/

/-! ## A177077.P9230225989590760524

`p?[n*(3*n+2)-3]`
-/

namespace A177077.P9230225989590760524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 2) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177077.P9230225989590760524

/-! ## A177077.P3012148095489838409

`∏{d}[p?[A045944(n)-3], #]`
-/

namespace A177077.P3012148095489838409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A177077.P3012148095489838409

/-! ## A177077.P10816826081212184260

`lcm(3, p?[A056109(n)-4])/3`
-/

namespace A177077.P10816826081212184260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 3

end

end A177077.P10816826081212184260

/-! ## A177077.P7204369026010350960

`abs(p?[A056109(n+1)-4]-1)+1`
-/

namespace A177077.P7204369026010350960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A177077.P7204369026010350960

/-! ## A177077.P8153052804592147890

`A007318(C(2, n))*p?[A045944(n)-3]`
-/

namespace A177077.P8153052804592147890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177077.P8153052804592147890

/-! ## A177077.P3739699645524467158

`A007318(and(1, -n))*p?[A045944(n)-3]`
-/

namespace A177077.P3739699645524467158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177077.P3739699645524467158

/-! ## A177077.P7086410395205386326

`A000045(C(2, n))!*p?[A056109(n)-4]`
-/

namespace A177077.P7086410395205386326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000045 (Nat.choose 2 n)).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177077.P7086410395205386326

/-! ## A177077.P5148136586126257139

`p?[A045944(n)-3]^(A000040(n+2)%2)`
-/

namespace A177077.P5148136586126257139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (Int.tmod (A000040 (n + 2)) 2 : ℤ)

end

end A177077.P5148136586126257139

/-! ## A177077.P9621394354669608038

`p?[A045944(n)-3]/A000108(C(2, n+2))`
-/

namespace A177077.P9621394354669608038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A177077.P9621394354669608038

/-! ## A177077.P10120000496994097374

`or(A000040(n+1)%2, p?[A045944(n)-3])`
-/

namespace A177077.P10120000496994097374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A000040 (n + 1)) 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A177077.P10120000496994097374

/-!
# A177078: Central polygonal-free numbers.

The programs for A177078, there is no canonical definition to state claims against.
-/

/-! ## A177078.P13138985584280543286

`lt[1, ∏{d}[n, A208748(#)]]`
-/

namespace A177078.P13138985584280543286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), A208748 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177078.P13138985584280543286

/-! ## A177078.P9829510120987524343

`lt[1, ∏{p}[n, A265882(#)]]`
-/

namespace A177078.P9829510120987524343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A265882 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177078.P9829510120987524343

/-! ## A177078.P11201835592835313237

`record[(2*n+3)*A187074(A261049(n))]`
-/

namespace A177078.P11201835592835313237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A187074 (A261049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177078.P11201835592835313237

/-! ## A177078.P12023009864577724114

`lt[A283484(A094999(n+1)), A046205(n+1)]`
-/

namespace A177078.P12023009864577724114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283484 (A094999 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177078.P12023009864577724114

/-! ## A177078.P458226088280385343

`ceil(∑[ratio[A288821(2*n+1)]])`
-/

namespace A177078.P458226088280385343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288821 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A177078.P458226088280385343

/-!
# A177079: a(n) = 5*(10^n - 3).

The programs for A177079, the canonical program `A177079.P2376175718702476342` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177079 has offset 1).

The definition of A177079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(10^(n+1)-3)` (program `A177079.P2376175718702476342`, by `A177079.P2376175718702476342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177079.P2376175718702476342

`5*(10^(n+1)-3)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177079

/-- `5*(10^(n+1)-3)` -/
def P2376175718702476342.Spec : Prop :=
  ∀ n, P2376175718702476342.a n = A177079 (n + 1)

theorem P2376175718702476342.correct : P2376175718702476342.Spec := by
  intro n
  simp only [A177079, Nat.add_sub_cancel]

end A177079

/-! ## A177079.P17614013980333250862

`11*a(n-1)-10*a(n-2)` with `a(0)=35, a(1)=485`
-/

namespace A177079.P17614013980333250862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [35, 485] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A177079.P17614013980333250862

namespace A177079

/-- `11*a(n-1)-10*a(n-2)` -/
def P17614013980333250862.Spec : Prop :=
  ∀ n, P17614013980333250862.a n = A177079 (n + 1)

theorem P17614013980333250862.correct : P17614013980333250862.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A177079, Nat.add_sub_cancel, A177079.P17614013980333250862.a, A177079.P2376175718702476342.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A177079, Nat.add_sub_cancel, A177079.P17614013980333250862.a, A177079.P2376175718702476342.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177079

/-! ## A177079.P8807657360039337436

`lcm(5, 3-10^(n+1))`
-/

namespace A177079.P8807657360039337436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (3 - (10 ^ (n + 1) : ℤ))

end

end A177079.P8807657360039337436

namespace A177079

/-- `lcm(5, 3-10^(n+1))` -/
def P8807657360039337436.Spec : Prop :=
  ∀ n, (P8807657360039337436.a n : ℤ) = A177079 (n + 1)

end A177079

/-! ## A177079.P10441420084492899326

`A177096(n+1)-5`
-/

namespace A177079.P10441420084492899326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177096 (n + 1) - 5

end

end A177079.P10441420084492899326

namespace A177079

/-- `A177096(n+1)-5` -/
def P10441420084492899326.Spec : Prop :=
  ∀ n, P10441420084492899326.a n = A177079 (n + 1)

end A177079

/-! ## A177079.P15253463492686226680

`3*A205086(n)+2`
-/

namespace A177079.P15253463492686226680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A205086 n + 2

end

end A177079.P15253463492686226680

namespace A177079

/-- `3*A205086(n)+2` -/
def P15253463492686226680.Spec : Prop :=
  ∀ n, P15253463492686226680.a n = A177079 (n + 1)

end A177079

/-! ## A177079.P2393449487095906725

`A086949(n+1)-6`
-/

namespace A177079.P2393449487095906725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086949 (n + 1) - 6

end

end A177079.P2393449487095906725

namespace A177079

/-- `A086949(n+1)-6` -/
def P2393449487095906725.Spec : Prop :=
  ∀ n, P2393449487095906725.a n = A177079 (n + 1)

end A177079

/-! ## A177079.P2205772980126969876

`A086944(n+1)-7`
-/

namespace A177079.P2205772980126969876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086944 (n + 1) - 7

end

end A177079.P2205772980126969876

namespace A177079

/-- `A086944(n+1)-7` -/
def P2205772980126969876.Spec : Prop :=
  ∀ n, P2205772980126969876.a n = A177079 (n + 1)

end A177079

/-! ## A177079.P6705955423392670673

`5*A086946(n+1)/2`
-/

namespace A177079.P6705955423392670673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A086946 (n + 1) : ℚ) / 2

end

end A177079.P6705955423392670673

namespace A177079

/-- `5*A086946(n+1)/2` -/
def P6705955423392670673.Spec : Prop :=
  ∀ n, P6705955423392670673.a n = (A177079 (n + 1) : ℚ)

end A177079

/-! ## A177079.P7752658389816460704

`abs(5*(A002283(n+1)-2))`
-/

namespace A177079.P7752658389816460704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * (A002283 (n + 1) - 2)|

end

end A177079.P7752658389816460704

namespace A177079

/-- `abs(5*(A002283(n+1)-2))` -/
def P7752658389816460704.Spec : Prop :=
  ∀ n, P7752658389816460704.a n = A177079 (n + 1)

end A177079

/-! ## A177079.P12845776570437336101

`A177108(n+1)+A173833(n+1)`
-/

namespace A177079.P12845776570437336101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177108 (n + 1) + A173833 (n + 1)

end

end A177079.P12845776570437336101

namespace A177079

/-- `A177108(n+1)+A173833(n+1)` -/
def P12845776570437336101.Spec : Prop :=
  ∀ n, P12845776570437336101.a n = A177079 (n + 1)

end A177079

/-!
# A177080: a(n) = 5*(10^n-7).

The programs for A177080, the canonical program `A177080.P12790948939987005441` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177080 has offset 1).

The definition of A177080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(10^(n+1)-7)` (program `A177080.P12790948939987005441`, by `A177080.P12790948939987005441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177080.P12790948939987005441

`5*(10^(n+1)-7)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177080

/-- `5*(10^(n+1)-7)` -/
def P12790948939987005441.Spec : Prop :=
  ∀ n, P12790948939987005441.a n = A177080 (n + 1)

theorem P12790948939987005441.correct : P12790948939987005441.Spec := by
  intro n
  simp only [A177080, Nat.add_sub_cancel]

end A177080

/-! ## A177080.P16558944798721485793

`lcm(5, 7-10^(n+1))`
-/

namespace A177080.P16558944798721485793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (7 - (10 ^ (n + 1) : ℤ))

end

end A177080.P16558944798721485793

namespace A177080

/-- `lcm(5, 7-10^(n+1))` -/
def P16558944798721485793.Spec : Prop :=
  ∀ n, (P16558944798721485793.a n : ℤ) = A177080 (n + 1)

end A177080

/-! ## A177080.P4525735299891186290

`∑[lcm(9, 10*a(n-1))]` with `a(0)=15`
-/

namespace A177080.P4525735299891186290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  Nat.lcm 9 (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177080.P4525735299891186290

namespace A177080

/-- `∑[lcm(9, 10*a(n-1))]` -/
def P4525735299891186290.Spec : Prop :=
  ∀ n, (P4525735299891186290.a n : ℤ) = A177080 (n + 1)

end A177080

/-! ## A177080.P2665674951848808675

`A177079(n+1)-20`
-/

namespace A177080.P2665674951848808675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177079 (n + 1) - 20

end

end A177080.P2665674951848808675

namespace A177080

/-- `A177079(n+1)-20` -/
def P2665674951848808675.Spec : Prop :=
  ∀ n, P2665674951848808675.a n = A177080 (n + 1)

end A177080

/-! ## A177080.P13645201421129370984

`A177096(n+1)-25`
-/

namespace A177080.P13645201421129370984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177096 (n + 1) - 25

end

end A177080.P13645201421129370984

namespace A177080

/-- `A177096(n+1)-25` -/
def P13645201421129370984.Spec : Prop :=
  ∀ n, P13645201421129370984.a n = A177080 (n + 1)

end A177080

/-! ## A177080.P18167625378222962174

`Δ[A173802(n+1)]-35`
-/

namespace A177080.P18167625378222962174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 35

end

end A177080.P18167625378222962174

namespace A177080

/-- `Δ[A173802(n+1)]-35` -/
def P18167625378222962174.Spec : Prop :=
  ∀ n, P18167625378222962174.a n = A177080 (n + 1)

end A177080

/-! ## A177080.P13795763563242867551

`5*A175237(n+1)/2`
-/

namespace A177080.P13795763563242867551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A175237 (n + 1) : ℚ) / 2

end

end A177080.P13795763563242867551

namespace A177080

/-- `5*A175237(n+1)/2` -/
def P13795763563242867551.Spec : Prop :=
  ∀ n, P13795763563242867551.a n = (A177080 (n + 1) : ℚ)

end A177080

/-! ## A177080.P8816679139188022838

`5*A177107(n+1)/3`
-/

namespace A177080.P8816679139188022838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A177107 (n + 1) : ℚ) / 3

end

end A177080.P8816679139188022838

namespace A177080

/-- `5*A177107(n+1)/3` -/
def P8816679139188022838.Spec : Prop :=
  ∀ n, P8816679139188022838.a n = (A177080 (n + 1) : ℚ)

end A177080

/-! ## A177080.P1006427936712086982

`5*A177112(n+1)/4`
-/

namespace A177080.P1006427936712086982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A177112 (n + 1) : ℚ) / 4

end

end A177080.P1006427936712086982

namespace A177080

/-- `5*A177112(n+1)/4` -/
def P1006427936712086982.Spec : Prop :=
  ∀ n, P1006427936712086982.a n = (A177080 (n + 1) : ℚ)

end A177080

/-!
# A177082: a(n) = 2*n*A071148(n).

The programs for A177082, the canonical program `A177082.P1291897975373638475` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177082 has offset 1).

The definition of A177082 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071148, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177082.P1291897975373638475

`2*(n+1)*A071148(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A177082

/-- `2*(n+1)*A071148(n+1)` -/
def P1291897975373638475.Spec : Prop :=
  ∀ n, P1291897975373638475.a n = A177082 (n + 1)

theorem P1291897975373638475.correct : P1291897975373638475.Spec := by
  intro n
  simp only [A177082, Nat.add_sub_cancel]

end A177082

/-! ## A177082.P9823888906080913967

`2*(n+1)*∑[p?[2*n+1]]`
-/

namespace A177082.P9823888906080913967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A177082.P9823888906080913967

namespace A177082

/-- `2*(n+1)*∑[p?[2*n+1]]` -/
def P9823888906080913967.Spec : Prop :=
  ∀ n, (P9823888906080913967.a n : ℤ) = A177082 (n + 1)

end A177082

/-! ## A177082.P2303012533674368612

`A005843(n+1)*∑[A065091(n+1)]`
-/

namespace A177082.P2303012533674368612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177082.P2303012533674368612

namespace A177082

/-- `A005843(n+1)*∑[A065091(n+1)]` -/
def P2303012533674368612.Spec : Prop :=
  ∀ n, P2303012533674368612.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P17281336275679175465

`(n+1)*∑[A100484(n+2)]`
-/

namespace A177082.P17281336275679175465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177082.P17281336275679175465

namespace A177082

/-- `(n+1)*∑[A100484(n+2)]` -/
def P17281336275679175465.Spec : Prop :=
  ∀ n, P17281336275679175465.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P9971290832104857011

`(n+1)*∑[A037168(n+2)+2]`
-/

namespace A177082.P9971290832104857011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177082.P9971290832104857011

namespace A177082

/-- `(n+1)*∑[A037168(n+2)+2]` -/
def P9971290832104857011.Spec : Prop :=
  ∀ n, P9971290832104857011.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P700215710683238503

`2*(n+1)*∑[A000040(n+2)]`
-/

namespace A177082.P700215710683238503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A177082.P700215710683238503

namespace A177082

/-- `2*(n+1)*∑[A000040(n+2)]` -/
def P700215710683238503.Spec : Prop :=
  ∀ n, P700215710683238503.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P17093793784723135830

`(A237589(n+2)-1)*2*(n+1)`
-/

namespace A177082.P17093793784723135830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237589 (n + 2) - 1) * (2 * (n + 1) : ℤ)

end

end A177082.P17093793784723135830

namespace A177082

/-- `(A237589(n+2)-1)*2*(n+1)` -/
def P17093793784723135830.Spec : Prop :=
  ∀ n, P17093793784723135830.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P11350166441173381649

`∑[A000040(n+2)]*A004277(n+1)`
-/

namespace A177082.P11350166441173381649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A004277 (n + 1)

end

end A177082.P11350166441173381649

namespace A177082

/-- `∑[A000040(n+2)]*A004277(n+1)` -/
def P11350166441173381649.Spec : Prop :=
  ∀ n, P11350166441173381649.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P1546868949313246531

`∑[A000040(n+2)]*A005843(n+1)`
-/

namespace A177082.P1546868949313246531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005843 (n + 1)

end

end A177082.P1546868949313246531

namespace A177082

/-- `∑[A000040(n+2)]*A005843(n+1)` -/
def P1546868949313246531.Spec : Prop :=
  ∀ n, P1546868949313246531.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P16462635736842151291

`(n+1)*∑[A001747(n+3)]`
-/

namespace A177082.P16462635736842151291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177082.P16462635736842151291

namespace A177082

/-- `(n+1)*∑[A001747(n+3)]` -/
def P16462635736842151291.Spec : Prop :=
  ∀ n, P16462635736842151291.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P1520326479062448259

`2*(n+1)*∑[record[A006530(n+3)]]`
-/

namespace A177082.P1520326479062448259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177082.P1520326479062448259

namespace A177082

/-- `2*(n+1)*∑[record[A006530(n+3)]]` -/
def P1520326479062448259.Spec : Prop :=
  ∀ n, P1520326479062448259.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P6490446212702574801

`∑[A000040(n+2)]*A321220(2*n)`
-/

namespace A177082.P6490446212702574801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A321220 (2 * n)

end

end A177082.P6490446212702574801

namespace A177082

/-- `∑[A000040(n+2)]*A321220(2*n)` -/
def P6490446212702574801.Spec : Prop :=
  ∀ n, P6490446212702574801.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P10709650670125823988

`∑[A116570(2*n+1)]*A005843(n+1)`
-/

namespace A177082.P10709650670125823988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005843 (n + 1)

end

end A177082.P10709650670125823988

namespace A177082

/-- `∑[A116570(2*n+1)]*A005843(n+1)` -/
def P10709650670125823988.Spec : Prop :=
  ∀ n, P10709650670125823988.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P2745999067501791331

`2*(n+1)*∑[record[A093074(n+2)]]`
-/

namespace A177082.P2745999067501791331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177082.P2745999067501791331

namespace A177082

/-- `2*(n+1)*∑[record[A093074(n+2)]]` -/
def P2745999067501791331.Spec : Prop :=
  ∀ n, P2745999067501791331.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P16969101531987606108

`∑[p?[A014681(n+2)]]*2*(n+1)`
-/

namespace A177082.P16969101531987606108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (2 * (n + 1) : ℤ)

end

end A177082.P16969101531987606108

namespace A177082

/-- `∑[p?[A014681(n+2)]]*2*(n+1)` -/
def P16969101531987606108.Spec : Prop :=
  ∀ n, P16969101531987606108.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P13569175857897719842

`∑[p?[A271830(2*n)]]*2*(n+1)`
-/

namespace A177082.P13569175857897719842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271830 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (2 * (n + 1) : ℤ)

end

end A177082.P13569175857897719842

namespace A177082

/-- `∑[p?[A271830(2*n)]]*2*(n+1)` -/
def P13569175857897719842.Spec : Prop :=
  ∀ n, P13569175857897719842.a n = A177082 (n + 1)

end A177082

/-! ## A177082.P10861680871918808611

`∑[A014681(A055670(n+2))]*2*(n+1)`
-/

namespace A177082.P10861680871918808611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A055670 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (2 * (n + 1) : ℤ)

end

end A177082.P10861680871918808611

namespace A177082

/-- `∑[A014681(A055670(n+2))]*2*(n+1)` -/
def P10861680871918808611.Spec : Prop :=
  ∀ n, P10861680871918808611.a n = A177082 (n + 1)

end A177082

/-!
# A177083: A006093(k)-fold repetition of A001248(k), k=1,2,3,..

The programs for A177083, there is no canonical definition to state claims against.
-/

/-! ## A177083.P18223265019122959898

`p?[comp[∑[n]]-n]²`
-/

namespace A177083.P18223265019122959898
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A177083.P18223265019122959898

/-! ## A177083.P17944483357922582981

`p?[comp[∑[n]]-n]^2`
-/

namespace A177083.P17944483357922582981
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A177083.P17944483357922582981

/-! ## A177083.P14403547538262544557

`(p?[round(sqrt(2*n))+1]%17)²`
-/

namespace A177083.P14403547538262544557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 17 ^ 2

end

end A177083.P14403547538262544557

/-! ## A177083.P12893291616555134370

`abs(1-p?[round(sqrt(2*n))+1]²)+1`
-/

namespace A177083.P12893291616555134370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2| + 1

end

end A177083.P12893291616555134370

/-! ## A177083.P4503694711502943121

`A389810(n+1)²`
-/

namespace A177083.P4503694711502943121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389810 (n + 1) ^ 2

end

end A177083.P4503694711502943121

/-!
# A177085: Ceiling(n/3)-abundant numbers.

The programs for A177085, there is no canonical definition to state claims against.
-/

/-! ## A177085.P5014033218590541979

`lt[A008574(A000217(n)), A222804(n)]`
-/

namespace A177085.P5014033218590541979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177085.P5014033218590541979

/-! ## A177085.P4764201502529363808

`lt[A214515(A000124(n)), A222804(n)]`
-/

namespace A177085.P4764201502529363808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214515 (A000124 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177085.P4764201502529363808

/-! ## A177085.P5547785328897828661

`lt[A124966(A324643(n+1)), A222804(n)]`
-/

namespace A177085.P5547785328897828661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (A324643 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177085.P5547785328897828661

/-! ## A177085.P16078172235023684461

`lt[A008458(A167499(n)-n), A222804(n)]`
-/

namespace A177085.P16078172235023684461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A167499 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177085.P16078172235023684461

/-! ## A177085.P5973588650224760532

`lt[A008458(A167499(n)), A222804(n)]`
-/

namespace A177085.P5973588650224760532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A167499 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177085.P5973588650224760532

/-!
# A177086: Semiprimes k that divide Fibonacci(k-1).

The programs for A177086, there is no canonical definition to state claims against.
-/

/-! ## A177086.P10617971706098581452

`filter[A069106(n+1), A354927(#)]`
-/

namespace A177086.P10617971706098581452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A177086.P10617971706098581452

/-! ## A177086.P3237521425135831991

`filter[A069106(n+1), A358680(#)]`
-/

namespace A177086.P3237521425135831991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A177086.P3237521425135831991

/-! ## A177086.P2473705847757405698

`filter[A069106(n+1), A359156(#)]`
-/

namespace A177086.P2473705847757405698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A177086.P2473705847757405698

/-! ## A177086.P851194643704064941

`filter[A069106(n+1), A359170(#)]`
-/

namespace A177086.P851194643704064941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A177086.P851194643704064941

/-! ## A177086.P14628065749356456688

`filter[A069106(n+1), A359370(#)]`
-/

namespace A177086.P14628065749356456688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A177086.P14628065749356456688

/-!
# A177087: Semiprimes of the form n^5-n^3-2*n^2+1.

The programs for A177087, there is no canonical definition to state claims against.
-/

/-! ## A177087.P16414423011672200160

`A177075(A177088(n+1))`
-/

namespace A177087.P16414423011672200160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177075 (A177088 (n + 1)).toNat

end

end A177087.P16414423011672200160

/-!
# A177088: Numbers k such that k^5-k^3-2*k^2+1 is semiprime.

The programs for A177088, there is no canonical definition to state claims against.
-/

/-! ## A177088.P17485439923869151571

`ceil(root(A177087(n+1), 5))`
-/

namespace A177088.P17485439923869151571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A177088.P17485439923869151571

/-! ## A177088.P6976256295546227565

`round(root(A177087(n+1), 5))%A016889(n)`
-/

namespace A177088.P6976256295546227565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))) (A016889 n)

end

end A177088.P6976256295546227565

/-! ## A177088.P1016872098217482435

`A000038(n+1)+round(root(A177087(n+1), 5))`
-/

namespace A177088.P1016872098217482435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + SequenceMachineLib.roundAway ((A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))

end

end A177088.P1016872098217482435

/-! ## A177088.P1430886238580239015

`(A004442(n)-n)²*round(root(A177087(n+1), 5))`
-/

namespace A177088.P1430886238580239015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) ^ 2 * SequenceMachineLib.roundAway ((A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))

end

end A177088.P1430886238580239015

/-! ## A177088.P17764129734580205414

`A005843(round(root(A177087(n+1), 5)))/2`
-/

namespace A177088.P17764129734580205414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat : ℚ) / 2

end

end A177088.P17764129734580205414

/-! ## A177088.P8152339841306855951

`A008486(round(root(A177087(n+1), 5)))/3`
-/

namespace A177088.P8152339841306855951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (SequenceMachineLib.roundAway ((A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat : ℚ) / 3

end

end A177088.P8152339841306855951

/-! ## A177088.P17938637034671422102

`A008574(round(root(A177087(n+1), 5)))/4`
-/

namespace A177088.P17938637034671422102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (SequenceMachineLib.roundAway ((A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat : ℚ) / 4

end

end A177088.P17938637034671422102

/-! ## A177088.P7458292236864820124

`A020985(4*n)²*round(root(A177087(n+1), 5))`
-/

namespace A177088.P7458292236864820124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (4 * n) ^ 2 * SequenceMachineLib.roundAway ((A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))

end

end A177088.P7458292236864820124

/-! ## A177088.P17177489403089010863

`A004526(2*round(root(A177087(n+1), 5)))`
-/

namespace A177088.P17177489403089010863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * SequenceMachineLib.roundAway ((A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A177088.P17177489403089010863

/-! ## A177088.P8577798803881121773

`A110654(2*round(root(A177087(n+1), 5)))`
-/

namespace A177088.P8577798803881121773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * SequenceMachineLib.roundAway ((A177087 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A177088.P8577798803881121773

/-!
# A177089: Numbers k >= 0 such that k^3-k-1 is not prime.

The programs for A177089, there is no canonical definition to state claims against.
-/

/-! ## A177089.P11336859526125026826

`comp[A126421(n+1)]`
-/

namespace A177089.P11336859526125026826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177089.P11336859526125026826

/-! ## A177089.P14826164747747645728

`eq[0, char[A126421(A324343(n))]]`
-/

namespace A177089.P14826164747747645728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (A324343 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177089.P14826164747747645728

/-! ## A177089.P2900022032133071653

`eq[0, char[A126421(A000027(n+1))]]`
-/

namespace A177089.P2900022032133071653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (A000027 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177089.P2900022032133071653

/-! ## A177089.P4069961724828057776

`eq[char[A126421(n+1)], A000038(n+1)]`
-/

namespace A177089.P4069961724828057776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177089.P4069961724828057776

/-! ## A177089.P12896474191271072133

`eq[char[A126421(n+1)], A000007(n+1)]`
-/

namespace A177089.P12896474191271072133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177089.P12896474191271072133

/-!
# A177090: a(n) = a(n-1) + 12*100^(n-1), with a(0)=0.

The programs for A177090, the canonical program `A177090.P6102995099638247390` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177090 has offset 0).

The definition of A177090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177090.P1112086168251024951

`a(n-1)+12*100^(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177090.P1112086168251024951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 12 * (100 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A177090.P1112086168251024951

namespace A177090

/-- `a(n-1)+12*100^(n-1)` -/
def P1112086168251024951.Spec : Prop :=
  ∀ n, P1112086168251024951.a n = (A177090 n : ℚ)

end A177090

/-! ## A177090.P6102995099638247390

`101*a(n-1)-100*a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177090

/-- `101*a(n-1)-100*a(n-2)` -/
def P6102995099638247390.Spec : Prop :=
  ∀ n, P6102995099638247390.a n = A177090 n

theorem P6102995099638247390.correct : P6102995099638247390.Spec := by
  intro n
  simp only [A177090]

end A177090

/-! ## A177090.P15473946066187793763

`4*(25*a(n-1)+3)` with `a(0)=0`
-/

namespace A177090.P15473946066187793763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * (25 * a (n - 1) + 3)

end

end A177090.P15473946066187793763

namespace A177090

/-- `4*(25*a(n-1)+3)` -/
def P15473946066187793763.Spec : Prop :=
  ∀ n, (P15473946066187793763.a n : ℤ) = A177090 n

end A177090

/-! ## A177090.P7753010699764111560

`∑[12*A178501(n)²]`
-/

namespace A177090.P7753010699764111560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A178501 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177090.P7753010699764111560

namespace A177090

/-- `∑[12*A178501(n)²]` -/
def P7753010699764111560.Spec : Prop :=
  ∀ n, P7753010699764111560.a n = A177090 n

end A177090

/-! ## A177090.P17980913832018877991

`floor(A099913(2*n)/2)`
-/

namespace A177090.P17980913832018877991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099913 (2 * n) : ℚ) / 2⌋

end

end A177090.P17980913832018877991

namespace A177090

/-- `floor(A099913(2*n)/2)` -/
def P17980913832018877991.Spec : Prop :=
  ∀ n, P17980913832018877991.a n = A177090 n

end A177090

/-! ## A177090.P16328608820525168042

`12*A002275(2*n)/11`
-/

namespace A177090.P16328608820525168042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * ((A002275 (2 * n) : ℚ) / 11)

end

end A177090.P16328608820525168042

namespace A177090

/-- `12*A002275(2*n)/11` -/
def P16328608820525168042.Spec : Prop :=
  ∀ n, P16328608820525168042.a n = (A177090 n : ℚ)

end A177090

/-! ## A177090.P11439469175353643162

`∑[A090019(n)*A093136(n)]-1`
-/

namespace A177090.P11439469175353643162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n * A093136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A177090.P11439469175353643162

namespace A177090

/-- `∑[A090019(n)*A093136(n)]-1` -/
def P11439469175353643162.Spec : Prop :=
  ∀ n, P11439469175353643162.a n = A177090 n

end A177090

/-! ## A177090.P17734963712141095316

`A002276(2*n)-A056830(2*n)`
-/

namespace A177090.P17734963712141095316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (2 * n) - A056830 (2 * n)

end

end A177090.P17734963712141095316

namespace A177090

/-- `A002276(2*n)-A056830(2*n)` -/
def P17734963712141095316.Spec : Prop :=
  ∀ n, P17734963712141095316.a n = A177090 n

end A177090

/-! ## A177090.P6892364215750122599

`2*A002275(2*n)-A056830(2*n)`
-/

namespace A177090.P6892364215750122599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002275 (2 * n) - A056830 (2 * n)

end

end A177090.P6892364215750122599

namespace A177090

/-- `2*A002275(2*n)-A056830(2*n)` -/
def P6892364215750122599.Spec : Prop :=
  ∀ n, P6892364215750122599.a n = A177090 n

end A177090

/-! ## A177090.P11169462249001127638

`floor(A137466(n)/10)`
-/

namespace A177090.P11169462249001127638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137466 n : ℚ) / 10⌋

end

end A177090.P11169462249001127638

namespace A177090

/-- `floor(A137466(n)/10)` -/
def P11169462249001127638.Spec : Prop :=
  ∀ n, P11169462249001127638.a n = A177090 n

end A177090

/-!
# A177091: Numbers k such that k^4-k-1 is composite.

The programs for A177091, there is no canonical definition to state claims against.
-/

/-! ## A177091.P8381392298639105009

`eq[char[A126424(n+1)], A130706(n)]`
-/

namespace A177091.P8381392298639105009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177091.P8381392298639105009

/-! ## A177091.P11501120147514372538

`eq[char[A126424(n+1)], A130779(n)]`
-/

namespace A177091.P11501120147514372538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177091.P11501120147514372538

/-! ## A177091.P3799532242408314588

`eq[char[A126424(n+1)], A169585(n)]`
-/

namespace A177091.P3799532242408314588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177091.P3799532242408314588

/-! ## A177091.P855914926216330042

`eq[char[A126424(n+1)], A019590(n+1)]`
-/

namespace A177091.P855914926216330042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177091.P855914926216330042

/-! ## A177091.P12441859595147144456

`eq[char[A126424(n+1)], A154955(n+1)]`
-/

namespace A177091.P12441859595147144456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177091.P12441859595147144456

/-!
# A177092: Primes p such that 11*p + 2 is also prime.

The programs for A177092, the canonical program `A177092.P4641529934415487522` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177092 has offset 1).

The definition of A177092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177092.P4641529934415487522

`p?[A111312(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A177092

/-- `p?[A111312(n+1)]` -/
def P4641529934415487522.Spec : Prop :=
  ∀ n, P4641529934415487522.a n = A177092 (n + 1)

theorem P4641529934415487522.correct : P4641529934415487522.Spec := by
  intro n
  simp only [A177092, Nat.add_sub_cancel]

end A177092

/-! ## A177092.P14038776810573241358

`p?[A102721(n+1)+1]`
-/

namespace A177092.P14038776810573241358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102721 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177092.P14038776810573241358

namespace A177092

/-- `p?[A102721(n+1)+1]` -/
def P14038776810573241358.Spec : Prop :=
  ∀ n, P14038776810573241358.a n = A177092 (n + 1)

end A177092

/-! ## A177092.P16749638538939484920

`p?[A106690(n+1)-9]`
-/

namespace A177092.P16749638538939484920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106690 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177092.P16749638538939484920

namespace A177092

/-- `p?[A106690(n+1)-9]` -/
def P16749638538939484920.Spec : Prop :=
  ∀ n, P16749638538939484920.a n = A177092 (n + 1)

end A177092

/-! ## A177092.P5682247035456277786

`∩[A002476(n+1), A111312(n+1)]`
-/

namespace A177092.P5682247035456277786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P5682247035456277786

namespace A177092

/-- `∩[A002476(n+1), A111312(n+1)]` -/
def P5682247035456277786.Spec : Prop :=
  ∀ n, (P5682247035456277786.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P7935609901028065607

`∩[A007645(n+1), A111312(n+1)]`
-/

namespace A177092.P7935609901028065607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P7935609901028065607

namespace A177092

/-- `∩[A007645(n+1), A111312(n+1)]` -/
def P7935609901028065607.Spec : Prop :=
  ∀ n, (P7935609901028065607.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P7333241539700673592

`∩[A040116(n+1), A111312(n+1)]`
-/

namespace A177092.P7333241539700673592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P7333241539700673592

namespace A177092

/-- `∩[A040116(n+1), A111312(n+1)]` -/
def P7333241539700673592.Spec : Prop :=
  ∀ n, (P7333241539700673592.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P2013314179026298519

`∩[A045331(n+1), A111312(n+1)]`
-/

namespace A177092.P2013314179026298519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P2013314179026298519

namespace A177092

/-- `∩[A045331(n+1), A111312(n+1)]` -/
def P2013314179026298519.Spec : Prop :=
  ∀ n, (P2013314179026298519.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P6350970387144482460

`∩[A045346(n+1), A111312(n+1)]`
-/

namespace A177092.P6350970387144482460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P6350970387144482460

namespace A177092

/-- `∩[A045346(n+1), A111312(n+1)]` -/
def P6350970387144482460.Spec : Prop :=
  ∀ n, (P6350970387144482460.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P3828827716890886522

`∩[A045348(n+1), A111312(n+1)]`
-/

namespace A177092.P3828827716890886522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P3828827716890886522

namespace A177092

/-- `∩[A045348(n+1), A111312(n+1)]` -/
def P3828827716890886522.Spec : Prop :=
  ∀ n, (P3828827716890886522.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P13625530230586158562

`∩[A045371(n+1), A111312(n+1)]`
-/

namespace A177092.P13625530230586158562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P13625530230586158562

namespace A177092

/-- `∩[A045371(n+1), A111312(n+1)]` -/
def P13625530230586158562.Spec : Prop :=
  ∀ n, (P13625530230586158562.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P17409877029856156204

`∩[A045375(n+1), A111312(n+1)]`
-/

namespace A177092.P17409877029856156204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P17409877029856156204

namespace A177092

/-- `∩[A045375(n+1), A111312(n+1)]` -/
def P17409877029856156204.Spec : Prop :=
  ∀ n, (P17409877029856156204.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P16192390017354502134

`∩[A049591(n+1), A111312(n+1)]`
-/

namespace A177092.P16192390017354502134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P16192390017354502134

namespace A177092

/-- `∩[A049591(n+1), A111312(n+1)]` -/
def P16192390017354502134.Spec : Prop :=
  ∀ n, (P16192390017354502134.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P11336341356128070187

`∩[A053176(n+1), A111312(n+1)]`
-/

namespace A177092.P11336341356128070187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P11336341356128070187

namespace A177092

/-- `∩[A053176(n+1), A111312(n+1)]` -/
def P11336341356128070187.Spec : Prop :=
  ∀ n, (P11336341356128070187.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P8003596680635179025

`∩[A067774(n+1), A111312(n+1)]`
-/

namespace A177092.P8003596680635179025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P8003596680635179025

namespace A177092

/-- `∩[A067774(n+1), A111312(n+1)]` -/
def P8003596680635179025.Spec : Prop :=
  ∀ n, (P8003596680635179025.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P7564592781360459547

`∩[A111312(n+1), A138645(n+1)]`
-/

namespace A177092.P7564592781360459547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P7564592781360459547

namespace A177092

/-- `∩[A111312(n+1), A138645(n+1)]` -/
def P7564592781360459547.Spec : Prop :=
  ∀ n, (P7564592781360459547.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P11568993226944217943

`∩[A111312(n+1), A140557(n+1)]`
-/

namespace A177092.P11568993226944217943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P11568993226944217943

namespace A177092

/-- `∩[A111312(n+1), A140557(n+1)]` -/
def P11568993226944217943.Spec : Prop :=
  ∀ n, (P11568993226944217943.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P14965005962765663865

`∩[A111312(n+1), A140562(n+1)]`
-/

namespace A177092.P14965005962765663865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P14965005962765663865

namespace A177092

/-- `∩[A111312(n+1), A140562(n+1)]` -/
def P14965005962765663865.Spec : Prop :=
  ∀ n, (P14965005962765663865.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P11128168412351555882

`∩[A111312(n+1), A140563(n+1)]`
-/

namespace A177092.P11128168412351555882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P11128168412351555882

namespace A177092

/-- `∩[A111312(n+1), A140563(n+1)]` -/
def P11128168412351555882.Spec : Prop :=
  ∀ n, (P11128168412351555882.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P1313175574095801446

`∩[A111312(n+1), A167464(n+1)]`
-/

namespace A177092.P1313175574095801446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P1313175574095801446

namespace A177092

/-- `∩[A111312(n+1), A167464(n+1)]` -/
def P1313175574095801446.Spec : Prop :=
  ∀ n, (P1313175574095801446.a n : ℤ) = A177092 (n + 1)

end A177092

/-! ## A177092.P13115568864168978933

`∩[A111312(n+1), A279815(n+1)]`
-/

namespace A177092.P13115568864168978933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177092.P13115568864168978933

namespace A177092

/-- `∩[A111312(n+1), A279815(n+1)]` -/
def P13115568864168978933.Spec : Prop :=
  ∀ n, (P13115568864168978933.a n : ℤ) = A177092 (n + 1)

end A177092

/-!
# A177093: Numbers k such that 9^k - 8 is prime.

The programs for A177093, there is no canonical definition to state claims against.
-/

/-! ## A177093.P4455541357299531927

`record[A273943(A217135(n+1))]`
-/

namespace A177093.P4455541357299531927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A217135 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177093.P4455541357299531927

/-! ## A177093.P18024064916694051414

`record[A025480(A217135(n+2))]`
-/

namespace A177093.P18024064916694051414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A217135 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177093.P18024064916694051414

/-! ## A177093.P15908330881145359132

`A353846(A001359(n+2))+A007097(n)`
-/

namespace A177093.P15908330881145359132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A001359 (n + 2)).toNat + A007097 n

end

end A177093.P15908330881145359132

/-!
# A177094: Primes of the form 3^(2n) - 8.

The programs for A177094, there is no canonical definition to state claims against.
-/

/-! ## A177094.P16177112260763665667

`A177095(A177093(n+1))`
-/

namespace A177094.P16177112260763665667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177095 (A177093 (n + 1)).toNat

end

end A177094.P16177112260763665667

/-!
# A177095: a(n) = 9^n - 8.

The programs for A177095, the canonical program `A177095.P10817407672384683760` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177095 has offset 1).

The definition of A177095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^(n+1)-8` (program `A177095.P10817407672384683760`, by `A177095.P10817407672384683760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177095.P10817407672384683760

`9^(n+1)-8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177095

/-- `9^(n+1)-8` -/
def P10817407672384683760.Spec : Prop :=
  ∀ n, P10817407672384683760.a n = A177095 (n + 1)

theorem P10817407672384683760.correct : P10817407672384683760.Spec := by
  intro n
  simp only [A177095, Nat.add_sub_cancel]

end A177095

/-! ## A177095.P2648121758168294813

`∑[9*a(n-1)]` with `a(0)=1, a(1)=72`
-/

namespace A177095.P2648121758168294813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 72] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177095.P2648121758168294813

namespace A177095

/-- `∑[9*a(n-1)]` -/
def P2648121758168294813.Spec : Prop :=
  ∀ n, (P2648121758168294813.a n : ℤ) = A177095 (n + 1)

end A177095

/-! ## A177095.P9630066205350198099

`record[9^abs(1-n)-8]`
-/

namespace A177095.P9630066205350198099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177095.P9630066205350198099

namespace A177095

/-- `record[9^abs(1-n)-8]` -/
def P9630066205350198099.Spec : Prop :=
  ∀ n, P9630066205350198099.a n = (A177095 (n + 1) : ℚ)

end A177095

/-! ## A177095.P11206873295390212660

`floor(a(n-1)+8*(a(n-1)+8))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A177095.P11206873295390212660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 8 * (a (n - 1) + 8)

end

end A177095.P11206873295390212660

namespace A177095

/-- `floor(a(n-1)+8*(a(n-1)+8))` -/
def P11206873295390212660.Spec : Prop :=
  ∀ n, (P11206873295390212660.a n : ℤ) = A177095 (n + 1)

theorem P11206873295390212660.correct : P11206873295390212660.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A177095, Nat.add_sub_cancel, A177095.P11206873295390212660.a, A177095.P10817407672384683760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A177095, Nat.add_sub_cancel, A177095.P11206873295390212660.a, A177095.P10817407672384683760.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177095

/-! ## A177095.P15075528037593748897

`abs(7-A024101(n+1))`
-/

namespace A177095.P15075528037593748897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A024101 (n + 1)|

end

end A177095.P15075528037593748897

namespace A177095

/-- `abs(7-A024101(n+1))` -/
def P15075528037593748897.Spec : Prop :=
  ∀ n, P15075528037593748897.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P14310222505317922460

`abs(8-A001019(n+1))`
-/

namespace A177095.P14310222505317922460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A001019 (n + 1)|

end

end A177095.P14310222505317922460

namespace A177095

/-- `abs(8-A001019(n+1))` -/
def P14310222505317922460.Spec : Prop :=
  ∀ n, P14310222505317922460.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P9662786648984481930

`abs(8-A100062(n+1))`
-/

namespace A177095.P9662786648984481930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A100062 (n + 1)|

end

end A177095.P9662786648984481930

namespace A177095

/-- `abs(8-A100062(n+1))` -/
def P9662786648984481930.Spec : Prop :=
  ∀ n, P9662786648984481930.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P3950877921148478235

`abs(9-A062396(n+1))`
-/

namespace A177095.P3950877921148478235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - A062396 (n + 1)|

end

end A177095.P3950877921148478235

namespace A177095

/-- `abs(9-A062396(n+1))` -/
def P3950877921148478235.Spec : Prop :=
  ∀ n, P3950877921148478235.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P10656912867331281138

`xor(7, A058809(2*(n+1)))`
-/

namespace A177095.P10656912867331281138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A058809 (2 * (n + 1)))

end

end A177095.P10656912867331281138

namespace A177095

/-- `xor(7, A058809(2*(n+1)))` -/
def P10656912867331281138.Spec : Prop :=
  ∀ n, P10656912867331281138.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P4276706156189366752

`abs(8-A000244(n+1)²)`
-/

namespace A177095.P4276706156189366752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A000244 (n + 1) ^ 2|

end

end A177095.P4276706156189366752

namespace A177095

/-- `abs(8-A000244(n+1)²)` -/
def P4276706156189366752.Spec : Prop :=
  ∀ n, P4276706156189366752.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P13183116551885445683

`abs(A000244(2*(n+1))-8)`
-/

namespace A177095.P13183116551885445683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 (2 * (n + 1)) - 8|

end

end A177095.P13183116551885445683

namespace A177095

/-- `abs(A000244(2*(n+1))-8)` -/
def P13183116551885445683.Spec : Prop :=
  ∀ n, P13183116551885445683.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P16380873561985794467

`Δ[A039300(2*n+1)-8*n]`
-/

namespace A177095.P16380873561985794467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 (2 * n + 1) - (8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177095.P16380873561985794467

namespace A177095

/-- `Δ[A039300(2*n+1)-8*n]` -/
def P16380873561985794467.Spec : Prop :=
  ∀ n, P16380873561985794467.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P3856684380715771161

`∑[A026097(A062545(n))]`
-/

namespace A177095.P3856684380715771161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026097 (A062545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177095.P3856684380715771161

namespace A177095

/-- `∑[A026097(A062545(n))]` -/
def P3856684380715771161.Spec : Prop :=
  ∀ n, P3856684380715771161.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P15630923220720125084

`∑[A055275(A087156(n+1))]`
-/

namespace A177095.P15630923220720125084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 (A087156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177095.P15630923220720125084

namespace A177095

/-- `∑[A055275(A087156(n+1))]` -/
def P15630923220720125084.Spec : Prop :=
  ∀ n, P15630923220720125084.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P17903249899122228206

`∑[A083583(A153152(2*n))]`
-/

namespace A177095.P17903249899122228206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083583 (A153152 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177095.P17903249899122228206

namespace A177095

/-- `∑[A083583(A153152(2*n))]` -/
def P17903249899122228206.Spec : Prop :=
  ∀ n, P17903249899122228206.a n = A177095 (n + 1)

end A177095

/-! ## A177095.P10239028742801988309

`∑[lcm(A001019(n), A055275(n))]`
-/

namespace A177095.P10239028742801988309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001019 n) (A055275 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177095.P10239028742801988309

namespace A177095

/-- `∑[lcm(A001019(n), A055275(n))]` -/
def P10239028742801988309.Spec : Prop :=
  ∀ n, (P10239028742801988309.a n : ℤ) = A177095 (n + 1)

end A177095

/-!
# A177096: a(n) = 5*(10^n - 2).

The programs for A177096, the canonical program `A177096.P5034359862929634776` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177096 has offset 1).

The definition of A177096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(10^(n+1)-2)` (program `A177096.P5034359862929634776`, by `A177096.P5034359862929634776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177096.P5034359862929634776

`5*(10^(n+1)-2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177096

/-- `5*(10^(n+1)-2)` -/
def P5034359862929634776.Spec : Prop :=
  ∀ n, P5034359862929634776.a n = A177096 (n + 1)

theorem P5034359862929634776.correct : P5034359862929634776.Spec := by
  intro n
  simp only [A177096, Nat.add_sub_cancel]

end A177096

/-! ## A177096.P8205210553645904764

`11*a(n-1)-10*a(n-2)` with `a(0)=40, a(1)=490`
-/

namespace A177096.P8205210553645904764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40, 490] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A177096.P8205210553645904764

namespace A177096

/-- `11*a(n-1)-10*a(n-2)` -/
def P8205210553645904764.Spec : Prop :=
  ∀ n, P8205210553645904764.a n = A177096 (n + 1)

theorem P8205210553645904764.correct : P8205210553645904764.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A177096, Nat.add_sub_cancel, A177096.P8205210553645904764.a, A177096.P5034359862929634776.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A177096, Nat.add_sub_cancel, A177096.P8205210553645904764.a, A177096.P5034359862929634776.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177096

/-! ## A177096.P14973810700284779799

`lcm(5, 2-10^(n+1))`
-/

namespace A177096.P14973810700284779799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (2 - (10 ^ (n + 1) : ℤ))

end

end A177096.P14973810700284779799

namespace A177096

/-- `lcm(5, 2-10^(n+1))` -/
def P14973810700284779799.Spec : Prop :=
  ∀ n, (P14973810700284779799.a n : ℤ) = A177096 (n + 1)

end A177096

/-! ## A177096.P786113774328015940

`10*a(n-1)+90` with `a(0)=40`
-/

namespace A177096.P786113774328015940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [40] fun n a =>
  10 * a (n - 1) + 90

end

end A177096.P786113774328015940

namespace A177096

/-- `10*a(n-1)+90` -/
def P786113774328015940.Spec : Prop :=
  ∀ n, (P786113774328015940.a n : ℤ) = A177096 (n + 1)

theorem P786113774328015940.correct : P786113774328015940.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A177096, Nat.add_sub_cancel, A177096.P786113774328015940.a, A177096.P5034359862929634776.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A177096, Nat.add_sub_cancel, A177096.P786113774328015940.a, A177096.P5034359862929634776.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177096

/-! ## A177096.P16709357765283930642

`∑[10*Δ[10*a(n-1)]]` with `a(0)=1, a(1)=5`
-/

namespace A177096.P16709357765283930642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177096.P16709357765283930642

namespace A177096

/-- `∑[10*Δ[10*a(n-1)]]` -/
def P16709357765283930642.Spec : Prop :=
  ∀ n, P16709357765283930642.a n = A177096 (n + 1)

end A177096

/-! ## A177096.P2542615190215082444

`abs(5*xor(-2, -10^(n+1)))`
-/

namespace A177096.P2542615190215082444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * Int.xor (-2) (-(10 ^ (n + 1) : ℤ))|

end

end A177096.P2542615190215082444

namespace A177096

/-- `abs(5*xor(-2, -10^(n+1)))` -/
def P2542615190215082444.Spec : Prop :=
  ∀ n, P2542615190215082444.a n = A177096 (n + 1)

end A177096

/-! ## A177096.P3811330505497658770

`abs(5*record[10^abs(1-n)-2])`
-/

namespace A177096.P3811330505497658770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |5 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A177096.P3811330505497658770

namespace A177096

/-- `abs(5*record[10^abs(1-n)-2])` -/
def P3811330505497658770.Spec : Prop :=
  ∀ n, P3811330505497658770.a n = (A177096 (n + 1) : ℚ)

end A177096

/-! ## A177096.P17530398752908669914

`A086949(n+1)-1`
-/

namespace A177096.P17530398752908669914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086949 (n + 1) - 1

end

end A177096.P17530398752908669914

namespace A177096

/-- `A086949(n+1)-1` -/
def P17530398752908669914.Spec : Prop :=
  ∀ n, P17530398752908669914.a n = A177096 (n + 1)

end A177096

/-! ## A177096.P12099586550622657523

`A086944(n+1)-2`
-/

namespace A177096.P12099586550622657523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086944 (n + 1) - 2

end

end A177096.P12099586550622657523

namespace A177096

/-- `A086944(n+1)-2` -/
def P12099586550622657523.Spec : Prop :=
  ∀ n, P12099586550622657523.a n = A177096 (n + 1)

end A177096

/-! ## A177096.P11804901914725439368

`A177079(n+1)+5`
-/

namespace A177096.P11804901914725439368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177079 (n + 1) + 5

end

end A177096.P11804901914725439368

namespace A177096

/-- `A177079(n+1)+5` -/
def P11804901914725439368.Spec : Prop :=
  ∀ n, P11804901914725439368.a n = A177096 (n + 1)

end A177096

/-!
# A177097: a(n) = 6*(10^n-5).

The programs for A177097, the canonical program `A177097.P15008787931188814067` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177097 has offset 1).

The definition of A177097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(10^(n+1)-5)` (program `A177097.P15008787931188814067`, by `A177097.P15008787931188814067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177097.P15008787931188814067

`6*(10^(n+1)-5)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177097

/-- `6*(10^(n+1)-5)` -/
def P15008787931188814067.Spec : Prop :=
  ∀ n, P15008787931188814067.a n = A177097 (n + 1)

theorem P15008787931188814067.correct : P15008787931188814067.Spec := by
  intro n
  simp only [A177097, Nat.add_sub_cancel]

end A177097

/-! ## A177097.P9119491488083102828

`11*a(n-1)-10*a(n-2)` with `a(0)=30, a(1)=570`
-/

namespace A177097.P9119491488083102828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [30, 570] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A177097.P9119491488083102828

namespace A177097

/-- `11*a(n-1)-10*a(n-2)` -/
def P9119491488083102828.Spec : Prop :=
  ∀ n, P9119491488083102828.a n = A177097 (n + 1)

theorem P9119491488083102828.correct : P9119491488083102828.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A177097, Nat.add_sub_cancel, A177097.P9119491488083102828.a, A177097.P15008787931188814067.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A177097, Nat.add_sub_cancel, A177097.P9119491488083102828.a, A177097.P15008787931188814067.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177097

/-! ## A177097.P13800638270573945118

`lcm(6, 5-10^(n+1))`
-/

namespace A177097.P13800638270573945118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (5 - (10 ^ (n + 1) : ℤ))

end

end A177097.P13800638270573945118

namespace A177097

/-- `lcm(6, 5-10^(n+1))` -/
def P13800638270573945118.Spec : Prop :=
  ∀ n, (P13800638270573945118.a n : ℤ) = A177097 (n + 1)

end A177097

/-! ## A177097.P10179646821313684878

`Δ[A002280(n+1)]-30`
-/

namespace A177097.P10179646821313684878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 30

end

end A177097.P10179646821313684878

namespace A177097

/-- `Δ[A002280(n+1)]-30` -/
def P10179646821313684878.Spec : Prop :=
  ∀ n, P10179646821313684878.a n = A177097 (n + 1)

end A177097

/-! ## A177097.P18347984469114892309

`Δ[A173805(n+1)]-30`
-/

namespace A177097.P18347984469114892309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 30

end

end A177097.P18347984469114892309

namespace A177097

/-- `Δ[A173805(n+1)]-30` -/
def P18347984469114892309.Spec : Prop :=
  ∀ n, P18347984469114892309.a n = A177097 (n + 1)

end A177097

/-! ## A177097.P10973868640100107606

`A177074(n+1)+A177074(n+1)`
-/

namespace A177097.P10973868640100107606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177074 (n + 1) + A177074 (n + 1)

end

end A177097.P10973868640100107606

namespace A177097

/-- `A177074(n+1)+A177074(n+1)` -/
def P10973868640100107606.Spec : Prop :=
  ∀ n, P10973868640100107606.a n = A177097 (n + 1)

end A177097

/-! ## A177097.P11745940840436924172

`A173813(n+1)+2*A173813(n+1)`
-/

namespace A177097.P11745940840436924172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173813 (n + 1) + 2 * A173813 (n + 1)

end

end A177097.P11745940840436924172

namespace A177097

/-- `A173813(n+1)+2*A173813(n+1)` -/
def P11745940840436924172.Spec : Prop :=
  ∀ n, P11745940840436924172.a n = A177097 (n + 1)

end A177097

/-! ## A177097.P17408765020542690864

`A177109(n+1)+A177109(n+1)/2`
-/

namespace A177097.P17408765020542690864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177109 (n + 1) : ℚ) + (A177109 (n + 1) : ℚ) / 2

end

end A177097.P17408765020542690864

namespace A177097

/-- `A177109(n+1)+A177109(n+1)/2` -/
def P17408765020542690864.Spec : Prop :=
  ∀ n, P17408765020542690864.a n = (A177097 (n + 1) : ℚ)

end A177097

/-! ## A177097.P14829876426792953980

`A173813(n+1)+A173813(A000027(n+1))+A173813(n+1)`
-/

namespace A177097.P14829876426792953980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173813 (n + 1) + (A173813 (A000027 (n + 1)).toNat + A173813 (n + 1))

end

end A177097.P14829876426792953980

namespace A177097

/-- `A173813(n+1)+A173813(A000027(n+1))+A173813(n+1)` -/
def P14829876426792953980.Spec : Prop :=
  ∀ n, P14829876426792953980.a n = A177097 (n + 1)

end A177097

/-! ## A177097.P4130462871511072349

`3*A177109(n+1)/2`
-/

namespace A177097.P4130462871511072349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A177109 (n + 1) : ℚ) / 2

end

end A177097.P4130462871511072349

namespace A177097

/-- `3*A177109(n+1)/2` -/
def P4130462871511072349.Spec : Prop :=
  ∀ n, P4130462871511072349.a n = (A177097 (n + 1) : ℚ)

end A177097

/-!
# A177098: a(n) = 6*(10^n-7).

The programs for A177098, the canonical program `A177098.P15375478941725217463` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177098 has offset 1).

The definition of A177098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(10^(n+1)-7)` (program `A177098.P15375478941725217463`, by `A177098.P15375478941725217463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177098.P15375478941725217463

`6*(10^(n+1)-7)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177098

/-- `6*(10^(n+1)-7)` -/
def P15375478941725217463.Spec : Prop :=
  ∀ n, P15375478941725217463.a n = A177098 (n + 1)

theorem P15375478941725217463.correct : P15375478941725217463.Spec := by
  intro n
  simp only [A177098, Nat.add_sub_cancel]

end A177098

/-! ## A177098.P12132919136872491429

`lcm(18, 7-10^(n+1))`
-/

namespace A177098.P12132919136872491429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 18 (7 - (10 ^ (n + 1) : ℤ))

end

end A177098.P12132919136872491429

namespace A177098

/-- `lcm(18, 7-10^(n+1))` -/
def P12132919136872491429.Spec : Prop :=
  ∀ n, (P12132919136872491429.a n : ℤ) = A177098 (n + 1)

end A177098

/-! ## A177098.P2521810509481313003

`6*(∑[10*a(n-1)]-1)-30` with `a(0)=9`
-/

namespace A177098.P2521810509481313003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) - 30

end

end A177098.P2521810509481313003

namespace A177098

/-- `6*(∑[10*a(n-1)]-1)-30` -/
def P2521810509481313003.Spec : Prop :=
  ∀ n, P2521810509481313003.a n = A177098 (n + 1)

end A177098

/-! ## A177098.P2335788845145955867

`Δ[A002280(n+1)]-42`
-/

namespace A177098.P2335788845145955867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 42

end

end A177098.P2335788845145955867

namespace A177098

/-- `Δ[A002280(n+1)]-42` -/
def P2335788845145955867.Spec : Prop :=
  ∀ n, P2335788845145955867.a n = A177098 (n + 1)

end A177098

/-! ## A177098.P8472754854065590976

`A175237(n+1)+2*A175237(n+1)`
-/

namespace A177098.P8472754854065590976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175237 (n + 1) + 2 * A175237 (n + 1)

end

end A177098.P8472754854065590976

namespace A177098

/-- `A175237(n+1)+2*A175237(n+1)` -/
def P8472754854065590976.Spec : Prop :=
  ∀ n, P8472754854065590976.a n = A177098 (n + 1)

end A177098

/-! ## A177098.P9721402520859798357

`A177112(n+1)+A177112(n+1)/2`
-/

namespace A177098.P9721402520859798357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177112 (n + 1) : ℚ) + (A177112 (n + 1) : ℚ) / 2

end

end A177098.P9721402520859798357

namespace A177098

/-- `A177112(n+1)+A177112(n+1)/2` -/
def P9721402520859798357.Spec : Prop :=
  ∀ n, P9721402520859798357.a n = (A177098 (n + 1) : ℚ)

end A177098

/-! ## A177098.P6798906128847701422

`∑{d}[n+1, A000038(#-1)*A177107((n+1)/#)]`
-/

namespace A177098.P6798906128847701422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000038 (d - 1) * A177107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A177098.P6798906128847701422

namespace A177098

/-- `∑{d}[n+1, A000038(#-1)*A177107((n+1)/#)]` -/
def P6798906128847701422.Spec : Prop :=
  ∀ n, P6798906128847701422.a n = A177098 (n + 1)

end A177098

/-! ## A177098.P11840346773519085157

`3*A177112(n+1)/2`
-/

namespace A177098.P11840346773519085157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A177112 (n + 1) : ℚ) / 2

end

end A177098.P11840346773519085157

namespace A177098

/-- `3*A177112(n+1)/2` -/
def P11840346773519085157.Spec : Prop :=
  ∀ n, P11840346773519085157.a n = (A177098 (n + 1) : ℚ)

end A177098

/-! ## A177098.P13165766729489130674

`4*A177107(n+1)/2`
-/

namespace A177098.P13165766729489130674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A177107 (n + 1) : ℚ) / 2

end

end A177098.P13165766729489130674

namespace A177098

/-- `4*A177107(n+1)/2` -/
def P13165766729489130674.Spec : Prop :=
  ∀ n, P13165766729489130674.a n = (A177098 (n + 1) : ℚ)

end A177098

/-! ## A177098.P17348352484145579948

`3*A175604(n+1)/4`
-/

namespace A177098.P17348352484145579948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A175604 (n + 1) : ℚ) / 4

end

end A177098.P17348352484145579948

namespace A177098

/-- `3*A175604(n+1)/4` -/
def P17348352484145579948.Spec : Prop :=
  ∀ n, P17348352484145579948.a n = (A177098 (n + 1) : ℚ)

end A177098

/-!
# A177099: a(n) = 81*n^2 + 2*n.

The programs for A177099, the canonical program `A177099.P2769263149415636261` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177099 has offset 1).

The definition of A177099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*(n+1)²+2*(n+1)` (program `A177099.P2769263149415636261`, by `A177099.P2769263149415636261.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177099.P2769263149415636261

`81*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177099

/-- `81*(n+1)²+2*(n+1)` -/
def P2769263149415636261.Spec : Prop :=
  ∀ n, (P2769263149415636261.a n : ℤ) = A177099 (n + 1)

theorem P2769263149415636261.correct : P2769263149415636261.Spec := by
  intro n
  simp only [A177099, Nat.add_sub_cancel]

end A177099

/-! ## A177099.P6383857341151399727

`(n+1)*(A158123(n+1)+1)`
-/

namespace A177099.P6383857341151399727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158123 (n + 1) + 1)

end

end A177099.P6383857341151399727

namespace A177099

/-- `(n+1)*(A158123(n+1)+1)` -/
def P6383857341151399727.Spec : Prop :=
  ∀ n, P6383857341151399727.a n = A177099 (n + 1)

end A177099

/-! ## A177099.P12509121087557783089

`(n+1)*(A362360(n+1)+4)`
-/

namespace A177099.P12509121087557783089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A362360 (n + 1) + 4)

end

end A177099.P12509121087557783089

namespace A177099

/-- `(n+1)*(A362360(n+1)+4)` -/
def P12509121087557783089.Spec : Prop :=
  ∀ n, P12509121087557783089.a n = A177099 (n + 1)

end A177099

/-! ## A177099.P10585895765974636592

`A156814(n+1)%A156635(n+1)`
-/

namespace A177099.P10585895765974636592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156814 (n + 1)) (A156635 (n + 1))

end

end A177099.P10585895765974636592

namespace A177099

/-- `A156814(n+1)%A156635(n+1)` -/
def P10585895765974636592.Spec : Prop :=
  ∀ n, P10585895765974636592.a n = A177099 (n + 1)

end A177099

/-! ## A177099.P12044109298565726335

`A158394(n+1)%A158305(n+1)`
-/

namespace A177099.P12044109298565726335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158394 (n + 1)) (A158305 (n + 1))

end

end A177099.P12044109298565726335

namespace A177099

/-- `A158394(n+1)%A158305(n+1)` -/
def P12044109298565726335.Spec : Prop :=
  ∀ n, P12044109298565726335.a n = A177099 (n + 1)

end A177099

/-! ## A177099.P6799471295311908113

`(n+1)*A281546(3*(n+1))`
-/

namespace A177099.P6799471295311908113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A281546 (3 * (n + 1))

end

end A177099.P6799471295311908113

namespace A177099

/-- `(n+1)*A281546(3*(n+1))` -/
def P6799471295311908113.Spec : Prop :=
  ∀ n, P6799471295311908113.a n = A177099 (n + 1)

end A177099

/-! ## A177099.P6194601615837128782

`(n+1)*A017185(9*(n+1))`
-/

namespace A177099.P6194601615837128782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017185 (9 * (n + 1))

end

end A177099.P6194601615837128782

namespace A177099

/-- `(n+1)*A017185(9*(n+1))` -/
def P6194601615837128782.Spec : Prop :=
  ∀ n, P6194601615837128782.a n = A177099 (n + 1)

end A177099

