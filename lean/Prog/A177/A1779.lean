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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A177900: Smallest positive integer k such that the sum of the proper divisors of k gives the n-th prime, or 0 if prime(n) belongs to A005114.

The programs for A177900, there is no canonical definition to state claims against.
-/

/-! ## A177900.P2194126522699463602

`A070015(p?[comp[n²]])`
-/

namespace A177900.P2194126522699463602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177900.P2194126522699463602

/-! ## A177900.P14542804678099894767

`A070016(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A177900.P14542804678099894767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A177900.P14542804678099894767

/-! ## A177900.P2225855502563252742

`A070015(A000040(n+1))`
-/

namespace A177900.P2225855502563252742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A000040 (n + 1)).toNat

end

end A177900.P2225855502563252742

/-! ## A177900.P10072496165067397467

`A070016(A006093(n+1))`
-/

namespace A177900.P10072496165067397467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A006093 (n + 1)).toNat

end

end A177900.P10072496165067397467

/-! ## A177900.P11543795307982788096

`A070015(A008578(n+2))`
-/

namespace A177900.P11543795307982788096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A008578 (n + 2)).toNat

end

end A177900.P11543795307982788096

/-! ## A177900.P1805454125100834163

`A070015(A182986(n+2))`
-/

namespace A177900.P1805454125100834163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A182986 (n + 2)).toNat

end

end A177900.P1805454125100834163

/-! ## A177900.P1136116056774278526

`A070016(record[Δ[A005728(n)]])`
-/

namespace A177900.P1136116056774278526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177900.P1136116056774278526

/-! ## A177900.P12256967971763206966

`A070016(record[A000010(n+1)])`
-/

namespace A177900.P12256967971763206966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177900.P12256967971763206966

/-! ## A177900.P17658778818743655681

`A070015(record[A006530(n+2)])`
-/

namespace A177900.P17658778818743655681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177900.P17658778818743655681

/-! ## A177900.P4663870864978749966

`A070015(record[A014963(n+2)])`
-/

namespace A177900.P4663870864978749966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177900.P4663870864978749966

/-! ## A177900.P14766853878397484166

`A070015(record[A020639(n+2)])`
-/

namespace A177900.P14766853878397484166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177900.P14766853878397484166

/-! ## A177900.P7533167592789895033

`A070016(A000040(n+1)-1)`
-/

namespace A177900.P7533167592789895033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A000040 (n + 1) - 1).toNat

end

end A177900.P7533167592789895033

/-! ## A177900.P5890013870360585339

`A070015(A008864(n+1)-1)`
-/

namespace A177900.P5890013870360585339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A008864 (n + 1) - 1).toNat

end

end A177900.P5890013870360585339

/-! ## A177900.P7420553390218913693

`A070015(A028815(n+1)-1)`
-/

namespace A177900.P7420553390218913693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A028815 (n + 1) - 1).toNat

end

end A177900.P7420553390218913693

/-! ## A177900.P16550019297981426526

`A070016(A008578(n+2)-1)`
-/

namespace A177900.P16550019297981426526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A008578 (n + 2) - 1).toNat

end

end A177900.P16550019297981426526

/-! ## A177900.P11149898143668648073

`A070016(A008864(n+1)-2)`
-/

namespace A177900.P11149898143668648073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A008864 (n + 1) - 2).toNat

end

end A177900.P11149898143668648073

/-! ## A177900.P4509363815306395467

`A070016(A182986(n+2)-1)`
-/

namespace A177900.P4509363815306395467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A182986 (n + 2) - 1).toNat

end

end A177900.P4509363815306395467

/-! ## A177900.P15249157374319976274

`A070016(eq[n, A000010(n+1)])`
-/

namespace A177900.P15249157374319976274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177900.P15249157374319976274

/-! ## A177900.P9292299181154020254

`A070016(record[A006530(n+2)-1])`
-/

namespace A177900.P9292299181154020254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177900.P9292299181154020254

/-!
# A177902: Numbers k such that d(i)|(k - i) for i = 1..p where d(1), d(2), ..., d(p) are the digits of the decimal expansion of k.

The programs for A177902, there is no canonical definition to state claims against.
-/

/-! ## A177902.P9146684241374654426

`or(A038571(A104370(n+1)), A244723(n+1))`
-/

namespace A177902.P9146684241374654426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038571 (A104370 (n + 1)).toNat) (A244723 (n + 1))

end

end A177902.P9146684241374654426

/-! ## A177902.P2439257980654618752

`∑[A001222(A214795(n+1)^A213790(n+1))]`
-/

namespace A177902.P2439257980654618752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A214795 (n + 1) : ℚ) ^ (A213790 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177902.P2439257980654618752

/-!
# A177903: Consider the weighted Farey tree A177405/A177407; a(n) = row at which the denominator 2n+1 first appears (assumes first row is labeled row 0).

The programs for A177903, there is no canonical definition to state claims against.
-/

/-! ## A177903.P3332215217700146598

`A178042(n)-1`
-/

namespace A177903.P3332215217700146598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178042 n - 1

end

end A177903.P3332215217700146598

/-! ## A177903.P15288572476160706562

`A070198(n)%A178042(n)`
-/

namespace A177903.P15288572476160706562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A178042 n)

end

end A177903.P15288572476160706562

/-! ## A177903.P18230438454444762006

`A198277(n)%A178042(n)`
-/

namespace A177903.P18230438454444762006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A178042 n)

end

end A177903.P18230438454444762006

/-! ## A177903.P10037157737255059208

`A030494(n+1)%A178042(n)`
-/

namespace A177903.P10037157737255059208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A178042 n)

end

end A177903.P10037157737255059208

/-! ## A177903.P11098377790914958272

`A072828(n+1)%A178042(n)`
-/

namespace A177903.P11098377790914958272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A178042 n)

end

end A177903.P11098377790914958272

/-! ## A177903.P9239939403777728115

`A079782(n+1)%A178042(n)`
-/

namespace A177903.P9239939403777728115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A178042 n)

end

end A177903.P9239939403777728115

/-! ## A177903.P7376020541675988808

`A083685(n+1)%A178042(n)`
-/

namespace A177903.P7376020541675988808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A178042 n)

end

end A177903.P7376020541675988808

/-! ## A177903.P7076344717459688393

`A121934(n+1)%A178042(n)`
-/

namespace A177903.P7076344717459688393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A178042 n)

end

end A177903.P7076344717459688393

/-! ## A177903.P12038545468651808516

`A166931(n+1)%A178042(n)`
-/

namespace A177903.P12038545468651808516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A178042 n)

end

end A177903.P12038545468651808516

/-! ## A177903.P5252756641963661820

`A127228(n+4)%A178042(n)`
-/

namespace A177903.P5252756641963661820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A178042 n)

end

end A177903.P5252756641963661820

/-! ## A177903.P10991489325447565714

`A127229(n+5)%A178042(n)`
-/

namespace A177903.P10991489325447565714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A178042 n)

end

end A177903.P10991489325447565714

/-! ## A177903.P6875751398913626911

`A004848(or(C(2, n), A178042(n)))`
-/

namespace A177903.P6875751398913626911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004848 (Int.lor (Nat.choose 2 n : ℤ) (A178042 n)).toNat

end

end A177903.P6875751398913626911

/-! ## A177903.P11300606188079293743

`A001478(n+1)+A178042(n)+n`
-/

namespace A177903.P11300606188079293743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A178042 n + (n : ℤ))

end

end A177903.P11300606188079293743

/-! ## A177903.P5038604335604189440

`(A178042(n)+n)%A000027(n+1)`
-/

namespace A177903.P5038604335604189440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178042 n + (n : ℤ)) (A000027 (n + 1))

end

end A177903.P5038604335604189440

/-! ## A177903.P2645186287752264000

`(A178042(n)+A000578(n))%(n+1)`
-/

namespace A177903.P2645186287752264000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178042 n + A000578 n) (n + 1 : ℤ)

end

end A177903.P2645186287752264000

/-! ## A177903.P10051302637784795189

`A023444(A178042(n)+gcd(n, n+1))`
-/

namespace A177903.P10051302637784795189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A178042 n + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A177903.P10051302637784795189

/-!
# A177904: a(1)=a(2)=a(3)=1; thereafter a(n) = gpf(a(n-1)+a(n-2)+a(n-3)), where gpf = "greatest prime factor".

The programs for A177904, the canonical program `A177904.P18059699568305117601` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177904 has offset 1).

The definition of A177904 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177904.P18059699568305117601

`A006530(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A177904

/-- `A006530(a(n-1)+a(n-2)+a(n-3))` -/
def P18059699568305117601.Spec : Prop :=
  ∀ n, P18059699568305117601.a n = A177904 (n + 1)

theorem P18059699568305117601.correct : P18059699568305117601.Spec := by
  intro n
  simp only [A177904, Nat.add_sub_cancel]

end A177904

/-!
# A177907: Numbers k such that k^3 divides 7^(k^2) - 1.

The programs for A177907, there is no canonical definition to state claims against.
-/

/-! ## A177907.P13079535009583372247

`A018293(A225496(n+1))%A274535(n+1)`
-/

namespace A177907.P13079535009583372247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018293 (A225496 (n + 1)).toNat) (A274535 (n + 1))

end

end A177907.P13079535009583372247

/-! ## A177907.P12313157699971655174

`record[gcd(10*20*(n+1), A352745(n))]`
-/

namespace A177907.P12313157699971655174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 * (20 * (n + 1)) : ℤ) (A352745 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177907.P12313157699971655174

/-! ## A177907.P13040237880032104387

`record[A320111(record[A317494(n)])]`
-/

namespace A177907.P13040237880032104387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177907.P13040237880032104387

/-! ## A177907.P17056379169686314251

`record[A018293(n+1)%A124180(2*(n+1))]`
-/

namespace A177907.P17056379169686314251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018293 (n + 1)) (A124180 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177907.P17056379169686314251

/-! ## A177907.P9706364048855381663

`A018293(lt[A136555(n+4), ∑[n+2]-1])`
-/

namespace A177907.P9706364048855381663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136555 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177907.P9706364048855381663

/-!
# A177911: Numbers k such that k^3 divides 11^(k^2) - 1.

The programs for A177911, there is no canonical definition to state claims against.
-/

/-! ## A177911.P5841448228836267932

`A127092(n+1)-A194186(A075936(n))`
-/

namespace A177911.P5841448228836267932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127092 (n + 1) - A194186 (A075936 n).toNat

end

end A177911.P5841448228836267932

/-! ## A177911.P4699615139457058042

`and(A006972(A153717(n+1)), A127092(n+1))`
-/

namespace A177911.P4699615139457058042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006972 (A153717 (n + 1)).toNat) (A127092 (n + 1))

end

end A177911.P4699615139457058042

/-!
# A177912: Numbers k such that k^3 divides 12^(k^2) - 1.

The programs for A177912, there is no canonical definition to state claims against.
-/

/-! ## A177912.P15240230296677751063

`record[∏{p}[A014951(A177807(n+1)), #]]`
-/

namespace A177912.P15240230296677751063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014951 (A177807 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177912.P15240230296677751063

/-!
# A177915: Numbers k such that k^3 divides 15^(k^2) - 1.

The programs for A177915, there is no canonical definition to state claims against.
-/

/-! ## A177915.P18313188627154115934

`A128395(A032555(n+1))`
-/

namespace A177915.P18313188627154115934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128395 (A032555 (n + 1)).toNat

end

end A177915.P18313188627154115934

/-! ## A177915.P5987920785255483188

`A128395(A032557(n+1))`
-/

namespace A177915.P5987920785255483188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128395 (A032557 (n + 1)).toNat

end

end A177915.P5987920785255483188

/-! ## A177915.P18040289629287777098

`A128395(A032559(n+1))`
-/

namespace A177915.P18040289629287777098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128395 (A032559 (n + 1)).toNat

end

end A177915.P18040289629287777098

/-! ## A177915.P15128267912122364270

`A128395(A032563(n+1))`
-/

namespace A177915.P15128267912122364270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128395 (A032563 (n + 1)).toNat

end

end A177915.P15128267912122364270

/-! ## A177915.P14765356211073361033

`A128395(A032565(n+1))`
-/

namespace A177915.P14765356211073361033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128395 (A032565 (n + 1)).toNat

end

end A177915.P14765356211073361033

/-!
# A177917: Numbers k such that k^3 divides 17^(k^2) - 1.

The programs for A177917, there is no canonical definition to state claims against.
-/

/-! ## A177917.P4834213067067802306

`lt[A351385(n+1), A227574(n)]`
-/

namespace A177917.P4834213067067802306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177917.P4834213067067802306

/-! ## A177917.P6761678204517477883

`lt[A007947(A011971(n)), A027642(n)]`
-/

namespace A177917.P6761678204517477883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A011971 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177917.P6761678204517477883

/-! ## A177917.P17538190671812354464

`lt[A000010(A132327(n)), A027642(n)]`
-/

namespace A177917.P17538190671812354464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A132327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177917.P17538190671812354464

/-! ## A177917.P10316773866770449654

`lt[A003961(A325768(n)), A027642(n)]`
-/

namespace A177917.P10316773866770449654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A325768 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177917.P10316773866770449654

/-! ## A177917.P1053931748877003859

`lt[A198201(A056943(n+1)), A027642(n)]`
-/

namespace A177917.P1053931748877003859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198201 (A056943 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177917.P1053931748877003859

/-!
# A177923: a(1)=19, a(2)=13, a(3)=37; thereafter a(n) = gpf(a(n-1)+a(n-2)+a(n-3)), where gpf = "greatest prime factor".

The programs for A177923, the canonical program `A177923.P6858436181940682917` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177923 has offset 1).

The definition of A177923 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177923.P6858436181940682917

`A006530(a(n-1)+a(n-2)+a(n-3))` with `a(0)=19, a(1)=13, a(2)=37`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A177923

/-- `A006530(a(n-1)+a(n-2)+a(n-3))` -/
def P6858436181940682917.Spec : Prop :=
  ∀ n, P6858436181940682917.a n = A177923 (n + 1)

theorem P6858436181940682917.correct : P6858436181940682917.Spec := by
  intro n
  simp only [A177923, Nat.add_sub_cancel]

end A177923

/-!
# A177926: a(n) = ((prime(n) - 1)!)^2.

The programs for A177926, the canonical program `A177926.P2464120121562138243` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177926 has offset 1).

The definition of A177926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+1)-1)!²` (program `A177926.P2464120121562138243`, by `A177926.P2464120121562138243.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177926.P2464120121562138243

`(A000040(n+1)-1)!²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177926

/-- `(A000040(n+1)-1)!²` -/
def P2464120121562138243.Spec : Prop :=
  ∀ n, (P2464120121562138243.a n : ℤ) = A177926 (n + 1)

theorem P2464120121562138243.correct : P2464120121562138243.Spec := by
  intro n
  simp only [A177926, Nat.add_sub_cancel]

end A177926

/-! ## A177926.P2824839770449102462

`record[∏{p}[n+1, #-1]!²]`
-/

namespace A177926.P2824839770449102462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177926.P2824839770449102462

namespace A177926

/-- `record[∏{p}[n+1, #-1]!²]` -/
def P2824839770449102462.Spec : Prop :=
  ∀ n, (P2824839770449102462.a n : ℤ) = A177926 (n + 1)

end A177926

/-! ## A177926.P17635070357139918482

`A177771(n+1)²`
-/

namespace A177926.P17635070357139918482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177771 (n + 1) ^ 2

end

end A177926.P17635070357139918482

namespace A177926

/-- `A177771(n+1)²` -/
def P17635070357139918482.Spec : Prop :=
  ∀ n, P17635070357139918482.a n = A177926 (n + 1)

theorem P17635070357139918482.correct : P17635070357139918482.Spec := by
  intro n
  simp only [A177926, Nat.add_sub_cancel, A177926.P17635070357139918482.a, A177926.P2464120121562138243.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A177771, A177771.P1242841821282446096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177926

/-! ## A177926.P16892976968382869285

`(1-A060371(n+1))²`
-/

namespace A177926.P16892976968382869285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A060371 (n + 1)) ^ 2

end

end A177926.P16892976968382869285

namespace A177926

/-- `(1-A060371(n+1))²` -/
def P16892976968382869285.Spec : Prop :=
  ∀ n, P16892976968382869285.a n = A177926 (n + 1)

theorem P16892976968382869285.correct : P16892976968382869285.Spec := by
  intro n
  simp only [A177926, Nat.add_sub_cancel, A177926.P16892976968382869285.a, A177926.P2464120121562138243.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A060371, A060371.P2883912516227800700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177926

/-! ## A177926.P10191621935579941941

`record[A000010(n+1)!²]`
-/

namespace A177926.P10191621935579941941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000010 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177926.P10191621935579941941

namespace A177926

/-- `record[A000010(n+1)!²]` -/
def P10191621935579941941.Spec : Prop :=
  ∀ n, (P10191621935579941941.a n : ℤ) = A177926 (n + 1)

end A177926

/-!
# A177929: a(1)=4. a(n+1) = a(n)+d-1, where d is the smallest prime divisor of (a(n)-1)*(a(n)+1).

The programs for A177929, there is no canonical definition to state claims against.
-/

/-! ## A177929.P8948881617834501626

`a(n-1)+A020639(a(n-1)²-1)-1` with `a(0)=4`
-/

namespace A177929.P8948881617834501626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + A020639 (a (n - 1) ^ 2 - 1).toNat - 1

end

end A177929.P8948881617834501626

/-! ## A177929.P6975782678419924491

`∑[A177930(abs(1-n)+1)-1]`
-/

namespace A177929.P6975782678419924491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177930 (|1 - (n : ℤ)| + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177929.P6975782678419924491

/-! ## A177929.P8613742874276754018

`∑[A177930(A028310(n))-1]+2`
-/

namespace A177929.P8613742874276754018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177930 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A177929.P8613742874276754018

/-! ## A177929.P3909410360828934444

`∑[A000010(A177930(abs(1-n)+1))]`
-/

namespace A177929.P3909410360828934444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A177930 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177929.P3909410360828934444

/-!
# A177930: a(n) is the smallest prime divisor of (A177929(n)-1)*(A177929(n)+1).

The programs for A177930, there is no canonical definition to state claims against.
-/

/-! ## A177930.P16865792527280853085

`A020639(A177929(n+1)²-1)`
-/

namespace A177930.P16865792527280853085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A177929 (n + 1) ^ 2 - 1).toNat

end

end A177930.P16865792527280853085

/-! ## A177930.P15111722500492146848

`Δ[A177929(n+1)]+1`
-/

namespace A177930.P15111722500492146848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A177930.P15111722500492146848

/-! ## A177930.P14588190768558431277

`A177929(n+2)+1-A177929(n+1)`
-/

namespace A177930.P14588190768558431277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177929 (n + 2) + 1 - A177929 (n + 1)

end

end A177930.P14588190768558431277

/-! ## A177930.P3341012814893048684

`A151800(A177929(n+2)-A177929(n+1))`
-/

namespace A177930.P3341012814893048684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A177929 (n + 2) - A177929 (n + 1)).toNat

end

end A177930.P3341012814893048684

/-! ## A177930.P989943941598478482

`A151800(A177929(n+2)%A177929(n+1))`
-/

namespace A177930.P989943941598478482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (A177929 (n + 2)) (A177929 (n + 1))).toNat

end

end A177930.P989943941598478482

/-! ## A177930.P14776154529373836623

`A004442(Δ[A177929(n+1)])`
-/

namespace A177930.P14776154529373836623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (n + 1) - f1 n).toNat

end

end A177930.P14776154529373836623

/-! ## A177930.P16934982873797315801

`A020725(Δ[A177929(n+1)])`
-/

namespace A177930.P16934982873797315801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (n + 1) - f1 n).toNat

end

end A177930.P16934982873797315801

/-! ## A177930.P4684174987407428987

`A034694(Δ[A177929(n+1)])`
-/

namespace A177930.P4684174987407428987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (n + 1) - f1 n).toNat

end

end A177930.P4684174987407428987

/-! ## A177930.P3557595672039930527

`A059843(Δ[A177929(n+1)])`
-/

namespace A177930.P3557595672039930527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (f1 (n + 1) - f1 n).toNat

end

end A177930.P3557595672039930527

/-!
# A177931: Locations of records in A177930.

The programs for A177931, there is no canonical definition to state claims against.
-/

/-! ## A177931.P6430878216207985410

`eq[2, A303386(A177929(n+1))]`
-/

namespace A177931.P6430878216207985410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303386 (A177929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177931.P6430878216207985410

/-!
# A177932: Records in A177930.

The programs for A177932, there is no canonical definition to state claims against.
-/

/-! ## A177932.P6494221036878039080

`A177930(A177931(n+1))`
-/

namespace A177932.P6494221036878039080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177930 (A177931 (n + 1)).toNat

end

end A177932.P6494221036878039080

/-! ## A177932.P1513382867083154302

`record[A177930(n+1)]`
-/

namespace A177932.P1513382867083154302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177932.P1513382867083154302

/-!
# A177933: Decimal expansion of (232405+sqrt(71216963807))/348378.

The programs for A177933, there is no canonical definition to state claims against.
-/

/-! ## A177933.P11558718865442242954

`A060997(n+1)-A076142(A007661(n))`
-/

namespace A177933.P11558718865442242954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060997 (n + 1) - A076142 (A007661 n).toNat

end

end A177933.P11558718865442242954

/-! ## A177933.P10897715356838125118

`A060997(n+1)-A121373(A048587(n))`
-/

namespace A177933.P10897715356838125118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060997 (n + 1) - A121373 (A048587 n).toNat

end

end A177933.P10897715356838125118

/-! ## A177933.P15136643802569086539

`A060997(n+1)-A205578(A121207(n))`
-/

namespace A177933.P15136643802569086539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060997 (n + 1) - A205578 (A121207 n).toNat

end

end A177933.P15136643802569086539

/-! ## A177933.P5495715589132261536

`A060997(n+1)-A318880(A253440(n+1))`
-/

namespace A177933.P5495715589132261536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060997 (n + 1) - A318880 (A253440 (n + 1)).toNat

end

end A177933.P5495715589132261536

/-! ## A177933.P16286162582917693992

`A060997(n+1)-A121373(A018908(n+2))`
-/

namespace A177933.P16286162582917693992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060997 (n + 1) - A121373 (A018908 (n + 2)).toNat

end

end A177933.P16286162582917693992

/-!
# A177938: Triangle T(n,k) = (-1)^(k+n)*A054655(n,n-k), 0<=k

The programs for A177938, there is no canonical definition to state claims against.
-/

/-! ## A177938.P14070859202956445844

`abs(A054655(A061579(n)))`
-/

namespace A177938.P14070859202956445844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054655 (A061579 n).toNat|

end

end A177938.P14070859202956445844

/-! ## A177938.P1333333704927045312

`abs(A054655(A038722(n+2)))`
-/

namespace A177938.P1333333704927045312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054655 (A038722 (n + 2)).toNat|

end

end A177938.P1333333704927045312

/-! ## A177938.P3013556119551329224

`abs(A054655(A114327(n)+n))`
-/

namespace A177938.P3013556119551329224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054655 (A114327 n + (n : ℤ)).toNat|

end

end A177938.P3013556119551329224

/-! ## A177938.P12461361515378492256

`A054655(A061579(n))*A097807(n)`
-/

namespace A177938.P12461361515378492256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054655 (A061579 n).toNat * A097807 n

end

end A177938.P12461361515378492256

/-! ## A177938.P3315577376874697961

`gcd(A000038(n), A054655(A061579(n)))`
-/

namespace A177938.P3315577376874697961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A054655 (A061579 n).toNat)

end

end A177938.P3315577376874697961

/-!
# A177939: Array t(n,m)=(n*m)!/(n + m - 1)! read by antidiagonals.

The programs for A177939, the canonical program `A177939.P10096813191167130921` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177939 has offset 1).

The definition of A177939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177939.P10096813191167130921

`((col(n)+1)*(row(n)-col(n)+1))!/(col(n)+1+row(n)-col(n)+1-1)!`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177939

/-- `((col(n)+1)*(row(n)-col(n)+1))!/(col(n)+1+row(n)-col(n)+1-1)!` -/
def P10096813191167130921.Spec : Prop :=
  ∀ n, P10096813191167130921.a n = (A177939 (n + 1) : ℚ)

end A177939

/-! ## A177939.P13958654508308861374

`((row(n)-col(n)+1)*(col(n)+1))!/(row(n)-col(n)+1+col(n)+1-1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177939.P13958654508308861374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ)).toNat : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) - 1).toNat : ℚ)

end

end A177939.P13958654508308861374

namespace A177939

/-- `((row(n)-col(n)+1)*(col(n)+1))!/(row(n)-col(n)+1+col(n)+1-1)!` -/
def P13958654508308861374.Spec : Prop :=
  ∀ n, P13958654508308861374.a n = (A177939 (n + 1) : ℚ)

end A177939

/-! ## A177939.P8887330774507734529

`A009963(n)*A060854(n+1)`
-/

namespace A177939.P8887330774507734529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 n * A060854 (n + 1)

end

end A177939.P8887330774507734529

namespace A177939

/-- `A009963(n)*A060854(n+1)` -/
def P8887330774507734529.Spec : Prop :=
  ∀ n, P8887330774507734529.a n = A177939 (n + 1)

end A177939

/-! ## A177939.P13954845041136174016

`A066991(n+1)/A181511(n+1)`
-/

namespace A177939.P13954845041136174016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066991 (n + 1) : ℚ) / (A181511 (n + 1) : ℚ)

end

end A177939.P13954845041136174016

namespace A177939

/-- `A066991(n+1)/A181511(n+1)` -/
def P13954845041136174016.Spec : Prop :=
  ∀ n, P13954845041136174016.a n = (A177939 (n + 1) : ℚ)

end A177939

/-! ## A177939.P431151104811150073

`A009963(n)*A290252(A130328(n))`
-/

namespace A177939.P431151104811150073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 n * A290252 (A130328 n).toNat

end

end A177939.P431151104811150073

namespace A177939

/-- `A009963(n)*A290252(A130328(n))` -/
def P431151104811150073.Spec : Prop :=
  ∀ n, P431151104811150073.a n = A177939 (n + 1)

end A177939

/-! ## A177939.P17989443870496365173

`A004065(A115216(n))*A009963(n)`
-/

namespace A177939.P17989443870496365173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004065 (A115216 n).toNat * A009963 n

end

end A177939.P17989443870496365173

namespace A177939

/-- `A004065(A115216(n))*A009963(n)` -/
def P17989443870496365173.Spec : Prop :=
  ∀ n, P17989443870496365173.a n = A177939 (n + 1)

end A177939

/-! ## A177939.P15615744355132696095

`A009963(n)*A290252(A193902(n))`
-/

namespace A177939.P15615744355132696095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 n * A290252 (A193902 n).toNat

end

end A177939.P15615744355132696095

namespace A177939

/-- `A009963(n)*A290252(A193902(n))` -/
def P15615744355132696095.Spec : Prop :=
  ∀ n, P15615744355132696095.a n = A177939 (n + 1)

end A177939

/-! ## A177939.P6050662294968324862

`A009963(n)*A290252(A193903(n))`
-/

namespace A177939.P6050662294968324862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 n * A290252 (A193903 n).toNat

end

end A177939.P6050662294968324862

namespace A177939

/-- `A009963(n)*A290252(A193903(n))` -/
def P6050662294968324862.Spec : Prop :=
  ∀ n, P6050662294968324862.a n = A177939 (n + 1)

end A177939

/-!
# A177941: a(1)=5; for n>0, a(n+1)=a(n)+p-1, where p is the smallest prime divisor of (a(n))^2-4.

The programs for A177941, there is no canonical definition to state claims against.
-/

/-! ## A177941.P14226878687691164912

`∑[A177942(floor(acot(n)+n))]+2-n`
-/

namespace A177941.P14226878687691164912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177942 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - (n : ℤ))

end

end A177941.P14226878687691164912

/-! ## A177941.P11231856191277508736

`∑[A177942(floor(sqrt(n²+1)))]+2-n`
-/

namespace A177941.P11231856191277508736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177942 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - (n : ℤ))

end

end A177941.P11231856191277508736

/-! ## A177941.P3172039229632607721

`eq[A248908(n+4), A253141(A184392(2*n+1))]`
-/

namespace A177941.P3172039229632607721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253141 (A184392 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177941.P3172039229632607721

/-!
# A177942: Smallest prime divisor of (A177941(n))^2-4.

The programs for A177942, there is no canonical definition to state claims against.
-/

/-! ## A177942.P5054243254139859073

`A020639(A177941(n+1)²-4)`
-/

namespace A177942.P5054243254139859073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A177941 (n + 1) ^ 2 - 4).toNat

end

end A177942.P5054243254139859073

/-! ## A177942.P17568822524433363089

`Δ[A177941(n+1)]+1`
-/

namespace A177942.P17568822524433363089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A177942.P17568822524433363089

/-! ## A177942.P7358120262094370368

`A004442(Δ[A177941(n+1)])`
-/

namespace A177942.P7358120262094370368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (n + 1) - f1 n).toNat

end

end A177942.P7358120262094370368

/-! ## A177942.P12572372659682230574

`A020725(Δ[A177941(n+1)])`
-/

namespace A177942.P12572372659682230574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (n + 1) - f1 n).toNat

end

end A177942.P12572372659682230574

/-! ## A177942.P2502511484531993094

`A034694(Δ[A177941(n+1)])`
-/

namespace A177942.P2502511484531993094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (n + 1) - f1 n).toNat

end

end A177942.P2502511484531993094

/-! ## A177942.P2762548419501033849

`A059843(Δ[A177941(n+1)])`
-/

namespace A177942.P2762548419501033849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (f1 (n + 1) - f1 n).toNat

end

end A177942.P2762548419501033849

/-! ## A177942.P8769727057197761758

`A064632(Δ[A177941(n+1)])`
-/

namespace A177942.P8769727057197761758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064632 (f1 (n + 1) - f1 n).toNat

end

end A177942.P8769727057197761758

/-! ## A177942.P4098677440873340003

`A074399(Δ[A177941(n+1)])`
-/

namespace A177942.P4098677440873340003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (f1 (n + 1) - f1 n).toNat

end

end A177942.P4098677440873340003

/-! ## A177942.P697921427524767198

`A076566(Δ[A177941(n+1)])`
-/

namespace A177942.P697921427524767198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (f1 (n + 1) - f1 n).toNat

end

end A177942.P697921427524767198

/-! ## A177942.P3975423799052100652

`A079228(Δ[A177941(n+1)])`
-/

namespace A177942.P3975423799052100652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (f1 (n + 1) - f1 n).toNat

end

end A177942.P3975423799052100652

/-!
# A177943: Locations of records in A177942.

The programs for A177943, there is no canonical definition to state claims against.
-/

/-! ## A177943.P2386242819308492293

`lt[comp[∑[n]], A177942(n+1)]+1`
-/

namespace A177943.P2386242819308492293
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n + 1

end

end A177943.P2386242819308492293

/-! ## A177943.P2353195530406233491

`lt[A031271(n+1)-A177942(n+1), 1]+1`
-/

namespace A177943.P2353195530406233491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031271 (n + 1) - A177942 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A177943.P2353195530406233491

/-! ## A177943.P6247340539436422854

`record[A055396(n+4)%A177942(A055396(n+4))]`
-/

namespace A177943.P6247340539436422854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (n + 4)) (A177942 (A055396 (n + 4)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177943.P6247340539436422854

/-! ## A177943.P7656537571970030702

`lt[n, Δ[A177941(abs(1-n)+1)]]`
-/

namespace A177943.P7656537571970030702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177943.P7656537571970030702

/-! ## A177943.P13352935258649492729

`record[(n+1)%Δ[A177941(n+1)]]`
-/

namespace A177943.P13352935258649492729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177941 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177943.P13352935258649492729

/-!
# A177944: Array T(n,m) = 1/Beta(n+1, m+1) - n - m read by antidiagonals.

The programs for A177944, there is no canonical definition to state claims against.
-/

/-! ## A177944.P12284984062020901852

`∑[char[∑[n]]]*A014473(n)+1`
-/

namespace A177944.P12284984062020901852
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A014473 n + 1

end

end A177944.P12284984062020901852

/-! ## A177944.P6413425894695048424

`A003506(n+1)+1-∑[char[∑[n]]]`
-/

namespace A177944.P6413425894695048424
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A177944.P6413425894695048424

/-! ## A177944.P316685689513270384

`(A007318(n)-1)*∑[char[∑[n]]]+1`
-/

namespace A177944.P316685689513270384
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1

end

end A177944.P316685689513270384

/-! ## A177944.P13003499888607993353

`A046206(Δ[n²])-∑[char[∑[n+1]]]`
-/

namespace A177944.P13003499888607993353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046206 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A177944.P13003499888607993353

/-! ## A177944.P5779625725367721133

`A046205(2*(n+1))-∑[char[∑[n+1]]]`
-/

namespace A177944.P5779625725367721133
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046205 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A177944.P5779625725367721133

/-! ## A177944.P11846190638510647774

`(A132751(n+1)+1)/2-∑[char[∑[n+1]]]`
-/

namespace A177944.P11846190638510647774
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132751 (n + 1) + 1 : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A177944.P11846190638510647774

/-! ## A177944.P18441663009712543982

`A014473(n)*A123578(n)+1`
-/

namespace A177944.P18441663009712543982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A123578 n + 1

end

end A177944.P18441663009712543982

/-! ## A177944.P6085249569316521790

`A014473(n)*A131919(n)+1`
-/

namespace A177944.P6085249569316521790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A131919 n + 1

end

end A177944.P6085249569316521790

/-! ## A177944.P3016070139543847830

`abs(A003506(n+1)-A003056(n))`
-/

namespace A177944.P3016070139543847830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003506 (n + 1) - A003056 n|

end

end A177944.P3016070139543847830

/-! ## A177944.P18007879332605265320

`A007318(n)*∑[char[∑[n]]]-A003056(n)`
-/

namespace A177944.P18007879332605265320
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A003056 n

end

end A177944.P18007879332605265320

/-!
# A177945: Record values in A177942.

The programs for A177945, there is no canonical definition to state claims against.
-/

/-! ## A177945.P9740609188596437016

`record[A177942(n+1)]`
-/

namespace A177945.P9740609188596437016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177945.P9740609188596437016

/-! ## A177945.P2933401513042546237

`A177942(A177943(n+1))`
-/

namespace A177945.P2933401513042546237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177942 (A177943 (n + 1)).toNat

end

end A177945.P2933401513042546237

/-!
# A177946: a(n) = prime(n)! / n!.

The programs for A177946, the canonical program `A177946.P1748134400576115326` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177946 has offset 1).

The definition of A177946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177946.P3141625504129744590

`A000040(n+1)!/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177946.P3141625504129744590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 1)).toNat : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A177946.P3141625504129744590

namespace A177946

/-- `A000040(n+1)!/(n+1)!` -/
def P3141625504129744590.Spec : Prop :=
  ∀ n, P3141625504129744590.a n = (A177946 (n + 1) : ℚ)

end A177946

/-! ## A177946.P1748134400576115326

`A039716(n+1)/A000142(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A177946

/-- `A039716(n+1)/A000142(n+1)` -/
def P1748134400576115326.Spec : Prop :=
  ∀ n, P1748134400576115326.a n = (A177946 (n + 1) : ℚ)

end A177946

/-! ## A177946.P8069644423012085013

`(n+2)*A178614(n+1)`
-/

namespace A177946.P8069644423012085013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A178614 (n + 1)

end

end A177946.P8069644423012085013

namespace A177946

/-- `(n+2)*A178614(n+1)` -/
def P8069644423012085013.Spec : Prop :=
  ∀ n, P8069644423012085013.a n = A177946 (n + 1)

end A177946

/-! ## A177946.P395714207583826863

`p?[abs(xor(n, -2))]!/(n+1)!`
-/

namespace A177946.P395714207583826863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A177946.P395714207583826863

namespace A177946

/-- `p?[abs(xor(n, -2))]!/(n+1)!` -/
def P395714207583826863.Spec : Prop :=
  ∀ n, P395714207583826863.a n = (A177946 (n + 1) : ℚ)

end A177946

/-! ## A177946.P17004337739164745871

`p?[xor(1, n)+1]!/(n+1)!`
-/

namespace A177946.P17004337739164745871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A177946.P17004337739164745871

namespace A177946

/-- `p?[xor(1, n)+1]!/(n+1)!` -/
def P17004337739164745871.Spec : Prop :=
  ∀ n, P17004337739164745871.a n = (A177946 (n + 1) : ℚ)

end A177946

/-!
# A177947: A symmetrical triangle sequence based on the beta function inverse and the spotlight tile A051601 as antidiagonal: t(n,m) = 1/Integrate[(-1 + t)^n/t^(m + n + 2), {t, 1, Infinity}] - (-2 Binomial[m + n, m] + Binomial[2 + m + n, 1 + m]).

The programs for A177947, there is no canonical definition to state claims against.
-/

/-! ## A177947.P11782735628052721939

`A003506(n+1)-A051601(n)`
-/

namespace A177947.P11782735628052721939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - A051601 n

end

end A177947.P11782735628052721939

/-! ## A177947.P16622455512112900915

`A046205(2*(n+1))-A051601(n)`
-/

namespace A177947.P16622455512112900915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046205 (2 * (n + 1)) - A051601 n

end

end A177947.P16622455512112900915

/-! ## A177947.P8021618396728709767

`A046206(2*n+1)-A051601(n)`
-/

namespace A177947.P8021618396728709767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046206 (2 * n + 1) - A051601 n

end

end A177947.P8021618396728709767

/-! ## A177947.P248114603397422742

`A008619(A132751(n+1))-A051601(n)`
-/

namespace A177947.P248114603397422742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A132751 (n + 1)).toNat - A051601 n

end

end A177947.P248114603397422742

/-! ## A177947.P15813107328336049191

`A127952(A014132(n+1))-A051597(n)`
-/

namespace A177947.P15813107328336049191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 (A014132 (n + 1)).toNat - A051597 n

end

end A177947.P15813107328336049191

/-! ## A177947.P16291922009927004581

`A156644(n)-A055137(A007401(n+1))`
-/

namespace A177947.P16291922009927004581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n - A055137 (A007401 (n + 1)).toNat

end

end A177947.P16291922009927004581

/-! ## A177947.P17182112307611469990

`A216973(A007401(n+1))-A051601(n)`
-/

namespace A177947.P17182112307611469990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 (A007401 (n + 1)).toNat - A051601 n

end

end A177947.P17182112307611469990

/-! ## A177947.P9323997535333883956

`A156644(n)+A025581(n)*A074909(n)`
-/

namespace A177947.P9323997535333883956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n + A025581 n * A074909 n

end

end A177947.P9323997535333883956

/-! ## A177947.P7079827784831303492

`A002024(n+1)*A007318(n)-A051601(n)`
-/

namespace A177947.P7079827784831303492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A007318 n - A051601 n

end

end A177947.P7079827784831303492

/-! ## A177947.P12196462258321017467

`(A003056(n)+1)*A007318(n)-A051601(n)`
-/

namespace A177947.P12196462258321017467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A007318 n - A051601 n

end

end A177947.P12196462258321017467

/-!
# A177948: Numbers n such that n^2 + reverse of n^2 is a prime.

The programs for A177948, there is no canonical definition to state claims against.
-/

/-! ## A177948.P3091736101645120310

`sqrt(A072367(n+1))`
-/

namespace A177948.P3091736101645120310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072367 (n + 1) : ℝ)

end

end A177948.P3091736101645120310

/-! ## A177948.P10735569656644392832

`floor(sqrt(A072367(n-log2(1/2))))`
-/

namespace A177948.P10735569656644392832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A072367 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A177948.P10735569656644392832

/-! ## A177948.P15301763594058801953

`root(A072367(n+1), 2)*A007318(∑[n])`
-/

namespace A177948.P15301763594058801953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072367 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A177948.P15301763594058801953

/-! ## A177948.P2582292480592156083

`root(A072367(n+1), A020639(4*(n+1)))`
-/

namespace A177948.P2582292480592156083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072367 (n + 1) : ℝ) ^ (1 / (A020639 (4 * (n + 1)) : ℝ))

end

end A177948.P2582292480592156083

/-!
# A177949: First string of 43 consecutive composite numbers.

The programs for A177949, there is no canonical definition to state claims against.
-/

/-! ## A177949.P6187495529957856128

`A075043(A262079(n+1))+1+n`
-/

namespace A177949.P6187495529957856128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075043 (A262079 (n + 1)).toNat + 1 + (n : ℤ)

end

end A177949.P6187495529957856128

/-!
# A177950: Numbers k that divide the digit reversal of k^2.

The programs for A177950, there is no canonical definition to state claims against.
-/

/-! ## A177950.P8108544049535587058

`record[gcd(n+1, A002942(n+1))]`
-/

namespace A177950.P8108544049535587058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002942 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177950.P8108544049535587058

/-! ## A177950.P13200134642755671570

`record[A028310(gcd(n, A061226(n)))]`
-/

namespace A177950.P13200134642755671570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A061226 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177950.P13200134642755671570

/-! ## A177950.P16560484760055957519

`record[gcd(A002942(n+1), A131738(n))]`
-/

namespace A177950.P16560484760055957519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002942 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177950.P16560484760055957519

/-! ## A177950.P17927287743323087091

`record[gcd(A061226(n+1)-(n+1)², A000027(n+1))]`
-/

namespace A177950.P17927287743323087091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061226 (n + 1) - ((n + 1) ^ 2 : ℤ)) (A000027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177950.P17927287743323087091

/-! ## A177950.P15341713204029010072

`record[gcd(A004086(n²), A028310(n))]`
-/

namespace A177950.P15341713204029010072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004086 (n ^ 2)) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177950.P15341713204029010072

/-!
# A177951: a(n) = PrimePi(A066903(n)), the index of A066903(n) in the primes.

The programs for A177951, there is no canonical definition to state claims against.
-/

/-! ## A177951.P3347013620444477194

`A000720(A066903(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177951.P3347013620444477194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A066903 (n + 1)).toNat

end

end A177951.P3347013620444477194

/-! ## A177951.P17129799364077887672

`A061395(A066903(n+1)²)`
-/

namespace A177951.P17129799364077887672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A066903 (n + 1) ^ 2).toNat

end

end A177951.P17129799364077887672

/-! ## A177951.P6838357612512426109

`A061395(2*A066903(n+1))`
-/

namespace A177951.P6838357612512426109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A066903 (n + 1)).toNat

end

end A177951.P6838357612512426109

/-! ## A177951.P6701975375497767349

`A049084(A066903(2*n+1-n))`
-/

namespace A177951.P6701975375497767349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A066903 (2 * n + 1 - n)).toNat

end

end A177951.P6701975375497767349

/-! ## A177951.P17918626410075435588

`A066328(A066903(n+1)²)`
-/

namespace A177951.P17918626410075435588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A066903 (n + 1) ^ 2).toNat

end

end A177951.P17918626410075435588

/-! ## A177951.P17652332745987024183

`A297109(A066903(n+1)²)`
-/

namespace A177951.P17652332745987024183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A066903 (n + 1) ^ 2).toNat

end

end A177951.P17652332745987024183

/-! ## A177951.P5157654062730693832

`A000720(p?[A006577(n+1)])`
-/

namespace A177951.P5157654062730693832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177951.P5157654062730693832

/-! ## A177951.P1523892673976558758

`A003963(p?[A006577(n+1)])`
-/

namespace A177951.P1523892673976558758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177951.P1523892673976558758

/-! ## A177951.P1102898246593128142

`A026233(p?[A006577(n+1)])`
-/

namespace A177951.P1102898246593128142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177951.P1102898246593128142

/-! ## A177951.P2247871458996077917

`A026238(p?[A006577(n+1)])`
-/

namespace A177951.P2247871458996077917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177951.P2247871458996077917

/-! ## A177951.P11192760044061751391

`A049084(p?[A006577(n+1)])`
-/

namespace A177951.P11192760044061751391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177951.P11192760044061751391

/-! ## A177951.P7408545564362059869

`A289508(A066903(n+1)²)`
-/

namespace A177951.P7408545564362059869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A066903 (n + 1) ^ 2).toNat

end

end A177951.P7408545564362059869

/-!
# A177952: a(n) = number of n-digit squares in base 10 such that there is at least one permutation that is also a square in base 10. Initial zeros are not allowed for any square.

The programs for A177952, there is no canonical definition to state claims against.
-/

/-! ## A177952.P5536896430930822100

`p?[A045611(n)]%A060884(n)`
-/

namespace A177952.P5536896430930822100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A060884 n)

end

end A177952.P5536896430930822100

/-! ## A177952.P14560483053051389959

`∑{p}[A002473(2*A098520(n)+1)-4^n+1, #]`
-/

namespace A177952.P14560483053051389959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (2 * A098520 n + 1).toNat - (4 ^ n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A177952.P14560483053051389959

/-!
# A177953: Triangle read by rows, binomial transform of triangle A070909.

The programs for A177953, there is no canonical definition to state claims against.
-/

/-! ## A177953.P8677971201857892448

`A106471(n)-A324674(A119763(n+1))`
-/

namespace A177953.P8677971201857892448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106471 n - A324674 (A119763 (n + 1)).toNat

end

end A177953.P8677971201857892448

/-! ## A177953.P10069995572700923641

`A348533(A288972(n)²+n)`
-/

namespace A177953.P10069995572700923641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348533 (A288972 n ^ 2 + (n : ℤ)).toNat

end

end A177953.P10069995572700923641

/-! ## A177953.P15983660806294130322

`A348533((n+1)*A288972(n))`
-/

namespace A177953.P15983660806294130322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348533 ((n + 1 : ℤ) * A288972 n).toNat

end

end A177953.P15983660806294130322

/-! ## A177953.P8807859731857050133

`A348533(n+1)^A331562(n)!`
-/

namespace A177953.P8807859731857050133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348533 (n + 1) ^ Nat.factorial (A331562 n).toNat

end

end A177953.P8807859731857050133

/-! ## A177953.P3007171810872601580

`A333382(A182406(n+1))+A091918(n)`
-/

namespace A177953.P3007171810872601580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A182406 (n + 1)).toNat + A091918 n

end

end A177953.P3007171810872601580

/-!
# A177954: Triangle read by rows, A070909 * Pascal's triangle.

The programs for A177954, there is no canonical definition to state claims against.
-/

/-! ## A177954.P3744661543278846057

`A106486(or(A060543(n), A105438(n)))`
-/

namespace A177954.P3744661543278846057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (Int.lor (A060543 n) (A105438 n)).toNat

end

end A177954.P3744661543278846057

/-! ## A177954.P7278559532014590996

`A050430(A039805(n+1)^A259575(n+1))`
-/

namespace A177954.P7278559532014590996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (SequenceMachineLib.roundAway ((A039805 (n + 1) : ℚ) ^ (A259575 (n + 1) : ℤ))).toNat

end

end A177954.P7278559532014590996

/-! ## A177954.P13574408795572757714

`A060118(A136298(n)-A000041(n))`
-/

namespace A177954.P13574408795572757714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060118 (A136298 n - A000041 n).toNat

end

end A177954.P13574408795572757714

/-! ## A177954.P11528933216437865918

`A086389(A071949(n+1)+1)`
-/

namespace A177954.P11528933216437865918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086389 (A071949 (n + 1) + 1).toNat

end

end A177954.P11528933216437865918

/-!
# A177955: Partial sums of A045542.

The programs for A177955, there is no canonical definition to state claims against.
-/

/-! ## A177955.P12106258005860175247

`∑[A045542(n+1)]`
-/

namespace A177955.P12106258005860175247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P12106258005860175247

/-! ## A177955.P11131594212565625284

`∑[∑[A053289(n+1)]]`
-/

namespace A177955.P11131594212565625284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P11131594212565625284

/-! ## A177955.P16523197216914578041

`∑[∑[A076412(n+1)]]`
-/

namespace A177955.P16523197216914578041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P16523197216914578041

/-! ## A177955.P4185394457680794137

`∑[A216765(n+1)-2]`
-/

namespace A177955.P4185394457680794137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P4185394457680794137

/-! ## A177955.P16290346743062281157

`∑[A001597(n+2)-1]`
-/

namespace A177955.P16290346743062281157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P16290346743062281157

/-! ## A177955.P271453684491739507

`A076408(n+2)-(n+2)`
-/

namespace A177955.P271453684491739507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (n + 2) - (n + 2 : ℤ)

end

end A177955.P271453684491739507

/-! ## A177955.P4751385494152795129

`∑[abs(A157985(n+2))-1]`
-/

namespace A177955.P4751385494152795129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 2)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P4751385494152795129

/-! ## A177955.P2580257977395543447

`∑[sqrt(A340588(n+2))-1]`
-/

namespace A177955.P2580257977395543447
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (n + 2) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P2580257977395543447

/-! ## A177955.P14784124742040881365

`∑[A033999(2*n+1)+A001597(n+2)]`
-/

namespace A177955.P14784124742040881365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P14784124742040881365

/-! ## A177955.P18310317189139424351

`∑[lt[1, A295924(n+1)]]`
-/

namespace A177955.P18310317189139424351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P18310317189139424351

/-! ## A177955.P8984333835915819864

`∑[lt[1, A295920(n+1)]]`
-/

namespace A177955.P8984333835915819864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P8984333835915819864

/-! ## A177955.P17147092284472632080

`∑[lt[1, A295931(n+1)]]`
-/

namespace A177955.P17147092284472632080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295931 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P17147092284472632080

/-! ## A177955.P14013181505301618677

`∑[lt[1, A316782(n+1)]]`
-/

namespace A177955.P14013181505301618677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316782 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P14013181505301618677

/-! ## A177955.P6356600487809039406

`∑[lt[1, A316789(n+1)]]`
-/

namespace A177955.P6356600487809039406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P6356600487809039406

/-! ## A177955.P4874479018749138720

`∑[A143051(A001597(n+2))]`
-/

namespace A177955.P4874479018749138720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A001597 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177955.P4874479018749138720

/-!
# A177956: Smallest k > 0 such that k^prime(n) - prime(n) is prime.

The programs for A177956, there is no canonical definition to state claims against.
-/

/-! ## A177956.P5016271201891465452

`lcm(2, A097794(Δ[A007504(n)]))`
-/

namespace A177956.P5016271201891465452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A097794 (f1 (n + 1) - f1 n).toNat)

end

end A177956.P5016271201891465452

/-! ## A177956.P13916381078643129080

`A097794(A156037(n+1)+1)`
-/

namespace A177956.P13916381078643129080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097794 (A156037 (n + 1) + 1).toNat

end

end A177956.P13916381078643129080

/-! ## A177956.P13239562135095370184

`lcm(A097794(A000040(n+1)), A322357(n+1))`
-/

namespace A177956.P13239562135095370184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097794 (A000040 (n + 1)).toNat) (A322357 (n + 1))

end

end A177956.P13239562135095370184

/-! ## A177956.P2768358391079395906

`A000041(C(2, n))*A097794(A000040(n+1))`
-/

namespace A177956.P2768358391079395906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A097794 (A000040 (n + 1)).toNat

end

end A177956.P2768358391079395906

/-!
# A177959: n-th prime minus number of 0's in binary representation of n-th prime.

The programs for A177959, the canonical program `A177959.P3892879503494814762` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177959 has offset 1).

The definition of A177959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177959.P3892879503494814762

`A000040(n+1)-A035103(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A177959

/-- `A000040(n+1)-A035103(n+1)` -/
def P3892879503494814762.Spec : Prop :=
  ∀ n, P3892879503494814762.a n = A177959 (n + 1)

theorem P3892879503494814762.correct : P3892879503494814762.Spec := by
  intro n
  simp only [A177959, Nat.add_sub_cancel]

end A177959

/-! ## A177959.P15834940262320275169

`Δ[A007504(n)]-A035103(n+1)`
-/

namespace A177959.P15834940262320275169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A035103 (n + 1)

end

end A177959.P15834940262320275169

namespace A177959

/-- `Δ[A007504(n)]-A035103(n+1)` -/
def P15834940262320275169.Spec : Prop :=
  ∀ n, P15834940262320275169.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P854704120317691365

`A163293(n+1)+A014499(n+1)`
-/

namespace A177959.P854704120317691365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163293 (n + 1) + A014499 (n + 1)

end

end A177959.P854704120317691365

namespace A177959

/-- `A163293(n+1)+A014499(n+1)` -/
def P854704120317691365.Spec : Prop :=
  ∀ n, P854704120317691365.a n = A177959 (n + 1)

theorem P854704120317691365.correct : P854704120317691365.Spec := by
  intro n
  simp only [A177959, Nat.add_sub_cancel, A177959.P854704120317691365.a, A177959.P3892879503494814762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A035103, A035103.P1324719609663575418.a, A163293, A163293.P4247609805888595491.a, A000120, A000120.P2816527436160941581.a, A035100, A035100.P16711503485959756516.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177959

/-! ## A177959.P16355481593586416731

`A372516(n+1)+A080085(n+1)`
-/

namespace A177959.P16355481593586416731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372516 (n + 1) + A080085 (n + 1)

end

end A177959.P16355481593586416731

namespace A177959

/-- `A372516(n+1)+A080085(n+1)` -/
def P16355481593586416731.Spec : Prop :=
  ∀ n, P16355481593586416731.a n = A177959 (n + 1)

theorem P16355481593586416731.correct : P16355481593586416731.Spec := by
  intro n
  simp only [A177959, Nat.add_sub_cancel, A177959.P16355481593586416731.a, A177959.P3892879503494814762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A035103, A035103.P1324719609663575418.a, A080085, A080085.P4216384539738297619.a, A372516, A372516.P8084116944890719171.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177959

/-! ## A177959.P16660402957460167036

`A008864(n+1)-A102566(n+1)`
-/

namespace A177959.P16660402957460167036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A102566 (n + 1)

end

end A177959.P16660402957460167036

namespace A177959

/-- `A008864(n+1)-A102566(n+1)` -/
def P16660402957460167036.Spec : Prop :=
  ∀ n, P16660402957460167036.a n = A177959 (n + 1)

theorem P16660402957460167036.correct : P16660402957460167036.Spec := by
  intro n
  simp only [A177959, Nat.add_sub_cancel, A177959.P16660402957460167036.a, A177959.P3892879503494814762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A035103, A035103.P1324719609663575418.a, A102566, A102566.P5376165484103837869.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177959

/-! ## A177959.P1513295047776470128

`A006093(n+1)+1-A035103(n+1)`
-/

namespace A177959.P1513295047776470128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A035103 (n + 1))

end

end A177959.P1513295047776470128

namespace A177959

/-- `A006093(n+1)+1-A035103(n+1)` -/
def P1513295047776470128.Spec : Prop :=
  ∀ n, P1513295047776470128.a n = A177959 (n + 1)

theorem P1513295047776470128.correct : P1513295047776470128.Spec := by
  intro n
  simp only [A177959, Nat.add_sub_cancel, A177959.P1513295047776470128.a, A177959.P3892879503494814762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A035103, A035103.P1324719609663575418.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177959

/-! ## A177959.P1869101325331118809

`A000040(n+1)+1-A102566(n+1)`
-/

namespace A177959.P1869101325331118809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A102566 (n + 1))

end

end A177959.P1869101325331118809

namespace A177959

/-- `A000040(n+1)+1-A102566(n+1)` -/
def P1869101325331118809.Spec : Prop :=
  ∀ n, P1869101325331118809.a n = A177959 (n + 1)

theorem P1869101325331118809.correct : P1869101325331118809.Spec := by
  intro n
  simp only [A177959, Nat.add_sub_cancel, A177959.P1869101325331118809.a, A177959.P3892879503494814762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A035103, A035103.P1324719609663575418.a, A102566, A102566.P5376165484103837869.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177959

/-! ## A177959.P3152867593704101412

`A006093(n+1)+2-A102566(n+1)`
-/

namespace A177959.P3152867593704101412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (2 - A102566 (n + 1))

end

end A177959.P3152867593704101412

namespace A177959

/-- `A006093(n+1)+2-A102566(n+1)` -/
def P3152867593704101412.Spec : Prop :=
  ∀ n, P3152867593704101412.a n = A177959 (n + 1)

theorem P3152867593704101412.correct : P3152867593704101412.Spec := by
  intro n
  simp only [A177959, Nat.add_sub_cancel, A177959.P3152867593704101412.a, A177959.P3892879503494814762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A035103, A035103.P1324719609663575418.a, A102566, A102566.P5376165484103837869.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177959

/-! ## A177959.P3787931052401861736

`record[A006530(n+2)]-A035103(n+1)`
-/

namespace A177959.P3787931052401861736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A035103 (n + 1)

end

end A177959.P3787931052401861736

namespace A177959

/-- `record[A006530(n+2)]-A035103(n+1)` -/
def P3787931052401861736.Spec : Prop :=
  ∀ n, P3787931052401861736.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P3780775288812315447

`record[A020639(n+2)]-A035103(n+1)`
-/

namespace A177959.P3780775288812315447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A035103 (n + 1)

end

end A177959.P3780775288812315447

namespace A177959

/-- `record[A020639(n+2)]-A035103(n+1)` -/
def P3780775288812315447.Spec : Prop :=
  ∀ n, P3780775288812315447.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P10089014780700034481

`record[A000010(n+1)+2]-A102566(n+1)`
-/

namespace A177959.P10089014780700034481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A102566 (n + 1)

end

end A177959.P10089014780700034481

namespace A177959

/-- `record[A000010(n+1)+2]-A102566(n+1)` -/
def P10089014780700034481.Spec : Prop :=
  ∀ n, P10089014780700034481.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P9581819852019758640

`p?[A004280(n+1)]-A035103(n+1)`
-/

namespace A177959.P9581819852019758640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A035103 (n + 1)

end

end A177959.P9581819852019758640

namespace A177959

/-- `p?[A004280(n+1)]-A035103(n+1)` -/
def P9581819852019758640.Spec : Prop :=
  ∀ n, P9581819852019758640.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P68290902262476879

`p?[A000037(n+1)]-A035103(n+1)`
-/

namespace A177959.P68290902262476879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A035103 (n + 1)

end

end A177959.P68290902262476879

namespace A177959

/-- `p?[A000037(n+1)]-A035103(n+1)` -/
def P68290902262476879.Spec : Prop :=
  ∀ n, P68290902262476879.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P11838011436031605649

`A117123(A000040(n+1))`
-/

namespace A177959.P11838011436031605649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117123 (A000040 (n + 1)).toNat

end

end A177959.P11838011436031605649

namespace A177959

/-- `A117123(A000040(n+1))` -/
def P11838011436031605649.Spec : Prop :=
  ∀ n, P11838011436031605649.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P8287221475360059375

`A117123(A006005(n+1))`
-/

namespace A177959.P8287221475360059375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117123 (A006005 (n + 1)).toNat

end

end A177959.P8287221475360059375

namespace A177959

/-- `A117123(A006005(n+1))` -/
def P8287221475360059375.Spec : Prop :=
  ∀ n, P8287221475360059375.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P7673499692799974021

`A117123(A008578(n+2))`
-/

namespace A177959.P7673499692799974021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117123 (A008578 (n + 2)).toNat

end

end A177959.P7673499692799974021

namespace A177959

/-- `A117123(A008578(n+2))` -/
def P7673499692799974021.Spec : Prop :=
  ∀ n, P7673499692799974021.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P10693934972019489145

`A117123(A075643(n+2))`
-/

namespace A177959.P10693934972019489145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117123 (A075643 (n + 2)).toNat

end

end A177959.P10693934972019489145

namespace A177959

/-- `A117123(A075643(n+2))` -/
def P10693934972019489145.Spec : Prop :=
  ∀ n, P10693934972019489145.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P8834037887779200482

`A117123(A182986(n+2))`
-/

namespace A177959.P8834037887779200482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117123 (A182986 (n + 2)).toNat

end

end A177959.P8834037887779200482

namespace A177959

/-- `A117123(A182986(n+2))` -/
def P8834037887779200482.Spec : Prop :=
  ∀ n, P8834037887779200482.a n = A177959 (n + 1)

end A177959

/-! ## A177959.P18223216802203940184

`record[A014963(n+2)]-A035103(n+1)`
-/

namespace A177959.P18223216802203940184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A035103 (n + 1)

end

end A177959.P18223216802203940184

namespace A177959

/-- `record[A014963(n+2)]-A035103(n+1)` -/
def P18223216802203940184.Spec : Prop :=
  ∀ n, P18223216802203940184.a n = A177959 (n + 1)

end A177959

/-!
# A177960: Numbers of the form A001317(t), excluding those at places of the form t=m*(2^k-1), m>=0, k>=2.

The programs for A177960, there is no canonical definition to state claims against.
-/

/-! ## A177960.P11523285654760255879

`A001317(A161790(n+1))`
-/

namespace A177960.P11523285654760255879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A161790 (n + 1)).toNat

end

end A177960.P11523285654760255879

/-! ## A177960.P18253959458130318105

`A004729(A161790(n+1)+A025443(n))`
-/

namespace A177960.P18253959458130318105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004729 (A161790 (n + 1) + A025443 n).toNat

end

end A177960.P18253959458130318105

/-! ## A177960.P14458220357464466410

`A045544(A161790(n+1)+A025443(n))`
-/

namespace A177960.P14458220357464466410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045544 (A161790 (n + 1) + A025443 n).toNat

end

end A177960.P14458220357464466410

/-! ## A177960.P7318284399808114910

`A004729(A161790(n+1)%A038192(n))`
-/

namespace A177960.P7318284399808114910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004729 (Int.tmod (A161790 (n + 1)) (A038192 n)).toNat

end

end A177960.P7318284399808114910

/-! ## A177960.P11248454570209040548

`A045544(lcm(A033999(n), A161790(n+1)))`
-/

namespace A177960.P11248454570209040548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045544 (Int.lcm (A033999 n) (A161790 (n + 1)))

end

end A177960.P11248454570209040548

/-!
# A177961: a(1)=2. Otherwise the average of the smallest prime divisors of 2n-1 and 2n+1.

The programs for A177961, there is no canonical definition to state claims against.
-/

/-! ## A177961.P18048944745260247388

`(A090368(n+1)+A090368(n+2))/2`
-/

namespace A177961.P18048944745260247388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090368 (n + 1) + A090368 (n + 2) : ℚ) / 2

end

end A177961.P18048944745260247388

/-! ## A177961.P10094866093361340596

`(A092028(2*(n+2))+A020639(2*n+1))/2`
-/

namespace A177961.P10094866093361340596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092028 (2 * (n + 2)) + A020639 (2 * n + 1) : ℚ) / 2

end

end A177961.P10094866093361340596

/-! ## A177961.P10267510698245720579

`(A126800(2*n+3)+A020639(2*n+1))/2`
-/

namespace A177961.P10267510698245720579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126800 (2 * n + 3) + A020639 (2 * n + 1) : ℚ) / 2

end

end A177961.P10267510698245720579

/-! ## A177961.P10697661492044507726

`A078701(2*n+1)+Δ[A004526(A078701(2*n+1))]`
-/

namespace A177961.P10697661492044507726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078701 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A177961.P10697661492044507726

/-! ## A177961.P7887457109588231480

`A004526(A090368(n+2)+A090368(n+1))`
-/

namespace A177961.P7887457109588231480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A090368 (n + 2) + A090368 (n + 1)).toNat

end

end A177961.P7887457109588231480

/-! ## A177961.P13162117119409456578

`A032742(A090368(n+1)+A090368(n+2))`
-/

namespace A177961.P13162117119409456578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A090368 (n + 1) + A090368 (n + 2)).toNat

end

end A177961.P13162117119409456578

/-! ## A177961.P18127368215200718537

`A065033(A090368(n+1)+A090368(n+2))`
-/

namespace A177961.P18127368215200718537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A090368 (n + 1) + A090368 (n + 2)).toNat

end

end A177961.P18127368215200718537

/-! ## A177961.P16217192130374176478

`A123108(A090368(n+2)+A090368(n+1))`
-/

namespace A177961.P16217192130374176478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A090368 (n + 2) + A090368 (n + 1)).toNat

end

end A177961.P16217192130374176478

/-! ## A177961.P16099062901957767237

`A142150(A078701(2*n+1)+p?[A078701(2*n+1)])`
-/

namespace A177961.P16099062901957767237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A078701 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177961.P16099062901957767237

/-! ## A177961.P9463105374782923958

`(A245689(2*n+3)+A020639(2*n+1))/2`
-/

namespace A177961.P9463105374782923958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245689 (2 * n + 3) + A020639 (2 * n + 1) : ℚ) / 2

end

end A177961.P9463105374782923958

/-! ## A177961.P3712950653500701211

`A171181(A090368(n+2)+A090368(n+1))`
-/

namespace A177961.P3712950653500701211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A090368 (n + 2) + A090368 (n + 1)).toNat

end

end A177961.P3712950653500701211

/-!
# A177962: Number of distinct transpositions of prime factors of n-th composite number.

The programs for A177962, the canonical program `A177962.P7538067305498914461` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177962 has offset 1).

The definition of A177962 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177962.P7538067305498914461

`A008480(A002808(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A177962

/-- `A008480(A002808(n+1))` -/
def P7538067305498914461.Spec : Prop :=
  ∀ n, P7538067305498914461.a n = A177962 (n + 1)

theorem P7538067305498914461.correct : P7538067305498914461.Spec := by
  intro n
  simp only [A177962, Nat.add_sub_cancel]

end A177962

/-! ## A177962.P7993579593547423811

`A008480(A083256(n+2))`
-/

namespace A177962.P7993579593547423811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A083256 (n + 2)).toNat

end

end A177962.P7993579593547423811

namespace A177962

/-- `A008480(A083256(n+2))` -/
def P7993579593547423811.Spec : Prop :=
  ∀ n, P7993579593547423811.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P17745884236108765764

`A008480(A083257(n+2))`
-/

namespace A177962.P17745884236108765764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A083257 (n + 2)).toNat

end

end A177962.P17745884236108765764

namespace A177962

/-- `A008480(A083257(n+2))` -/
def P17745884236108765764.Spec : Prop :=
  ∀ n, P17745884236108765764.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P6701287130762036600

`A008480(Δ[A053767(n)])`
-/

namespace A177962.P6701287130762036600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (f1 (n + 1) - f1 n).toNat

end

end A177962.P6701287130762036600

namespace A177962

/-- `A008480(Δ[A053767(n)])` -/
def P6701287130762036600.Spec : Prop :=
  ∀ n, P6701287130762036600.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P8360801120079577402

`A008480(A056653(n+1))`
-/

namespace A177962.P8360801120079577402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A056653 (n + 1)).toNat

end

end A177962.P8360801120079577402

namespace A177962

/-- `A008480(A056653(n+1))` -/
def P8360801120079577402.Spec : Prop :=
  ∀ n, P8360801120079577402.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P6577874937725223727

`A008480(A018252(n+2))`
-/

namespace A177962.P6577874937725223727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A018252 (n + 2)).toNat

end

end A177962.P6577874937725223727

namespace A177962

/-- `A008480(A018252(n+2))` -/
def P6577874937725223727.Spec : Prop :=
  ∀ n, P6577874937725223727.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P12237863267427012884

`A008480(A141468(n+3))`
-/

namespace A177962.P12237863267427012884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A141468 (n + 3)).toNat

end

end A177962.P12237863267427012884

namespace A177962

/-- `A008480(A141468(n+3))` -/
def P12237863267427012884.Spec : Prop :=
  ∀ n, P12237863267427012884.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P2747487468389203722

`A008480(lt[1, A003415(n)])`
-/

namespace A177962.P2747487468389203722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A177962.P2747487468389203722

namespace A177962

/-- `A008480(lt[1, A003415(n)])` -/
def P2747487468389203722.Spec : Prop :=
  ∀ n, P2747487468389203722.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P12498524626066162513

`A008480(lt[1, A032741(n)])`
-/

namespace A177962.P12498524626066162513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A177962.P12498524626066162513

namespace A177962

/-- `A008480(lt[1, A032741(n)])` -/
def P12498524626066162513.Spec : Prop :=
  ∀ n, P12498524626066162513.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P11772997980665377915

`A008480(comp[C(A006530(n+1), n)])`
-/

namespace A177962.P11772997980665377915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A177962.P11772997980665377915

namespace A177962

/-- `A008480(comp[C(A006530(n+1), n)])` -/
def P11772997980665377915.Spec : Prop :=
  ∀ n, P11772997980665377915.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P6815903279076776542

`A008480(lt[2, A000005(n+1)]+1)`
-/

namespace A177962.P6815903279076776542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A177962.P6815903279076776542

namespace A177962

/-- `A008480(lt[2, A000005(n+1)]+1)` -/
def P6815903279076776542.Spec : Prop :=
  ∀ n, P6815903279076776542.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P925026832978513494

`A168324(lt[2, A046523(n+1)]+1)`
-/

namespace A177962.P925026832978513494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A177962.P925026832978513494

namespace A177962

/-- `A168324(lt[2, A046523(n+1)]+1)` -/
def P925026832978513494.Spec : Prop :=
  ∀ n, P925026832978513494.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P4952448738891048515

`A168324(A002808(2*n+1-n))`
-/

namespace A177962.P4952448738891048515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A002808 (2 * n + 1 - n)).toNat

end

end A177962.P4952448738891048515

namespace A177962

/-- `A168324(A002808(2*n+1-n))` -/
def P4952448738891048515.Spec : Prop :=
  ∀ n, P4952448738891048515.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P7303544221708333001

`A008480(lt[A000010(n+1), n]+1)`
-/

namespace A177962.P7303544221708333001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A177962.P7303544221708333001

namespace A177962

/-- `A008480(lt[A000010(n+1), n]+1)` -/
def P7303544221708333001.Spec : Prop :=
  ∀ n, P7303544221708333001.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P7464521461673759043

`A008480(lt[A006530(n+1), n]+1)`
-/

namespace A177962.P7464521461673759043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A177962.P7464521461673759043

namespace A177962

/-- `A008480(lt[A006530(n+1), n]+1)` -/
def P7464521461673759043.Spec : Prop :=
  ∀ n, P7464521461673759043.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P3670841163729848006

`A008480(lt[A014963(n+1), n]+1)`
-/

namespace A177962.P3670841163729848006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A177962.P3670841163729848006

namespace A177962

/-- `A008480(lt[A014963(n+1), n]+1)` -/
def P3670841163729848006.Spec : Prop :=
  ∀ n, P3670841163729848006.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P10298166971697311352

`A008480(lt[A020639(n+1), n]+1)`
-/

namespace A177962.P10298166971697311352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A177962.P10298166971697311352

namespace A177962

/-- `A008480(lt[A020639(n+1), n]+1)` -/
def P10298166971697311352.Spec : Prop :=
  ∀ n, P10298166971697311352.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P9440290364552374227

`A168324(lt[A006530(n+1), n]+1)`
-/

namespace A177962.P9440290364552374227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A177962.P9440290364552374227

namespace A177962

/-- `A168324(lt[A006530(n+1), n]+1)` -/
def P9440290364552374227.Spec : Prop :=
  ∀ n, P9440290364552374227.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P2012612063952848115

`A168324(lt[A014963(n+1), n]+1)`
-/

namespace A177962.P2012612063952848115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A177962.P2012612063952848115

namespace A177962

/-- `A168324(lt[A014963(n+1), n]+1)` -/
def P2012612063952848115.Spec : Prop :=
  ∀ n, P2012612063952848115.a n = A177962 (n + 1)

end A177962

/-! ## A177962.P13614897407397370188

`A008480(A053767(n+1)-A053767(n))`
-/

namespace A177962.P13614897407397370188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A053767 (n + 1) - A053767 n).toNat

end

end A177962.P13614897407397370188

namespace A177962

/-- `A008480(A053767(n+1)-A053767(n))` -/
def P13614897407397370188.Spec : Prop :=
  ∀ n, P13614897407397370188.a n = A177962 (n + 1)

end A177962

/-!
# A177963: a(n) = ((prime(n) - 3)!)^2.

The programs for A177963, the canonical program `A177963.P16040067320845171153` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177963 has offset 2).

The definition of A177963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+2)-3)!²` (program `A177963.P16040067320845171153`, by `A177963.P16040067320845171153.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177963.P16040067320845171153

`(A000040(n+2)-3)!²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177963

/-- `(A000040(n+2)-3)!²` -/
def P16040067320845171153.Spec : Prop :=
  ∀ n, (P16040067320845171153.a n : ℤ) = A177963 (n + 2)

theorem P16040067320845171153.correct : P16040067320845171153.Spec := by
  intro n
  simp only [A177963, Nat.add_sub_cancel]

end A177963

/-! ## A177963.P10536457558462263520

`(p?[Δ[n²]]-3)!²`
-/

namespace A177963.P10536457558462263520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3).toNat ^ 2

end

end A177963.P10536457558462263520

namespace A177963

/-- `(p?[Δ[n²]]-3)!²` -/
def P10536457558462263520.Spec : Prop :=
  ∀ n, (P10536457558462263520.a n : ℤ) = A177963 (n + 2)

end A177963

/-! ## A177963.P4184234866291908694

`record[∑{p}[n, #-3]]!²`
-/

namespace A177963.P4184234866291908694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A177963.P4184234866291908694

namespace A177963

/-- `record[∑{p}[n, #-3]]!²` -/
def P4184234866291908694.Spec : Prop :=
  ∀ n, (P4184234866291908694.a n : ℤ) = A177963 (n + 2)

end A177963

/-! ## A177963.P15742876320172035924

`eq[1, A001222(n+3)]!²`
-/

namespace A177963.P15742876320172035924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A177963.P15742876320172035924

namespace A177963

/-- `eq[1, A001222(n+3)]!²` -/
def P15742876320172035924.Spec : Prop :=
  ∀ n, (P15742876320172035924.a n : ℤ) = A177963 (n + 2)

end A177963

/-! ## A177963.P16306505537667793523

`eq[2, A000005(n+3)]!²`
-/

namespace A177963.P16306505537667793523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A177963.P16306505537667793523

namespace A177963

/-- `eq[2, A000005(n+3)]!²` -/
def P16306505537667793523.Spec : Prop :=
  ∀ n, (P16306505537667793523.a n : ℤ) = A177963 (n + 2)

end A177963

/-!
# A177964: Indices m for which A177961(m) = 4.

The programs for A177964, the canonical program `A177964.P13256764084600717612` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177964 has offset 1).

The definition of A177964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177964.P13256764084600717612

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=13, a(2)=17`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177964

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P13256764084600717612.Spec : Prop :=
  ∀ n, P13256764084600717612.a n = A177964 (n + 1)

theorem P13256764084600717612.correct : P13256764084600717612.Spec := by
  intro n
  simp only [A177964, Nat.add_sub_cancel]

end A177964

/-! ## A177964.P3508423861790229229

`15*((n+1)/2-1/4)+7*(-1)^(n+1)/4`
-/

namespace A177964.P3508423861790229229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 * ((n + 1 : ℚ) / 2 - (1 : ℚ) / 4) + (7 * (-1) ^ (n + 1) : ℚ) / 4

end

end A177964.P3508423861790229229

namespace A177964

/-- `15*((n+1)/2-1/4)+7*(-1)^(n+1)/4` -/
def P3508423861790229229.Spec : Prop :=
  ∀ n, P3508423861790229229.a n = (A177964 (n + 1) : ℚ)

theorem P3508423861790229229.correct : P3508423861790229229.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A177964, Nat.add_sub_cancel, A177964.P3508423861790229229.a, A177964.P13256764084600717612.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A177964, Nat.add_sub_cancel, A177964.P3508423861790229229.a, A177964.P13256764084600717612.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177964

/-! ## A177964.P16041875636516419714

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=11, a(2)=4`
-/

namespace A177964.P16041875636516419714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 11, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177964.P16041875636516419714

namespace A177964

/-- `∑[abs(a(n-2))]` -/
def P16041875636516419714.Spec : Prop :=
  ∀ n, (P16041875636516419714.a n : ℤ) = A177964 (n + 1)

end A177964

/-! ## A177964.P16759667341270989878

`∑[15-a(n-1)]` with `a(0)=2, a(1)=11`
-/

namespace A177964.P16759667341270989878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 11] fun n f1 =>
  15 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177964.P16759667341270989878

namespace A177964

/-- `∑[15-a(n-1)]` -/
def P16759667341270989878.Spec : Prop :=
  ∀ n, P16759667341270989878.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P8533969779255542462

`Δ[A195043(n)+n²]`
-/

namespace A177964.P8533969779255542462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177964.P8533969779255542462

namespace A177964

/-- `Δ[A195043(n)+n²]` -/
def P8533969779255542462.Spec : Prop :=
  ∀ n, P8533969779255542462.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P4272671849560693800

`A167533(n)%A231002(n+1)`
-/

namespace A177964.P4272671849560693800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167533 n) (A231002 (n + 1))

end

end A177964.P4272671849560693800

namespace A177964

/-- `A167533(n)%A231002(n+1)` -/
def P4272671849560693800.Spec : Prop :=
  ∀ n, P4272671849560693800.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P15494242312154637029

`abs(A228937(2*n+1))`
-/

namespace A177964.P15494242312154637029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228937 (2 * n + 1)|

end

end A177964.P15494242312154637029

namespace A177964

/-- `abs(A228937(2*n+1))` -/
def P15494242312154637029.Spec : Prop :=
  ∀ n, P15494242312154637029.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P4759990474451876030

`A379211(A042948(n+1))`
-/

namespace A177964.P4759990474451876030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379211 (A042948 (n + 1)).toNat

end

end A177964.P4759990474451876030

namespace A177964

/-- `A379211(A042948(n+1))` -/
def P4759990474451876030.Spec : Prop :=
  ∀ n, P4759990474451876030.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P7275042489794979769

`∩[A003664(n+1), A379211(n+1)]`
-/

namespace A177964.P7275042489794979769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177964.P7275042489794979769

namespace A177964

/-- `∩[A003664(n+1), A379211(n+1)]` -/
def P7275042489794979769.Spec : Prop :=
  ∀ n, (P7275042489794979769.a n : ℤ) = A177964 (n + 1)

end A177964

/-! ## A177964.P8205395950708196867

`A166539(3*n+1)`
-/

namespace A177964.P8205395950708196867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (3 * n + 1)

end

end A177964.P8205395950708196867

namespace A177964

/-- `A166539(3*n+1)` -/
def P8205395950708196867.Spec : Prop :=
  ∀ n, P8205395950708196867.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P16267457575000478025

`A047221(A047225(n+2))`
-/

namespace A177964.P16267457575000478025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (A047225 (n + 2)).toNat

end

end A177964.P16267457575000478025

namespace A177964

/-- `A047221(A047225(n+2))` -/
def P16267457575000478025.Spec : Prop :=
  ∀ n, P16267457575000478025.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P14499946877029877650

`∩[A003664(n+1), A047221(n+1)]`
-/

namespace A177964.P14499946877029877650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177964.P14499946877029877650

namespace A177964

/-- `∩[A003664(n+1), A047221(n+1)]` -/
def P14499946877029877650.Spec : Prop :=
  ∀ n, (P14499946877029877650.a n : ℤ) = A177964 (n + 1)

end A177964

/-! ## A177964.P1925772907371917588

`A229829(A047524(n+1))`
-/

namespace A177964.P1925772907371917588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (A047524 (n + 1)).toNat

end

end A177964.P1925772907371917588

namespace A177964

/-- `A229829(A047524(n+1))` -/
def P1925772907371917588.Spec : Prop :=
  ∀ n, P1925772907371917588.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P12263259335125233132

`A229829(A007310(n+1)+n+1)`
-/

namespace A177964.P12263259335125233132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (A007310 (n + 1) + (n + 1 : ℤ)).toNat

end

end A177964.P12263259335125233132

namespace A177964

/-- `A229829(A007310(n+1)+n+1)` -/
def P12263259335125233132.Spec : Prop :=
  ∀ n, P12263259335125233132.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P14811970226063815394

`∩[A003664(n+1), A229829(n+1)]`
-/

namespace A177964.P14811970226063815394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177964.P14811970226063815394

namespace A177964

/-- `∩[A003664(n+1), A229829(n+1)]` -/
def P14811970226063815394.Spec : Prop :=
  ∀ n, (P14811970226063815394.a n : ℤ) = A177964 (n + 1)

end A177964

/-! ## A177964.P16645510363576501530

`A047202(A056020(n+1))`
-/

namespace A177964.P16645510363576501530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (A056020 (n + 1)).toNat

end

end A177964.P16645510363576501530

namespace A177964

/-- `A047202(A056020(n+1))` -/
def P16645510363576501530.Spec : Prop :=
  ∀ n, P16645510363576501530.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P3480660818137968042

`A001651(A273669(n+1))`
-/

namespace A177964.P3480660818137968042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A273669 (n + 1)).toNat

end

end A177964.P3480660818137968042

namespace A177964

/-- `A001651(A273669(n+1))` -/
def P3480660818137968042.Spec : Prop :=
  ∀ n, P3480660818137968042.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P13137564809166159691

`A187335(A090771(n+1))`
-/

namespace A177964.P13137564809166159691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187335 (A090771 (n + 1)).toNat

end

end A177964.P13137564809166159691

namespace A177964

/-- `A187335(A090771(n+1))` -/
def P13137564809166159691.Spec : Prop :=
  ∀ n, P13137564809166159691.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P5784481586796031

`A368923(A271508(n+1))`
-/

namespace A177964.P5784481586796031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368923 (A271508 (n + 1)).toNat

end

end A177964.P5784481586796031

namespace A177964

/-- `A368923(A271508(n+1))` -/
def P5784481586796031.Spec : Prop :=
  ∀ n, P5784481586796031.a n = A177964 (n + 1)

end A177964

/-! ## A177964.P9221818544993759708

`A001651(A091999(n+1)-n)`
-/

namespace A177964.P9221818544993759708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A091999 (n + 1) - (n : ℤ)).toNat

end

end A177964.P9221818544993759708

namespace A177964

/-- `A001651(A091999(n+1)-n)` -/
def P9221818544993759708.Spec : Prop :=
  ∀ n, P9221818544993759708.a n = A177964 (n + 1)

end A177964

/-!
# A177965: Indices m for which A177961(m) - m = 1.

The programs for A177965, the canonical program `A177965.P6446692757062055516` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177965 has offset 1).

The definition of A177965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177965.P6446692757062055516

`ceil(p?[abs(2-3*n)]/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177965

/-- `ceil(p?[abs(2-3*n)]/2)` -/
def P6446692757062055516.Spec : Prop :=
  ∀ n, P6446692757062055516.a n = A177965 (n + 1)

theorem P6446692757062055516.correct : P6446692757062055516.Spec := by
  intro n
  simp only [A177965, Nat.add_sub_cancel]

end A177965

/-! ## A177965.P17991759687167783117

`round(p?[abs(4*n-2-n)]/2)`
-/

namespace A177965.P17991759687167783117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n : ℤ) - 2 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2)

end

end A177965.P17991759687167783117

namespace A177965

/-- `round(p?[abs(4*n-2-n)]/2)` -/
def P17991759687167783117.Spec : Prop :=
  ∀ n, P17991759687167783117.a n = A177965 (n + 1)

end A177965

/-! ## A177965.P202269526011834311

`ceil(A045375(n+1)/2)`
-/

namespace A177965.P202269526011834311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045375 (n + 1) : ℚ) / 2⌉

end

end A177965.P202269526011834311

namespace A177965

/-- `ceil(A045375(n+1)/2)` -/
def P202269526011834311.Spec : Prop :=
  ∀ n, P202269526011834311.a n = A177965 (n + 1)

end A177965

/-! ## A177965.P14955686318912664157

`ceil(A123365(n+1)/2)`
-/

namespace A177965.P14955686318912664157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123365 (n + 1) : ℚ) / 2⌉

end

end A177965.P14955686318912664157

namespace A177965

/-- `ceil(A123365(n+1)/2)` -/
def P14955686318912664157.Spec : Prop :=
  ∀ n, P14955686318912664157.a n = A177965 (n + 1)

end A177965

/-! ## A177965.P12338336927618892503

`(A007645(n+1)-A153881(n+1))/2`
-/

namespace A177965.P12338336927618892503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007645 (n + 1) - A153881 (n + 1) : ℚ) / 2

end

end A177965.P12338336927618892503

namespace A177965

/-- `(A007645(n+1)-A153881(n+1))/2` -/
def P12338336927618892503.Spec : Prop :=
  ∀ n, P12338336927618892503.a n = (A177965 (n + 1) : ℚ)

end A177965

/-! ## A177965.P12113659808765200749

`(A007645(n+1)%A000176(n+1)+1)/2`
-/

namespace A177965.P12113659808765200749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A007645 (n + 1)) (A000176 (n + 1)) + 1 : ℚ) / 2

end

end A177965.P12113659808765200749

namespace A177965

/-- `(A007645(n+1)%A000176(n+1)+1)/2` -/
def P12113659808765200749.Spec : Prop :=
  ∀ n, P12113659808765200749.a n = (A177965 (n + 1) : ℚ)

end A177965

/-! ## A177965.P8055700297993254207

`record[ceil(A006530(3*n+1)/2)]`
-/

namespace A177965.P8055700297993254207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (3 * n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177965.P8055700297993254207

namespace A177965

/-- `record[ceil(A006530(3*n+1)/2)]` -/
def P8055700297993254207.Spec : Prop :=
  ∀ n, P8055700297993254207.a n = A177965 (n + 1)

end A177965

/-! ## A177965.P14943433781987155501

`record[ceil(A020639(3*n+1)/2)]`
-/

namespace A177965.P14943433781987155501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (3 * n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177965.P14943433781987155501

namespace A177965

/-- `record[ceil(A020639(3*n+1)/2)]` -/
def P14943433781987155501.Spec : Prop :=
  ∀ n, P14943433781987155501.a n = A177965 (n + 1)

end A177965

/-! ## A177965.P18387593842971134886

`(record[A006530(6*n+1)]+1)/2`
-/

namespace A177965.P18387593842971134886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A177965.P18387593842971134886

namespace A177965

/-- `(record[A006530(6*n+1)]+1)/2` -/
def P18387593842971134886.Spec : Prop :=
  ∀ n, P18387593842971134886.a n = (A177965 (n + 1) : ℚ)

end A177965

/-! ## A177965.P5755246369895827134

`(record[A020639(5*n+1+n)]+1)/2`
-/

namespace A177965.P5755246369895827134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 1 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A177965.P5755246369895827134

namespace A177965

/-- `(record[A020639(5*n+1+n)]+1)/2` -/
def P5755246369895827134.Spec : Prop :=
  ∀ n, P5755246369895827134.a n = (A177965 (n + 1) : ℚ)

end A177965

/-! ## A177965.P11864029272581090886

`∩[A111333(n+1), A016777(n)]`
-/

namespace A177965.P11864029272581090886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177965.P11864029272581090886

namespace A177965

/-- `∩[A111333(n+1), A016777(n)]` -/
def P11864029272581090886.Spec : Prop :=
  ∀ n, (P11864029272581090886.a n : ℤ) = A177965 (n + 1)

end A177965

/-! ## A177965.P16109736127537546431

`∩[A111333(n+1), A130824(n)-n]`
-/

namespace A177965.P16109736127537546431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177965.P16109736127537546431

namespace A177965

/-- `∩[A111333(n+1), A130824(n)-n]` -/
def P16109736127537546431.Spec : Prop :=
  ∀ n, (P16109736127537546431.a n : ℤ) = A177965 (n + 1)

end A177965

/-! ## A177965.P6926421684103547608

`∩[A174047(n+1), A016777(n)]`
-/

namespace A177965.P6926421684103547608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177965.P6926421684103547608

namespace A177965

/-- `∩[A174047(n+1), A016777(n)]` -/
def P6926421684103547608.Spec : Prop :=
  ∀ n, (P6926421684103547608.a n : ℤ) = A177965 (n + 1)

end A177965

/-! ## A177965.P17716150584967458494

`∩[A033627(n+1), A174047(n+1)]`
-/

namespace A177965.P17716150584967458494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177965.P17716150584967458494

namespace A177965

/-- `∩[A033627(n+1), A174047(n+1)]` -/
def P17716150584967458494.Spec : Prop :=
  ∀ n, (P17716150584967458494.a n : ℤ) = A177965 (n + 1)

end A177965

/-! ## A177965.P17252465811639591883

`∩[A047259(n+1), A111333(n+1)]`
-/

namespace A177965.P17252465811639591883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177965.P17252465811639591883

namespace A177965

/-- `∩[A047259(n+1), A111333(n+1)]` -/
def P17252465811639591883.Spec : Prop :=
  ∀ n, (P17252465811639591883.a n : ℤ) = A177965 (n + 1)

end A177965

/-! ## A177965.P12741900301896194442

`∩[A111333(n+1), A189707(n+1)]`
-/

namespace A177965.P12741900301896194442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177965.P12741900301896194442

namespace A177965

/-- `∩[A111333(n+1), A189707(n+1)]` -/
def P12741900301896194442.Spec : Prop :=
  ∀ n, (P12741900301896194442.a n : ℤ) = A177965 (n + 1)

end A177965

/-! ## A177965.P12919298657571004486

`record[A076511(A323249(n+1))]`
-/

namespace A177965.P12919298657571004486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (A323249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177965.P12919298657571004486

namespace A177965

/-- `record[A076511(A323249(n+1))]` -/
def P12919298657571004486.Spec : Prop :=
  ∀ n, P12919298657571004486.a n = A177965 (n + 1)

end A177965

/-! ## A177965.P8109669704265730069

`3*A064680(lt[A001222(3*n+1), 2])+1`
-/

namespace A177965.P8109669704265730069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064680 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1

end

end A177965.P8109669704265730069

namespace A177965

/-- `3*A064680(lt[A001222(3*n+1), 2])+1` -/
def P8109669704265730069.Spec : Prop :=
  ∀ n, P8109669704265730069.a n = A177965 (n + 1)

end A177965

/-! ## A177965.P8588529277815265852

`eq[n+1, A177961(A028310(n))]`
-/

namespace A177965.P8588529277815265852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177965.P8588529277815265852

namespace A177965

/-- `eq[n+1, A177961(A028310(n))]` -/
def P8588529277815265852.Spec : Prop :=
  ∀ n, (P8588529277815265852.a n : ℤ) = A177965 (n + 1)

end A177965

/-! ## A177965.P149959919300797635

`eq[A049347(n), A281680(n)]+1`
-/

namespace A177965.P149959919300797635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177965.P149959919300797635

namespace A177965

/-- `eq[A049347(n), A281680(n)]+1` -/
def P149959919300797635.Spec : Prop :=
  ∀ n, (P149959919300797635.a n : ℤ) = A177965 (n + 1)

end A177965

/-!
# A177966: Indices m for which A177961(m) = 2 + m.

The programs for A177966, there is no canonical definition to state claims against.
-/

/-! ## A177966.P18182046669518552317

`eq[n+4, A177961(n+2)]+2`
-/

namespace A177966.P18182046669518552317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A177966.P18182046669518552317

/-! ## A177966.P9687679838628086768

`eq[n+2, A177961(A000038(n)+n)]`
-/

namespace A177966.P9687679838628086768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177966.P9687679838628086768

/-! ## A177966.P18298370746583238129

`eq[A065475(n+1), A177961(A028310(n))]`
-/

namespace A177966.P18298370746583238129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177966.P18298370746583238129

/-! ## A177966.P4138947046340316128

`eq[A016789(A184726(n+1)), A090368(n+1)]`
-/

namespace A177966.P4138947046340316128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A184726 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177966.P4138947046340316128

/-! ## A177966.P14083729427824938933

`eq[A020639(2*n+1), A016789(A184726(n+1))]`
-/

namespace A177966.P14083729427824938933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A184726 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177966.P14083729427824938933

/-! ## A177966.P9537288379081328567

`eq[n+2, A177961(A233583(n+1))]`
-/

namespace A177966.P9537288379081328567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177966.P9537288379081328567

/-!
# A177968: Companion value m associated with A177967(n).

The programs for A177968, there is no canonical definition to state claims against.
-/

/-! ## A177968.P7712688851021977213

`eq[A029356(n), A294283(A054541(n+1))]`
-/

namespace A177968.P7712688851021977213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294283 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177968.P7712688851021977213

/-! ## A177968.P16232674161817593613

`eq[comp[A220668(n)], A002192(n+1)]`
-/

namespace A177968.P16232674161817593613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220668 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177968.P16232674161817593613

/-! ## A177968.P7438259061820702240

`eq[comp[A272818(n+1)], A002192(n+1)]`
-/

namespace A177968.P7438259061820702240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272818 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177968.P7438259061820702240

/-!
# A177970: Array T(n,m) = A177944(2*n,2*m) read by antidiagonals.

The programs for A177970, the canonical program `A177970.P282440303243635367` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177970 has offset 0).

The definition of A177970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177970.P282440303243635367

`A003506(A185868(n+1))-A279891(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A177970

/-- `A003506(A185868(n+1))-A279891(n)` -/
def P282440303243635367.Spec : Prop :=
  ∀ n, P282440303243635367.a n = A177970 n

theorem P282440303243635367.correct : P282440303243635367.Spec := by
  intro n
  simp only [A177970]

end A177970

/-! ## A177970.P18399654296930550570

`A010879(A022175(n))*A141596(n)`
-/

namespace A177970.P18399654296930550570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A022175 n).toNat * A141596 n

end

end A177970.P18399654296930550570

namespace A177970

/-- `A010879(A022175(n))*A141596(n)` -/
def P18399654296930550570.Spec : Prop :=
  ∀ n, P18399654296930550570.a n = A177970 n

end A177970

/-! ## A177970.P17525053483965727793

`A027615(A022180(n))*A141596(n)`
-/

namespace A177970.P17525053483965727793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A022180 n).toNat * A141596 n

end

end A177970.P17525053483965727793

namespace A177970

/-- `A027615(A022180(n))*A141596(n)` -/
def P17525053483965727793.Spec : Prop :=
  ∀ n, P17525053483965727793.a n = A177970 n

end A177970

/-! ## A177970.P4028018223302081266

`A007318(n)*A118759(A141596(n))`
-/

namespace A177970.P4028018223302081266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A118759 (A141596 n).toNat

end

end A177970.P4028018223302081266

namespace A177970

/-- `A007318(n)*A118759(A141596(n))` -/
def P4028018223302081266.Spec : Prop :=
  ∀ n, P4028018223302081266.a n = A177970 n

end A177970

/-! ## A177970.P1518612649001944942

`A141596(n)*A166155(A167040(n))`
-/

namespace A177970.P1518612649001944942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141596 n * A166155 (A167040 n).toNat

end

end A177970.P1518612649001944942

namespace A177970

/-- `A141596(n)*A166155(A167040(n))` -/
def P1518612649001944942.Spec : Prop :=
  ∀ n, P1518612649001944942.a n = A177970 n

end A177970

/-!
# A177974: Triangle T(n,k) = n!/(n - k)! + n!/k! - n! read by rows, 0 <= k <= n.

The programs for A177974, the canonical program `A177974.P10622050827112700840` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177974 has offset 0).

The definition of A177974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177974.P10622050827112700840

`row(n)!/(row(n)-col(n))!+row(n)!/col(n)!-row(n)!`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177974

/-- `row(n)!/(row(n)-col(n))!+row(n)!/col(n)!-row(n)!` -/
def P10622050827112700840.Spec : Prop :=
  ∀ n, P10622050827112700840.a n = (A177974 n : ℚ)

end A177974

/-! ## A177974.P14771602287729680586

`A007318(n)*A155454(n)`
-/

namespace A177974.P14771602287729680586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A155454 n

end

end A177974.P14771602287729680586

namespace A177974

/-- `A007318(n)*A155454(n)` -/
def P14771602287729680586.Spec : Prop :=
  ∀ n, P14771602287729680586.a n = A177974 n

end A177974

/-! ## A177974.P17409485495923503825

`abs(A108086(n))*A155454(n)`
-/

namespace A177974.P17409485495923503825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| * A155454 n

end

end A177974.P17409485495923503825

namespace A177974

/-- `abs(A108086(n))*A155454(n)` -/
def P17409485495923503825.Spec : Prop :=
  ∀ n, P17409485495923503825.a n = A177974 n

end A177974

/-! ## A177974.P1364353064235413603

`abs(A117440(n))*A155454(n)`
-/

namespace A177974.P1364353064235413603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| * A155454 n

end

end A177974.P1364353064235413603

namespace A177974

/-- `abs(A117440(n))*A155454(n)` -/
def P1364353064235413603.Spec : Prop :=
  ∀ n, P1364353064235413603.a n = A177974 n

end A177974

/-! ## A177974.P16377167887349677064

`abs(A130595(n))*A155454(n)`
-/

namespace A177974.P16377167887349677064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A155454 n

end

end A177974.P16377167887349677064

namespace A177974

/-- `abs(A130595(n))*A155454(n)` -/
def P16377167887349677064.Spec : Prop :=
  ∀ n, P16377167887349677064.a n = A177974 n

end A177974

/-! ## A177974.P14978146865934655797

`sqrt(A008459(n))*A155454(n)`
-/

namespace A177974.P14978146865934655797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A155454 n : ℝ)

end

end A177974.P14978146865934655797

namespace A177974

/-- `sqrt(A008459(n))*A155454(n)` -/
def P14978146865934655797.Spec : Prop :=
  ∀ n, P14978146865934655797.a n = (A177974 n : ℝ)

end A177974

/-! ## A177974.P765388643532137201

`Δ[A102363(n)]*A155454(n)`
-/

namespace A177974.P765388643532137201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A155454 n

end

end A177974.P765388643532137201

namespace A177974

/-- `Δ[A102363(n)]*A155454(n)` -/
def P765388643532137201.Spec : Prop :=
  ∀ n, P765388643532137201.a n = A177974 n

end A177974

/-! ## A177974.P12493376999948600578

`(A014473(n)+1)*A155454(n)`
-/

namespace A177974.P12493376999948600578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A155454 n

end

end A177974.P12493376999948600578

namespace A177974

/-- `(A014473(n)+1)*A155454(n)` -/
def P12493376999948600578.Spec : Prop :=
  ∀ n, P12493376999948600578.a n = A177974 n

end A177974

/-! ## A177974.P10667675292530178826

`A028326(n)/2*A155454(n)`
-/

namespace A177974.P10667675292530178826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A155454 n : ℚ)

end

end A177974.P10667675292530178826

namespace A177974

/-- `A028326(n)/2*A155454(n)` -/
def P10667675292530178826.Spec : Prop :=
  ∀ n, P10667675292530178826.a n = (A177974 n : ℚ)

end A177974

/-! ## A177974.P18241505950147898242

`A155162(n)-∑[char[∑[n+1]]]!`
-/

namespace A177974.P18241505950147898242
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155162 n - (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A177974.P18241505950147898242

namespace A177974

/-- `A155162(n)-∑[char[∑[n+1]]]!` -/
def P18241505950147898242.Spec : Prop :=
  ∀ n, P18241505950147898242.a n = A177974 n

end A177974

/-! ## A177974.P11264548605649928012

`A155162(n)-A021009(A057944(n))`
-/

namespace A177974.P11264548605649928012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155162 n - A021009 (A057944 n).toNat

end

end A177974.P11264548605649928012

namespace A177974

/-- `A155162(n)-A021009(A057944(n))` -/
def P11264548605649928012.Spec : Prop :=
  ∀ n, P11264548605649928012.a n = A177974 n

end A177974

/-!
# A177975: Square array T(n,k) read by antidiagonals up. Each column is the first column in the matrix inverse of a triangular matrix that is the k-th differences of A051731 in the column direction.

The programs for A177975, there is no canonical definition to state claims against.
-/

/-! ## A177975.P515108657335777368

`A340995(n)+A178798(A284949(n+1))`
-/

namespace A177975.P515108657335777368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 n + A178798 (A284949 (n + 1)).toNat

end

end A177975.P515108657335777368

/-! ## A177975.P807295638105830591

`A340995(n)-A340999(A002659(n+1))`
-/

namespace A177975.P807295638105830591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 n - A340999 ((A002659 (n + 1)).toNat + 204)

end

end A177975.P807295638105830591

/-! ## A177975.P7914137500788151840

`A340995(n)-A185063(A177976(n+1))`
-/

namespace A177975.P7914137500788151840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 n - A185063 (A177976 (n + 1)).toNat

end

end A177975.P7914137500788151840

/-! ## A177975.P10521828630004129561

`A085170(A340995(n)%A015806(n+1))`
-/

namespace A177975.P10521828630004129561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (Int.tmod (A340995 n) (A015806 (n + 1))).toNat

end

end A177975.P10521828630004129561

/-!
# A177976: Square array T(n,k) read by antidiagonals up. Cumulative column sums of A177975.

The programs for A177976, there is no canonical definition to state claims against.
-/

/-! ## A177976.P17917132977069786736

`A322260(A152798(n))+A014473(n)`
-/

namespace A177976.P17917132977069786736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322260 (A152798 n).toNat + A014473 n

end

end A177976.P17917132977069786736

/-! ## A177976.P1900564952708775907

`A034781(n+2)-A185037(A185063(n))`
-/

namespace A177976.P1900564952708775907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (n + 2) - A185037 (A185063 n).toNat

end

end A177976.P1900564952708775907

/-!
# A177978: Triangle T(n,k) read by rows: A051731(n,k) - A051731(n-1,k).

The programs for A177978, the canonical program `A177978.P5012801373125610272` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177978 has offset 1).

The definition of A177978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177978.P5012801373125610272

`2*A051731(n+1)-A128185(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A177978

/-- `2*A051731(n+1)-A128185(n+1)` -/
def P5012801373125610272.Spec : Prop :=
  ∀ n, P5012801373125610272.a n = A177978 (n + 1)

theorem P5012801373125610272.correct : P5012801373125610272.Spec := by
  intro n
  simp only [A177978, Nat.add_sub_cancel]

end A177978

/-! ## A177978.P8655645485789592109

`A051731(n+1)-A113704(n+1)`
-/

namespace A177978.P8655645485789592109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) - A113704 (n + 1)

end

end A177978.P8655645485789592109

namespace A177978

/-- `A051731(n+1)-A113704(n+1)` -/
def P8655645485789592109.Spec : Prop :=
  ∀ n, P8655645485789592109.a n = A177978 (n + 1)

theorem P8655645485789592109.correct : P8655645485789592109.Spec := by
  intro n
  simp only [A177978, Nat.add_sub_cancel, A177978.P8655645485789592109.a, A177978.P5012801373125610272.a, A051731, A051731.P11318043630102858095.a, A113704, A113704.P2167875100220696113.a, A128185, A128185.P11494409003865491844.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A372727, A372727.P4784361531490275736.a, A003056, A003056.P5318256527314048597.a, A130270, A130270.P2168121446390498421.f1, A130270.P2168121446390498421.a, A000124, A000124.P675563980313077261.a, A010054, A010054.P18347828677204923252.a, A080036, A080036.P11409306155101807946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A177978

/-! ## A177978.P11080719173869092586

`A057427(A126988(n+1))-A113704(n+1)`
-/

namespace A177978.P11080719173869092586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A126988 (n + 1)).toNat - A113704 (n + 1)

end

end A177978.P11080719173869092586

namespace A177978

/-- `A057427(A126988(n+1))-A113704(n+1)` -/
def P11080719173869092586.Spec : Prop :=
  ∀ n, P11080719173869092586.a n = A177978 (n + 1)

end A177978

/-! ## A177978.P18368664996942753948

`A113704(comp[∑[n]])-A113704(n+1)`
-/

namespace A177978.P18368664996942753948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A113704 (n + 1)

end

end A177978.P18368664996942753948

namespace A177978

/-- `A113704(comp[∑[n]])-A113704(n+1)` -/
def P18368664996942753948.Spec : Prop :=
  ∀ n, P18368664996942753948.a n = A177978 (n + 1)

end A177978

/-! ## A177978.P13445171366633169442

`A128190(A185869(n+1))`
-/

namespace A177978.P13445171366633169442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128190 (A185869 (n + 1)).toNat

end

end A177978.P13445171366633169442

namespace A177978

/-- `A128190(A185869(n+1))` -/
def P13445171366633169442.Spec : Prop :=
  ∀ n, P13445171366633169442.a n = A177978 (n + 1)

end A177978

/-! ## A177978.P1243943451922375428

`A144384(A038722(n+1))-A073424(n)`
-/

namespace A177978.P1243943451922375428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144384 (A038722 (n + 1)).toNat - A073424 n

end

end A177978.P1243943451922375428

namespace A177978

/-- `A144384(A038722(n+1))-A073424(n)` -/
def P1243943451922375428.Spec : Prop :=
  ∀ n, P1243943451922375428.a n = A177978 (n + 1)

end A177978

/-! ## A177978.P4995808755473529556

`A014026(A048158(n+1))%A084558(A095666(n))`
-/

namespace A177978.P4995808755473529556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014026 (A048158 (n + 1)).toNat) (A084558 (A095666 n).toNat)

end

end A177978.P4995808755473529556

namespace A177978

/-- `A014026(A048158(n+1))%A084558(A095666(n))` -/
def P4995808755473529556.Spec : Prop :=
  ∀ n, P4995808755473529556.a n = A177978 (n + 1)

end A177978

/-!
# A177979: Smallest number k such that A002313(n) divides k^2+1.

The programs for A177979, there is no canonical definition to state claims against.
-/

/-! ## A177979.P12190363799975736437

`A070669(p?[or(1, n)+n])`
-/

namespace A177979.P12190363799975736437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177979.P12190363799975736437

/-! ## A177979.P1465206549044980594

`A070669(p?[lcm(2, 1-n)+n])`
-/

namespace A177979.P1465206549044980594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (n : ℤ)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177979.P1465206549044980594

/-! ## A177979.P15028951476640187123

`A070669(p?[n*gcd(2, n)+1])`
-/

namespace A177979.P15028951476640187123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177979.P15028951476640187123

/-! ## A177979.P4668357913655090598

`A070669(p?[n-or(1, 3-n)])`
-/

namespace A177979.P4668357913655090598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 1 (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177979.P4668357913655090598

/-! ## A177979.P1821015816910289027

`A070669(p?[a(n-1)+4])` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A177979.P1821015816910289027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177979.P1821015816910289027

/-! ## A177979.P2672371932756289466

`A070669(p?[(n+1)%2+2*n])`
-/

namespace A177979.P2672371932756289466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177979.P2672371932756289466

/-! ## A177979.P5084110920223150958

`A070669(p?[and(1, n+1)+2*n])`
-/

namespace A177979.P5084110920223150958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177979.P5084110920223150958

/-! ## A177979.P12359201888176920227

`A070669(p?[A004773(n)])`
-/

namespace A177979.P12359201888176920227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177979.P12359201888176920227

/-! ## A177979.P13921117885899736057

`A070669(p?[A103832(n)])`
-/

namespace A177979.P13921117885899736057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177979.P13921117885899736057

/-! ## A177979.P9611065501664948690

`A070669(p?[A131452(n)])`
-/

namespace A177979.P9611065501664948690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177979.P9611065501664948690

/-!
# A177980: Iterate (n + lpf(n)) / 2 until a prime is reached, where lpf equals the least prime factor. a(n) is that terminating prime.

The programs for A177980, there is no canonical definition to state claims against.
-/

/-! ## A177980.P7724303138582259015

`A020639(A000005(2^(n+1))-(A129527(n)-n))`
-/

namespace A177980.P7724303138582259015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000005 (2 ^ (n + 1)) - (A129527 n - (n : ℤ))).toNat

end

end A177980.P7724303138582259015

/-! ## A177980.P240931392614582008

`A020639(A106617(n)+A020639(A332612(2*n+3)))`
-/

namespace A177980.P240931392614582008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A106617 n + A020639 (A332612 (2 * n + 3)).toNat).toNat

end

end A177980.P240931392614582008

/-! ## A177980.P16560467042279373145

`A020639(A106609(n)+A020639(A253122(n+1)))`
-/

namespace A177980.P16560467042279373145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A106609 n + A020639 (A253122 (n + 1)).toNat).toNat

end

end A177980.P16560467042279373145

/-! ## A177980.P10896952088024077559

`A020639(A227140(n)+A000005(A186522(n+2)))`
-/

namespace A177980.P10896952088024077559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A227140 n + A000005 (A186522 (n + 2)).toNat).toNat

end

end A177980.P10896952088024077559

/-!
# A177981: a(n) = prime number > a(n-1) that contains the n-th prime as a substring.

The programs for A177981, there is no canonical definition to state claims against.
-/

/-! ## A177981.P3586341301153806208

`A064792(n+1)-A033753(A103177(n))`
-/

namespace A177981.P3586341301153806208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064792 (n + 1) - A033753 (A103177 n).toNat

end

end A177981.P3586341301153806208

/-! ## A177981.P3147562152335505838

`A030670(n+1)-A127648(A140468(n+1))`
-/

namespace A177981.P3147562152335505838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030670 (n + 1) - A127648 (A140468 (n + 1)).toNat

end

end A177981.P3147562152335505838

/-! ## A177981.P16692799179442751314

`A030670(n+1)-A028609(A095064(2*(n+2)))`
-/

namespace A177981.P16692799179442751314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030670 (n + 1) - A028609 (A095064 (2 * (n + 2))).toNat

end

end A177981.P16692799179442751314

/-!
# A177983: a(1)=3. Otherwise the average of the least prime divisors of 2n-1 and 2n+3.

The programs for A177983, there is no canonical definition to state claims against.
-/

/-! ## A177983.P16220881030348151737

`(A090368(n+1)+A090368(n+3))/2`
-/

namespace A177983.P16220881030348151737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090368 (n + 1) + A090368 (n + 3) : ℚ) / 2

end

end A177983.P16220881030348151737

/-! ## A177983.P14348247099404860571

`A177985(n+1)+A177961(n+1)`
-/

namespace A177983.P14348247099404860571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177985 (n + 1) + A177961 (n + 1)

end

end A177983.P14348247099404860571

/-! ## A177983.P14506051551557189746

`A090368(n+1)+Δ[A177961(n+1)]`
-/

namespace A177983.P14506051551557189746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1) + (f1 (n + 1) - f1 n)

end

end A177983.P14506051551557189746

/-! ## A177983.P1509067415821421226

`Δ[A177961(n+1)]+A020639(Δ[n²])`
-/

namespace A177983.P1509067415821421226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A177983.P1509067415821421226

/-! ## A177983.P17733728826497539693

`A177961(n+1)+Δ[A020639(2*n+3)/2]`
-/

namespace A177983.P17733728826497539693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177961 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A177983.P17733728826497539693

/-! ## A177983.P17409626473673239499

`Δ[A177961(n+1)]+or(1, A020639(2*n+1))`
-/

namespace A177983.P17409626473673239499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.lor 1 (A020639 (2 * n + 1))

end

end A177983.P17409626473673239499

/-! ## A177983.P15013528515447018488

`A177961(n+1)+Δ[A020639(n+3+n)]/2`
-/

namespace A177983.P15013528515447018488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177961 (n + 1) : ℚ) + (f1 (n + 1) - f1 n : ℚ) / 2

end

end A177983.P15013528515447018488

/-! ## A177983.P11282763297001053688

`A090368(n+1)+A177961(n+2)-A177961(n+1)`
-/

namespace A177983.P11282763297001053688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1) + (A177961 (n + 2) - A177961 (n + 1))

end

end A177983.P11282763297001053688

/-!
# A177984: A symmetrical triangle of polynomial coefficients:p(x,n)=If[n == 0, 1, (1 - x)^(n + 1)*Sum[((2*k + 1)^n + (k + 1)^n + k^n)*x^k, {k, 0, Infinity}]/2].

The programs for A177984, there is no canonical definition to state claims against.
-/

/-! ## A177984.P13259957860602486417

`(A008518(n)+abs(A138076(n)))/2`
-/

namespace A177984.P13259957860602486417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008518 n + |A138076 n| : ℚ) / 2

end

end A177984.P13259957860602486417

/-! ## A177984.P6865524488076809502

`(A060187(n+1)+A008518(n))/2`
-/

namespace A177984.P6865524488076809502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) + A008518 n : ℚ) / 2

end

end A177984.P6865524488076809502

/-! ## A177984.P16865526726492262894

`(A060187(n+1)+A008518(n))*2^A008683(A003629(n+1))`
-/

namespace A177984.P16865526726492262894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) + A008518 n : ℚ) * (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A177984.P16865526726492262894

/-! ## A177984.P8812381362638137181

`A014682(A008518(n)+abs(A138076(n)))`
-/

namespace A177984.P8812381362638137181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008518 n + |A138076 n|).toNat

end

end A177984.P8812381362638137181

/-! ## A177984.P267689895315017943

`A014682(A060187(n+1)+A008518(n))`
-/

namespace A177984.P267689895315017943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A060187 (n + 1) + A008518 n).toNat

end

end A177984.P267689895315017943

/-!
# A177985: A177983(n) - A177961(n).

The programs for A177985, there is no canonical definition to state claims against.
-/

/-! ## A177985.P5769812880385745033

`A177983(n+1)-A177961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177985.P5769812880385745033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177983 (n + 1) - A177961 (n + 1)

end

end A177985.P5769812880385745033

/-! ## A177985.P6114271377324428403

`Δ[A195508(n+1)]`
-/

namespace A177985.P6114271377324428403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177985.P6114271377324428403

/-! ## A177985.P18121867982319415808

`Δ[A090368(n+2)/2]`
-/

namespace A177985.P18121867982319415808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090368 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177985.P18121867982319415808

/-! ## A177985.P6860377088083377378

`Δ[A090089(n+2)/4]`
-/

namespace A177985.P6860377088083377378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090089 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177985.P6860377088083377378

/-! ## A177985.P599485682941052308

`1-Δ[A046667(2*n+3)]`
-/

namespace A177985.P599485682941052308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A177985.P599485682941052308

/-! ## A177985.P2540577049381323590

`1-Δ[A175126(2*n+3)]`
-/

namespace A177985.P2540577049381323590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A177985.P2540577049381323590

/-! ## A177985.P2626296333913770857

`Δ[A214055(2*n+1)/2]`
-/

namespace A177985.P2626296333913770857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214055 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177985.P2626296333913770857

/-! ## A177985.P10643121554031572093

`Δ[A092028(2*(n+2))/2]`
-/

namespace A177985.P10643121554031572093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092028 (2 * (n + 2)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177985.P10643121554031572093

/-! ## A177985.P8486585393614000384

`Δ[A020639(2*n+3)/2]`
-/

namespace A177985.P8486585393614000384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177985.P8486585393614000384

/-!
# A177986: Numbers n such that quartic curve y^2=x^4+n have integral points.

The programs for A177986, there is no canonical definition to state claims against.
-/

/-! ## A177986.P8062597874704303836

`eq[char[A177987(n+1)], A151933(n)]`
-/

namespace A177986.P8062597874704303836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177987 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177986.P8062597874704303836

/-! ## A177986.P5175263709081399051

`eq[char[A177987(n+1)], A151660(n)]`
-/

namespace A177986.P5175263709081399051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177987 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177986.P5175263709081399051

/-! ## A177986.P16244612241185080077

`∑[gcd(A099295(n+1), A250322(n+2))]`
-/

namespace A177986.P16244612241185080077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099295 (n + 1)) (A250322 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177986.P16244612241185080077

/-! ## A177986.P528979663100115039

`eq[A034947(n+1), A138702(A299276(n))]`
-/

namespace A177986.P528979663100115039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138702 (A299276 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177986.P528979663100115039

/-!
# A177987: Numbers n such that quartic equation y^2=x^4+n has no solution.

The programs for A177987, there is no canonical definition to state claims against.
-/

/-! ## A177987.P13471628782611905108

`comp[∪[A177986(1+n), n²]]`
-/

namespace A177987.P13471628782611905108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177986 (1 + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A177987.P13471628782611905108

/-! ## A177987.P2070817557954078722

`eq[char[A177986(n+1)], A000122(n)]`
-/

namespace A177987.P2070817557954078722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177987.P2070817557954078722

/-! ## A177987.P17743001904630183789

`eq[char[A177986(n+1)], A002448(n)]`
-/

namespace A177987.P17743001904630183789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177987.P17743001904630183789

/-! ## A177987.P3405622788640796030

`comp[∪[A001014(n), A177986(n+1)]]`
-/

namespace A177987.P3405622788640796030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A177987.P3405622788640796030

/-! ## A177987.P11102737119231446562

`A000027(comp[A177986(n+1)-1]+1)`
-/

namespace A177987.P11102737119231446562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177986 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A177987.P11102737119231446562

/-! ## A177987.P16192089568164433736

`eq[char[A177986(n+1)], A094497(n+2)]`
-/

namespace A177987.P16192089568164433736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177987.P16192089568164433736

/-! ## A177987.P1199445582336161129

`eq[char[A177986(n+1)], A151933(n)]`
-/

namespace A177987.P1199445582336161129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177987.P1199445582336161129

/-!
# A177988: Numbers n such that quartic curve y^2=x^4-n has integral points.

The programs for A177988, there is no canonical definition to state claims against.
-/

/-! ## A177988.P13778064825188618741

`∪[A138615(n+1), A056118(n)]`
-/

namespace A177988.P13778064825188618741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177988.P13778064825188618741

/-! ## A177988.P11842164569957221057

`∪[A138615(n+1), A075578(n)]`
-/

namespace A177988.P11842164569957221057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177988.P11842164569957221057

/-! ## A177988.P909261715123133607

`∪[A138615(n+1), A212898(n)]`
-/

namespace A177988.P909261715123133607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177988.P909261715123133607

/-! ## A177988.P17224999798308417480

`∪[A003999(n+1), A138615(n+1)]`
-/

namespace A177988.P17224999798308417480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177988.P17224999798308417480

/-! ## A177988.P15509425985561393284

`∪[A080150(n+1), A138615(n+1)]`
-/

namespace A177988.P15509425985561393284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177988.P15509425985561393284

/-!
# A177989: Numbers n such that quartic equation y^2=x^4-n has no integer solution.

The programs for A177989, there is no canonical definition to state claims against.
-/

/-! ## A177989.P918243301285075323

`comp[A177988(n+1)-1]+1`
-/

namespace A177989.P918243301285075323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177988 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A177989.P918243301285075323

/-! ## A177989.P1373044820736898551

`comp[A001057(n)*A256243(n+1)]`
-/

namespace A177989.P1373044820736898551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A256243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177989.P1373044820736898551

/-! ## A177989.P3203405574279339764

`eq[char[A177988(n+1)], A151878(n)]`
-/

namespace A177989.P3203405574279339764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177988 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177989.P3203405574279339764

/-! ## A177989.P7386061141424105366

`eq[char[A177988(n+1)], A151933(n)]`
-/

namespace A177989.P7386061141424105366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177988 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177989.P7386061141424105366

/-! ## A177989.P15130581762609531809

`comp[A055461(n+1)²-A002262(n)²]`
-/

namespace A177989.P15130581762609531809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) ^ 2 - A002262 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177989.P15130581762609531809

/-! ## A177989.P5388528501177787596

`comp[A028832(n+1)²²-A143844(n)]`
-/

namespace A177989.P5388528501177787596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028832 (n + 1) ^ 2) ^ 2 - A143844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177989.P5388528501177787596

/-!
# A177990: Triangle read by rows, variant of A070909, a cellular automaton.

The programs for A177990, the canonical program `A177990.P655360059528610579` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177990 has offset 1).

The definition of A177990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177990.P10223004588031640907

`char[∑[2-char[n²]]-2]`
-/

namespace A177990.P10223004588031640907
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A177990.P10223004588031640907

namespace A177990

/-- `char[∑[2-char[n²]]-2]` -/
def P10223004588031640907.Spec : Prop :=
  ∀ n, (P10223004588031640907.a n : ℤ) = A177990 (n + 1)

end A177990

/-! ## A177990.P1973467312971790342

`comp[2*n*(n+2)]%2`
-/

namespace A177990.P1973467312971790342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A177990.P1973467312971790342

namespace A177990

/-- `comp[2*n*(n+2)]%2` -/
def P1973467312971790342.Spec : Prop :=
  ∀ n, (P1973467312971790342.a n : ℤ) = A177990 (n + 1)

end A177990

/-! ## A177990.P17478634718677304550

`and(1, comp[2*n*(n+2)])`
-/

namespace A177990.P17478634718677304550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A177990.P17478634718677304550

namespace A177990

/-- `and(1, comp[2*n*(n+2)])` -/
def P17478634718677304550.Spec : Prop :=
  ∀ n, (P17478634718677304550.a n : ℤ) = A177990 (n + 1)

end A177990

/-! ## A177990.P3642340493347905228

`2-gcd(2, comp[2*n*(n+2)])`
-/

namespace A177990.P3642340493347905228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A177990.P3642340493347905228

namespace A177990

/-- `2-gcd(2, comp[2*n*(n+2)])` -/
def P3642340493347905228.Spec : Prop :=
  ∀ n, P3642340493347905228.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P4631377192714360171

`or(1-a(n-1), char[∑[n+2]])` with `a(0)=1`
-/

namespace A177990.P4631377192714360171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (1 - a (n - 1)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A177990.P4631377192714360171

namespace A177990

/-- `or(1-a(n-1), char[∑[n+2]])` -/
def P4631377192714360171.Spec : Prop :=
  ∀ n, P4631377192714360171.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P655360059528610579

`2-A133083(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A177990

/-- `2-A133083(n+1)` -/
def P655360059528610579.Spec : Prop :=
  ∀ n, P655360059528610579.a n = A177990 (n + 1)

theorem P655360059528610579.correct : P655360059528610579.Spec := by
  intro n
  simp only [A177990, Nat.add_sub_cancel]

end A177990

/-! ## A177990.P11388269186610670637

`floor(1/A065109(n))²`
-/

namespace A177990.P11388269186610670637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A065109 n : ℚ)⌋ ^ 2

end

end A177990.P11388269186610670637

namespace A177990

/-- `floor(1/A065109(n))²` -/
def P11388269186610670637.Spec : Prop :=
  ∀ n, P11388269186610670637.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P2432283996607689496

`A023531(n*a(n-1))` with `a(0)=1`
-/

namespace A177990.P2432283996607689496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023531 ((n : ℤ) * a (n - 1)).toNat

end

end A177990.P2432283996607689496

namespace A177990

/-- `A023531(n*a(n-1))` -/
def P2432283996607689496.Spec : Prop :=
  ∀ n, P2432283996607689496.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P40798980445349011

`A010054((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A177990.P40798980445349011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A177990.P40798980445349011

namespace A177990

/-- `A010054((n+1)*a(n-1))` -/
def P40798980445349011.Spec : Prop :=
  ∀ n, P40798980445349011.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P9776285881101539536

`A052173((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A177990.P9776285881101539536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052173 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A177990.P9776285881101539536

namespace A177990

/-- `A052173((n+1)*a(n-1))` -/
def P9776285881101539536.Spec : Prop :=
  ∀ n, P9776285881101539536.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P10479556717311174780

`A053119((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A177990.P10479556717311174780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053119 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A177990.P10479556717311174780

namespace A177990

/-- `A053119((n+1)*a(n-1))` -/
def P10479556717311174780.Spec : Prop :=
  ∀ n, P10479556717311174780.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P2673943769229915122

`A073423(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A177990.P2673943769229915122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073423 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A177990.P2673943769229915122

namespace A177990

/-- `A073423(n*a(n-1)+1)` -/
def P2673943769229915122.Spec : Prop :=
  ∀ n, P2673943769229915122.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P14607276246929390607

`A073424(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A177990.P14607276246929390607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073424 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A177990.P14607276246929390607

namespace A177990

/-- `A073424(n*a(n-1)+1)` -/
def P14607276246929390607.Spec : Prop :=
  ∀ n, P14607276246929390607.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P4841440318905388917

`A135929((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A177990.P4841440318905388917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135929 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A177990.P4841440318905388917

namespace A177990

/-- `A135929((n+1)*a(n-1))` -/
def P4841440318905388917.Spec : Prop :=
  ∀ n, P4841440318905388917.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P3321445369009253972

`A162514(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A177990.P3321445369009253972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162514 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A177990.P3321445369009253972

namespace A177990

/-- `A162514(n*a(n-1)+1)` -/
def P3321445369009253972.Spec : Prop :=
  ∀ n, P3321445369009253972.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P9927506015514877824

`1-a(n-1)*A023532(n)` with `a(0)=1`
-/

namespace A177990.P9927506015514877824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) * A023532 n

end

end A177990.P9927506015514877824

namespace A177990

/-- `1-a(n-1)*A023532(n)` -/
def P9927506015514877824.Spec : Prop :=
  ∀ n, P9927506015514877824.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P11294066315937276374

`A010054((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A177990.P11294066315937276374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A177990.P11294066315937276374

namespace A177990

/-- `A010054((n+1)^a(n-1))` -/
def P11294066315937276374.Spec : Prop :=
  ∀ n, P11294066315937276374.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P3550003248588438480

`A052173((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A177990.P3550003248588438480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052173 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A177990.P3550003248588438480

namespace A177990

/-- `A052173((n+1)^a(n-1))` -/
def P3550003248588438480.Spec : Prop :=
  ∀ n, P3550003248588438480.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P7955739025556221011

`A053119((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A177990.P7955739025556221011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053119 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A177990.P7955739025556221011

namespace A177990

/-- `A053119((n+1)^a(n-1))` -/
def P7955739025556221011.Spec : Prop :=
  ∀ n, P7955739025556221011.a n = A177990 (n + 1)

end A177990

/-! ## A177990.P8824529988871139317

`A035214(a(n-1)+n)-a(n-1)` with `a(0)=1`
-/

namespace A177990.P8824529988871139317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035214 (a (n - 1) + (n : ℤ)).toNat - a (n - 1)

end

end A177990.P8824529988871139317

namespace A177990

/-- `A035214(a(n-1)+n)-a(n-1)` -/
def P8824529988871139317.Spec : Prop :=
  ∀ n, P8824529988871139317.a n = A177990 (n + 1)

end A177990

/-!
# A177991: Triangle read by rows, A070909 * A177990.

The programs for A177991, the canonical program `A177991.P11359817822590575411` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177991 has offset 0).

The definition of A177991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177991.P12491046429633792152

`1+floor((row(n)-col(n))/2)*(1+(-1)^(col(n)+1))/2`
-/

namespace A177991.P12491046429633792152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2⌋ * (1 + (-1) ^ (SequenceMachineLib.triCol n + 1)) : ℚ) / 2

end

end A177991.P12491046429633792152

namespace A177991

/-- `1+floor((row(n)-col(n))/2)*(1+(-1)^(col(n)+1))/2` -/
def P12491046429633792152.Spec : Prop :=
  ∀ n, P12491046429633792152.a n = (A177991 n : ℚ)

end A177991

/-! ## A177991.P11359817822590575411

`A115514(n+1)/A177994(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A177991

/-- `A115514(n+1)/A177994(n)` -/
def P11359817822590575411.Spec : Prop :=
  ∀ n, P11359817822590575411.a n = (A177991 n : ℚ)

end A177991

/-! ## A177991.P7214009502843131397

`A177994(∑[char[∑[n]]+1])`
-/

namespace A177991.P7214009502843131397
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177994 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177991.P7214009502843131397

namespace A177991

/-- `A177994(∑[char[∑[n]]+1])` -/
def P7214009502843131397.Spec : Prop :=
  ∀ n, P7214009502843131397.a n = A177991 n

end A177991

/-! ## A177991.P10617059835237933061

`gcd(A115514(n+1), A181652(n))`
-/

namespace A177991.P10617059835237933061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115514 (n + 1)) (A181652 n)

end

end A177991.P10617059835237933061

namespace A177991

/-- `gcd(A115514(n+1), A181652(n))` -/
def P10617059835237933061.Spec : Prop :=
  ∀ n, (P10617059835237933061.a n : ℤ) = A177991 n

end A177991

/-! ## A177991.P13377982939036276037

`val(A329332(n), 4)+1`
-/

namespace A177991.P13377982939036276037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329332 n).toNat 4 + 1

end

end A177991.P13377982939036276037

namespace A177991

/-- `val(A329332(n), 4)+1` -/
def P13377982939036276037.Spec : Prop :=
  ∀ n, (P13377982939036276037.a n : ℤ) = A177991 n

end A177991

/-! ## A177991.P3950605691091538944

`A256289(val(A329332(n), 4))`
-/

namespace A177991.P3950605691091538944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256289 (SequenceMachineLib.valuation (A329332 n).toNat 4)

end

end A177991.P3950605691091538944

namespace A177991

/-- `A256289(val(A329332(n), 4))` -/
def P3950605691091538944.Spec : Prop :=
  ∀ n, P3950605691091538944.a n = A177991 n

end A177991

/-! ## A177991.P4028365956845090682

`2-A024000(val(A329332(n), 4))`
-/

namespace A177991.P4028365956845090682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.valuation (A329332 n).toNat 4)

end

end A177991.P4028365956845090682

namespace A177991

/-- `2-A024000(val(A329332(n), 4))` -/
def P4028365956845090682.Spec : Prop :=
  ∀ n, P4028365956845090682.a n = A177991 n

end A177991

/-!
# A177992: Triangle read by rows, A007318 * A177990.

The programs for A177992, there is no canonical definition to state claims against.
-/

/-! ## A177992.P3822458210058656493

`A007318(n)+A055248(n)-A177953(n)`
-/

namespace A177992.P3822458210058656493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A055248 n - A177953 n)

end

end A177992.P3822458210058656493

/-! ## A177992.P11208512038431194380

`A168485(A130749(n))`
-/

namespace A177992.P11208512038431194380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A130749 n).toNat

end

end A177992.P11208512038431194380

/-! ## A177992.P6553980283723439637

`A328300(n)%A076875(A232931(n+2))`
-/

namespace A177992.P6553980283723439637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328300 n) (A076875 (A232931 (n + 2)).toNat)

end

end A177992.P6553980283723439637

/-! ## A177992.P2645829709290444368

`A000265(A075503(n+1))%19`
-/

namespace A177992.P2645829709290444368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A075503 (n + 1)).toNat) 19

end

end A177992.P2645829709290444368

/-! ## A177992.P569336912108263073

`or(A000005(A111820(n)), A055807(n))`
-/

namespace A177992.P569336912108263073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A111820 n).toNat) (A055807 n)

end

end A177992.P569336912108263073

/-!
# A177993: Triangle read by rows, A177990 * A007318.

The programs for A177993, there is no canonical definition to state claims against.
-/

/-! ## A177993.P17563948212068155394

`A156250(A158909(n)%A078229(n+1))`
-/

namespace A177993.P17563948212068155394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (Int.tmod (A158909 n) (A078229 (n + 1))).toNat

end

end A177993.P17563948212068155394

/-! ## A177993.P13692936177458503645

`A327693(n+1)+A000120(A130226(n+1))`
-/

namespace A177993.P13692936177458503645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327693 (n + 1) + A000120 (A130226 (n + 1)).toNat

end

end A177993.P13692936177458503645

/-!
# A177994: Triangle read by rows, A177990 * A070909.

The programs for A177994, the canonical program `A177994.P15086551177914327657` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177994 has offset 0).

The definition of A177994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177994.P16265920141684382738

`1+floor((row(n)-col(n))/2)*(1+(-1)^col(n))/2`
-/

namespace A177994.P16265920141684382738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2⌋ * (1 + (-1) ^ SequenceMachineLib.triCol n) : ℚ) / 2

end

end A177994.P16265920141684382738

namespace A177994

/-- `1+floor((row(n)-col(n))/2)*(1+(-1)^col(n))/2` -/
def P16265920141684382738.Spec : Prop :=
  ∀ n, P16265920141684382738.a n = (A177994 n : ℚ)

end A177994

/-! ## A177994.P12851659858071305770

`A115514(n+1)/A177991(n)`
-/

namespace A177994.P12851659858071305770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115514 (n + 1) : ℚ) / (A177991 n : ℚ)

end

end A177994.P12851659858071305770

namespace A177994

/-- `A115514(n+1)/A177991(n)` -/
def P12851659858071305770.Spec : Prop :=
  ∀ n, P12851659858071305770.a n = (A177994 n : ℚ)

end A177994

/-! ## A177994.P14415827428985182218

`A115514(n+1)^(1-A060510(n))`
-/

namespace A177994.P14415827428985182218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115514 (n + 1) : ℚ) ^ (1 - A060510 n : ℤ)

end

end A177994.P14415827428985182218

namespace A177994

/-- `A115514(n+1)^(1-A060510(n))` -/
def P14415827428985182218.Spec : Prop :=
  ∀ n, P14415827428985182218.a n = (A177994 n : ℚ)

end A177994

/-! ## A177994.P2317566220233707470

`A115514(n+1)^(A002260(n+1)%2)`
-/

namespace A177994.P2317566220233707470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115514 (n + 1) : ℚ) ^ (Int.tmod (A002260 (n + 1)) 2 : ℤ)

end

end A177994.P2317566220233707470

namespace A177994

/-- `A115514(n+1)^(A002260(n+1)%2)` -/
def P2317566220233707470.Spec : Prop :=
  ∀ n, P2317566220233707470.a n = (A177994 n : ℚ)

end A177994

/-! ## A177994.P15086551177914327657

`A115514(n*C(2, A004277(a(n-1)))+1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A177994

/-- `A115514(n*C(2, A004277(a(n-1)))+1)` -/
def P15086551177914327657.Spec : Prop :=
  ∀ n, P15086551177914327657.a n = A177994 n

theorem P15086551177914327657.correct : P15086551177914327657.Spec := by
  intro n
  simp only [A177994]

end A177994

/-! ## A177994.P9738269332444587322

`A115514(C(n, C(2, A004277(a(n-1))))+1)` with `a(0)=1`
-/

namespace A177994.P9738269332444587322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115514 (Nat.choose n (Nat.choose 2 (A004277 (a (n - 1)).toNat).toNat) + 1)

end

end A177994.P9738269332444587322

namespace A177994

/-- `A115514(C(n, C(2, A004277(a(n-1))))+1)` -/
def P9738269332444587322.Spec : Prop :=
  ∀ n, P9738269332444587322.a n = A177994 n

end A177994

/-! ## A177994.P12837703293958567536

`A115514(n*A076849(C(2, a(n-1))+1)+1)` with `a(0)=1`
-/

namespace A177994.P12837703293958567536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115514 ((n : ℤ) * A076849 (Nat.choose 2 (a (n - 1)).toNat + 1) + 1).toNat

end

end A177994.P12837703293958567536

namespace A177994

/-- `A115514(n*A076849(C(2, a(n-1))+1)+1)` -/
def P12837703293958567536.Spec : Prop :=
  ∀ n, P12837703293958567536.a n = A177994 n

end A177994

/-! ## A177994.P6206082235998872121

`A008619(and(A025581(n), A193845(n)))`
-/

namespace A177994.P6206082235998872121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.land (A025581 n) (A193845 n)).toNat

end

end A177994.P6206082235998872121

namespace A177994

/-- `A008619(and(A025581(n), A193845(n)))` -/
def P6206082235998872121.Spec : Prop :=
  ∀ n, P6206082235998872121.a n = A177994 n

end A177994

/-! ## A177994.P8687302756858662329

`A065033(and(A004736(n+1), A193845(n)))`
-/

namespace A177994.P8687302756858662329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.land (A004736 (n + 1)) (A193845 n)).toNat

end

end A177994.P8687302756858662329

namespace A177994

/-- `A065033(and(A004736(n+1), A193845(n)))` -/
def P8687302756858662329.Spec : Prop :=
  ∀ n, P8687302756858662329.a n = A177994 n

end A177994

/-! ## A177994.P7041310865909595449

`A008619(and(1, A002260(n+1))*A025581(n))`
-/

namespace A177994.P7041310865909595449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.land 1 (A002260 (n + 1)) * A025581 n).toNat

end

end A177994.P7041310865909595449

namespace A177994

/-- `A008619(and(1, A002260(n+1))*A025581(n))` -/
def P7041310865909595449.Spec : Prop :=
  ∀ n, P7041310865909595449.a n = A177994 n

end A177994

/-! ## A177994.P3637064273888433205

`A008619(A002262(n+1)%2*A025581(n))`
-/

namespace A177994.P3637064273888433205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A002262 (n + 1)) 2 * A025581 n).toNat

end

end A177994.P3637064273888433205

namespace A177994

/-- `A008619(A002262(n+1)%2*A025581(n))` -/
def P3637064273888433205.Spec : Prop :=
  ∀ n, P3637064273888433205.a n = A177994 n

end A177994

/-! ## A177994.P8967465556076088619

`A065033(A128221(A038722(n+1)))`
-/

namespace A177994.P8967465556076088619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A128221 (A038722 (n + 1)).toNat).toNat

end

end A177994.P8967465556076088619

namespace A177994

/-- `A065033(A128221(A038722(n+1)))` -/
def P8967465556076088619.Spec : Prop :=
  ∀ n, P8967465556076088619.a n = A177994 n

end A177994

/-! ## A177994.P13669007978739358264

`A177991(A014132(n+1))`
-/

namespace A177994.P13669007978739358264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177991 (A014132 (n + 1)).toNat

end

end A177994.P13669007978739358264

namespace A177994

/-- `A177991(A014132(n+1))` -/
def P13669007978739358264.Spec : Prop :=
  ∀ n, P13669007978739358264.a n = A177994 n

end A177994

/-! ## A177994.P17937053382445205930

`A177991(A007401(n+2))`
-/

namespace A177994.P17937053382445205930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177991 (A007401 (n + 2)).toNat

end

end A177994.P17937053382445205930

namespace A177994

/-- `A177991(A007401(n+2))` -/
def P17937053382445205930.Spec : Prop :=
  ∀ n, P17937053382445205930.a n = A177994 n

end A177994

/-! ## A177994.P3809756187904248691

`A177991(A181133(n+2))`
-/

namespace A177994.P3809756187904248691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177991 (A181133 (n + 2)).toNat

end

end A177994.P3809756187904248691

namespace A177994

/-- `A177991(A181133(n+2))` -/
def P3809756187904248691.Spec : Prop :=
  ∀ n, P3809756187904248691.a n = A177994 n

end A177994

/-! ## A177994.P1111579030068831157

`round(A173261(n+3)/2)`
-/

namespace A177994.P1111579030068831157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A173261 (n + 3) : ℚ) / 2)

end

end A177994.P1111579030068831157

namespace A177994

/-- `round(A173261(n+3)/2)` -/
def P1111579030068831157.Spec : Prop :=
  ∀ n, P1111579030068831157.a n = A177994 n

end A177994

/-! ## A177994.P7889098249687094016

`A115514(C(n, a(n-1)²²²)+1)` with `a(0)=1`
-/

namespace A177994.P7889098249687094016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115514 (Nat.choose n (((a (n - 1) ^ 2) ^ 2) ^ 2).toNat + 1)

end

end A177994.P7889098249687094016

namespace A177994

/-- `A115514(C(n, a(n-1)²²²)+1)` -/
def P7889098249687094016.Spec : Prop :=
  ∀ n, P7889098249687094016.a n = A177994 n

end A177994

/-! ## A177994.P179271705634651082

`A110591(gcd(A004248(n), A130321(n)))`
-/

namespace A177994.P179271705634651082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (Int.gcd (A004248 n) (A130321 n))

end

end A177994.P179271705634651082

namespace A177994

/-- `A110591(gcd(A004248(n), A130321(n)))` -/
def P179271705634651082.Spec : Prop :=
  ∀ n, P179271705634651082.a n = A177994 n

end A177994

/-!
# A177995: Triangle, row sums = odd Fibonacci numbers, A014437.

The programs for A177995, there is no canonical definition to state claims against.
-/

/-! ## A177995.P17465886024829707040

`A238432(A117505(n))%7`
-/

namespace A177995.P17465886024829707040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238432 (A117505 n).toNat) 7

end

end A177995.P17465886024829707040

/-!
# A177997: p and A002808(p)/2 are both prime.

The programs for A177997, the canonical program `A177997.P12061995829486224257` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177997 has offset 1).

The definition of A177997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177997.P12061995829486224257

`p?[A065897(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A177997

/-- `p?[A065897(n+1)]` -/
def P12061995829486224257.Spec : Prop :=
  ∀ n, P12061995829486224257.a n = A177997 (n + 1)

theorem P12061995829486224257.correct : P12061995829486224257.Spec := by
  intro n
  simp only [A177997, Nat.add_sub_cancel]

end A177997

/-! ## A177997.P5467833064466688199

`p?[A163468(n+1)-2]`
-/

namespace A177997.P5467833064466688199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163468 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177997.P5467833064466688199

namespace A177997

/-- `p?[A163468(n+1)-2]` -/
def P5467833064466688199.Spec : Prop :=
  ∀ n, P5467833064466688199.a n = A177997 (n + 1)

theorem P5467833064466688199.correct : P5467833064466688199.Spec := by
  intro n
  simp only [A177997, Nat.add_sub_cancel, A177997.P5467833064466688199.f1, A177997.P5467833064466688199.a, A177997.P12061995829486224257.f1, A177997.P12061995829486224257.a, A065897, A065897.P7299211329886055703.a, A163468, A163468.P8406828026260451703.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177997

/-! ## A177997.P8637002590891312201

`∩[A065897(n+1), A155108(n+1)]`
-/

namespace A177997.P8637002590891312201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P8637002590891312201

namespace A177997

/-- `∩[A065897(n+1), A155108(n+1)]` -/
def P8637002590891312201.Spec : Prop :=
  ∀ n, (P8637002590891312201.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P7554479904855968284

`∩[A348283(n+1), A065897(n+1)]`
-/

namespace A177997.P7554479904855968284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P7554479904855968284

namespace A177997

/-- `∩[A348283(n+1), A065897(n+1)]` -/
def P7554479904855968284.Spec : Prop :=
  ∀ n, (P7554479904855968284.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P11832930310955478460

`p?[A000040(n+1)+A246514(n+1)-(n+1)]`
-/

namespace A177997.P11832930310955478460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A246514 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177997.P11832930310955478460

namespace A177997

/-- `p?[A000040(n+1)+A246514(n+1)-(n+1)]` -/
def P11832930310955478460.Spec : Prop :=
  ∀ n, P11832930310955478460.a n = A177997 (n + 1)

theorem P11832930310955478460.correct : P11832930310955478460.Spec := by
  intro n
  simp only [A177997, Nat.add_sub_cancel, A177997.P11832930310955478460.f1, A177997.P11832930310955478460.a, A177997.P12061995829486224257.f1, A177997.P12061995829486224257.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065897, A065897.P7299211329886055703.a, A246514, A246514.P626080667968607195.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177997

/-! ## A177997.P3955979760236059791

`∩[A000040(n+1), A065897(n+1)]`
-/

namespace A177997.P3955979760236059791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P3955979760236059791

namespace A177997

/-- `∩[A000040(n+1), A065897(n+1)]` -/
def P3955979760236059791.Spec : Prop :=
  ∀ n, (P3955979760236059791.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P15698032247871631654

`∩[A045344(n+1), A065897(n+1)]`
-/

namespace A177997.P15698032247871631654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P15698032247871631654

namespace A177997

/-- `∩[A045344(n+1), A065897(n+1)]` -/
def P15698032247871631654.Spec : Prop :=
  ∀ n, (P15698032247871631654.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P5087174933459859711

`∩[A053813(n+1), A065897(n+1)]`
-/

namespace A177997.P5087174933459859711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P5087174933459859711

namespace A177997

/-- `∩[A053813(n+1), A065897(n+1)]` -/
def P5087174933459859711.Spec : Prop :=
  ∀ n, (P5087174933459859711.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P12456187681589732949

`∩[A065897(n+1), A116974(n+1)]`
-/

namespace A177997.P12456187681589732949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P12456187681589732949

namespace A177997

/-- `∩[A065897(n+1), A116974(n+1)]` -/
def P12456187681589732949.Spec : Prop :=
  ∀ n, (P12456187681589732949.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P3890262977857591797

`∩[A065897(n+1), A175787(n+1)]`
-/

namespace A177997.P3890262977857591797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P3890262977857591797

namespace A177997

/-- `∩[A065897(n+1), A175787(n+1)]` -/
def P3890262977857591797.Spec : Prop :=
  ∀ n, (P3890262977857591797.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P9804877317665039051

`∩[A065897(n+1), A182986(n+1)]`
-/

namespace A177997.P9804877317665039051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P9804877317665039051

namespace A177997

/-- `∩[A065897(n+1), A182986(n+1)]` -/
def P9804877317665039051.Spec : Prop :=
  ∀ n, (P9804877317665039051.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P16417182328833007953

`∩[A065897(n+1), A261123(n+1)]`
-/

namespace A177997.P16417182328833007953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P16417182328833007953

namespace A177997

/-- `∩[A065897(n+1), A261123(n+1)]` -/
def P16417182328833007953.Spec : Prop :=
  ∀ n, (P16417182328833007953.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P11641246087266974841

`∩[A065897(n+1), A186285(n+1)]`
-/

namespace A177997.P11641246087266974841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P11641246087266974841

namespace A177997

/-- `∩[A065897(n+1), A186285(n+1)]` -/
def P11641246087266974841.Spec : Prop :=
  ∀ n, (P11641246087266974841.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P574592512915993381

`∩[A065897(n+1), A189710(n+1)]`
-/

namespace A177997.P574592512915993381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177997.P574592512915993381

namespace A177997

/-- `∩[A065897(n+1), A189710(n+1)]` -/
def P574592512915993381.Spec : Prop :=
  ∀ n, (P574592512915993381.a n : ℤ) = A177997 (n + 1)

end A177997

/-! ## A177997.P16946547538369216797

`record[A006530(A065897(n+2))]`
-/

namespace A177997.P16946547538369216797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065897 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177997.P16946547538369216797

namespace A177997

/-- `record[A006530(A065897(n+2))]` -/
def P16946547538369216797.Spec : Prop :=
  ∀ n, P16946547538369216797.a n = A177997 (n + 1)

end A177997

/-! ## A177997.P3992046566359833922

`filter[A065897(n+1), A010051(#)]`
-/

namespace A177997.P3992046566359833922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A177997.P3992046566359833922

namespace A177997

/-- `filter[A065897(n+1), A010051(#)]` -/
def P3992046566359833922.Spec : Prop :=
  ∀ n, P3992046566359833922.a n = A177997 (n + 1)

end A177997

/-! ## A177997.P12742125122299473487

`record[A006530(A163468(n+2)-2)]`
-/

namespace A177997.P12742125122299473487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A163468 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177997.P12742125122299473487

namespace A177997

/-- `record[A006530(A163468(n+2)-2)]` -/
def P12742125122299473487.Spec : Prop :=
  ∀ n, P12742125122299473487.a n = A177997 (n + 1)

end A177997

/-! ## A177997.P1001470511772313681

`p?[A305800(A100484(n+1))-2]`
-/

namespace A177997.P1001470511772313681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A100484 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177997.P1001470511772313681

namespace A177997

/-- `p?[A305800(A100484(n+1))-2]` -/
def P1001470511772313681.Spec : Prop :=
  ∀ n, P1001470511772313681.a n = A177997 (n + 1)

end A177997

/-! ## A177997.P14441913521965374110

`p?[A305800(2*A000040(n+1))-2]`
-/

namespace A177997.P14441913521965374110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * A000040 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177997.P14441913521965374110

namespace A177997

/-- `p?[A305800(2*A000040(n+1))-2]` -/
def P14441913521965374110.Spec : Prop :=
  ∀ n, P14441913521965374110.a n = A177997 (n + 1)

end A177997

/-! ## A177997.P3450470738463665333

`p?[A305801(2*A000040(n+1))-3]`
-/

namespace A177997.P3450470738463665333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (2 * A000040 (n + 1)).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177997.P3450470738463665333

namespace A177997

/-- `p?[A305801(2*A000040(n+1))-3]` -/
def P3450470738463665333.Spec : Prop :=
  ∀ n, P3450470738463665333.a n = A177997 (n + 1)

end A177997

/-!
# A177998: The n-digit prime with the largest number of zero decimal digits, the largest of these if there are more than one. Zero if no such prime exists.

The programs for A177998, there is no canonical definition to state claims against.
-/

/-! ## A177998.P3074833316868551484

`A019432(A000533(n)*A333348(n))`
-/

namespace A177998.P3074833316868551484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A000533 n * A333348 n).toNat

end

end A177998.P3074833316868551484

/-!
# A177999: Largest n digit prime with the most digits equal to 1.

The programs for A177999, there is no canonical definition to state claims against.
-/

/-! ## A177999.P15554139705240788671

`A268702(n+1)%(4*A037059(n))`
-/

namespace A177999.P15554139705240788671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268702 (n + 1)) (4 * A037059 n)

end

end A177999.P15554139705240788671

/-! ## A177999.P16513973098610760202

`A268702(n+1)%A138444(A053416(n))`
-/

namespace A177999.P16513973098610760202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268702 (n + 1)) (A138444 (A053416 n).toNat)

end

end A177999.P16513973098610760202

