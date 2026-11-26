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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A193900: Mirror of the triangle A193899.

The programs for A193900, the canonical program `A193900.P308567548711973632` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193900 has offset 0).

The definition of A193900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193900.P308567548711973632

`floor(A130329(n)/A001222(2*A006530(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A193900

/-- `floor(A130329(n)/A001222(2*A006530(n+1)))` -/
def P308567548711973632.Spec : Prop :=
  ∀ n, P308567548711973632.a n = A193900 n

theorem P308567548711973632.correct : P308567548711973632.Spec := by
  intro n
  simp only [A193900]

end A193900

/-! ## A193900.P18293165011878172718

`floor(A130329(n)/A001221(2*A000040(n+1)))`
-/

namespace A193900.P18293165011878172718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130329 n : ℚ) / (A001221 (2 * A000040 (n + 1)).toNat : ℚ)⌋

end

end A193900.P18293165011878172718

namespace A193900

/-- `floor(A130329(n)/A001221(2*A000040(n+1)))` -/
def P18293165011878172718.Spec : Prop :=
  ∀ n, P18293165011878172718.a n = A193900 n

end A193900

/-! ## A193900.P15894049603810498603

`A193899(∑[2*n]%comp[∑[n]])`
-/

namespace A193900.P15894049603810498603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193899 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193900.P15894049603810498603

namespace A193900

/-- `A193899(∑[2*n]%comp[∑[n]])` -/
def P15894049603810498603.Spec : Prop :=
  ∀ n, P15894049603810498603.a n = A193900 n

end A193900

/-!
# A193902: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=2x*p(n-1,x)+1, p(0,x)=1.

The programs for A193902, there is no canonical definition to state claims against.
-/

/-! ## A193902.P10415929755408675554

`A186421(A089633(n)+1)`
-/

namespace A193902.P10415929755408675554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A089633 n + 1).toNat

end

end A193902.P10415929755408675554

/-! ## A193902.P2025481518063695932

`A089633(n)%A300937(n+1)+1`
-/

namespace A193902.P2025481518063695932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089633 n) (A300937 (n + 1)) + 1

end

end A193902.P2025481518063695932

/-! ## A193902.P11763446445815807961

`A008619(A030130(n+1)%A282399(n+1))`
-/

namespace A193902.P11763446445815807961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A030130 (n + 1)) (A282399 (n + 1))).toNat

end

end A193902.P11763446445815807961

/-! ## A193902.P8746280979560721871

`A193903(A061579(n))`
-/

namespace A193902.P8746280979560721871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193903 (A061579 n).toNat

end

end A193902.P8746280979560721871

/-! ## A193902.P3666175480012423713

`A193904(n)/A155038(n+1)`
-/

namespace A193902.P3666175480012423713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193904 n : ℚ) / (A155038 (n + 1) : ℚ)

end

end A193902.P3666175480012423713

/-!
# A193903: Mirror of the triangle A193902.

The programs for A193903, there is no canonical definition to state claims against.
-/

/-! ## A193903.P4675843110385767490

`2^col(n)+2*T(n-1,k)` with `a(0)=1, a(1)=1`
-/

namespace A193903.P4675843110385767490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 ^ SequenceMachineLib.triCol n + 2 * SequenceMachineLib.triUp a n

end

end A193903.P4675843110385767490

/-! ## A193903.P14922868691425467219

`2^row(n-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A193903.P14922868691425467219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 ^ SequenceMachineLib.triRow ((n : ℤ) - 1).toNat + SequenceMachineLib.triUp a n

end

end A193903.P14922868691425467219

/-! ## A193903.P1721405254048779934

`A059268(n)+2*T(n-1,k)` with `a(0)=1, a(1)=1`
-/

namespace A193903.P1721405254048779934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A059268 n + 2 * SequenceMachineLib.triUp a n

end

end A193903.P1721405254048779934

/-! ## A193903.P2068137885749761580

`A193902(∑[2*n]%comp[∑[n]])`
-/

namespace A193903.P2068137885749761580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193902 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193903.P2068137885749761580

/-! ## A193903.P7578813607809631429

`2*T(n-1,k)+2^A002262(n)` with `a(0)=1, a(1)=1`
-/

namespace A193903.P7578813607809631429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * SequenceMachineLib.triUp a n + (2 : ℚ) ^ (A002262 n : ℤ)

end

end A193903.P7578813607809631429

/-! ## A193903.P12007745304527061465

`A186421(A130328(n))`
-/

namespace A193903.P12007745304527061465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A130328 n).toNat

end

end A193903.P12007745304527061465

/-! ## A193903.P11003093966381658935

`A130328(A352520(n))`
-/

namespace A193903.P11003093966381658935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 (A352520 n).toNat

end

end A193903.P11003093966381658935

/-! ## A193903.P8629358184054237376

`2^A087836(n+1)-A059268(n)`
-/

namespace A193903.P8629358184054237376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A087836 (n + 1) : ℤ) - (A059268 n : ℚ)

end

end A193903.P8629358184054237376

/-! ## A193903.P13909279147235318793

`A193905(n)/A232089(n)`
-/

namespace A193903.P13909279147235318793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193905 n : ℚ) / (A232089 n : ℚ)

end

end A193903.P13909279147235318793

/-!
# A193904: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=x*p(n-1,x)+2^n with p(0,x)=1, and q(n,x)=2x*q(n-1,x)+1 with q(0,x)=1.

The programs for A193904, there is no canonical definition to state claims against.
-/

/-! ## A193904.P15356460563800769599

`abs(A152568(n)*A193902(n))`
-/

namespace A193904.P15356460563800769599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152568 n * A193902 n|

end

end A193904.P15356460563800769599

/-! ## A193904.P5606160742822891942

`Δ[A089633(n)]*A193902(n)`
-/

namespace A193904.P5606160742822891942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A193902 n

end

end A193904.P5606160742822891942

/-! ## A193904.P15472952862234161590

`A155038(1+n)*A193902(n)`
-/

namespace A193904.P15472952862234161590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (1 + n) * A193902 n

end

end A193904.P15472952862234161590

/-! ## A193904.P18249838373292899455

`A057728(n+2)*A193902(n)`
-/

namespace A193904.P18249838373292899455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 2) * A193902 n

end

end A193904.P18249838373292899455

/-! ## A193904.P891789203524085844

`Δ[A023758(n+2)]*A193902(n)`
-/

namespace A193904.P891789203524085844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A193902 n

end

end A193904.P891789203524085844

/-! ## A193904.P3683901252506796475

`Δ[A043569(n+1)/2]*A193902(n)`
-/

namespace A193904.P3683901252506796475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043569 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A193902 n : ℚ)

end

end A193904.P3683901252506796475

/-! ## A193904.P1932361418209816635

`A011782(A025581(n))*A193902(n)`
-/

namespace A193904.P1932361418209816635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n).toNat * A193902 n

end

end A193904.P1932361418209816635

/-! ## A193904.P5147999988395278183

`A065033(A089633(n))*A130321(n)`
-/

namespace A193904.P5147999988395278183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A089633 n).toNat * A130321 n

end

end A193904.P5147999988395278183

/-! ## A193904.P1212357043757518598

`A000010(A130321(n))*A193902(n)`
-/

namespace A193904.P1212357043757518598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130321 n).toNat * A193902 n

end

end A193904.P1212357043757518598

/-! ## A193904.P13982828686856028669

`A193902(n)*A232089(A061579(n))`
-/

namespace A193904.P13982828686856028669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193902 n * A232089 (A061579 n).toNat

end

end A193904.P13982828686856028669

/-!
# A193905: Mirror of the triangle A193904.

The programs for A193905, there is no canonical definition to state claims against.
-/

/-! ## A193905.P8222258565252792912

`A193903(n)*A232089(n)`
-/

namespace A193905.P8222258565252792912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193903 n * A232089 n

end

end A193905.P8222258565252792912

/-! ## A193905.P15850603062426193693

`Δ[A048645(1+n)]*A193903(n)`
-/

namespace A193905.P15850603062426193693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A193903 n

end

end A193905.P15850603062426193693

/-! ## A193905.P14981263288487011226

`A130328(A245300(n)-A123578(n))`
-/

namespace A193905.P14981263288487011226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 (A245300 n - A123578 n).toNat

end

end A193905.P14981263288487011226

/-! ## A193905.P2294795390205906054

`A004525(A130328(n))*A059268(n)`
-/

namespace A193905.P2294795390205906054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A130328 n).toNat * A059268 n

end

end A193905.P2294795390205906054

/-! ## A193905.P16921192494621880398

`A011782(A002262(n))*A193903(n)`
-/

namespace A193905.P16921192494621880398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat * A193903 n

end

end A193905.P16921192494621880398

/-! ## A193905.P11554478473899023623

`A000010(A059268(n))*A193903(n)`
-/

namespace A193905.P11554478473899023623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A193903 n

end

end A193905.P11554478473899023623

/-! ## A193905.P9687828073338177581

`A011782(A163351(n))*A193903(n)`
-/

namespace A193905.P9687828073338177581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A163351 n).toNat * A193903 n

end

end A193905.P9687828073338177581

/-! ## A193905.P18107655294944068820

`A003557(A276618(n))*A193903(n)`
-/

namespace A193905.P18107655294944068820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A276618 n).toNat * A193903 n

end

end A193905.P18107655294944068820

/-! ## A193905.P4928400909524402149

`A193902(A061579(n))*A232089(n)`
-/

namespace A193905.P4928400909524402149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193902 (A061579 n).toNat * A232089 n

end

end A193905.P4928400909524402149

/-! ## A193905.P13276673047294579632

`A000982(A137688(n))-A000982(A173787(n))`
-/

namespace A193905.P13276673047294579632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A137688 n).toNat - A000982 (A173787 n).toNat

end

end A193905.P13276673047294579632

/-!
# A193906: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=sum{F(k+2)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers).

The programs for A193906, there is no canonical definition to state claims against.
-/

/-! ## A193906.P15607245366589259512

`A193907(∑[2*n]%comp[∑[n]])`
-/

namespace A193906.P15607245366589259512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193907 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193906.P15607245366589259512

/-!
# A193907: Mirror of the triangle A193906.

The programs for A193907, there is no canonical definition to state claims against.
-/

/-! ## A193907.P3037760497441995553

`A193906(∑[2*n]%comp[∑[n]])`
-/

namespace A193907.P3037760497441995553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193906 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193907.P3037760497441995553

/-!
# A193908: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+2)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers), and q(n,x)=2x*q(n-1,x)+1 with q(0,x)=1.

The programs for A193908, there is no canonical definition to state claims against.
-/

/-! ## A193908.P17545912209959486040

`A193909(∑[2*n]%comp[∑[n]])`
-/

namespace A193908.P17545912209959486040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193909 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193908.P17545912209959486040

/-!
# A193909: Mirror of the triangle A193908.

The programs for A193909, there is no canonical definition to state claims against.
-/

/-! ## A193909.P2612781225902696569

`(A204922(n+1)-A073424(n))*A059268(n)`
-/

namespace A193909.P2612781225902696569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204922 (n + 1) - A073424 n) * A059268 n

end

end A193909.P2612781225902696569

/-! ## A193909.P2293068973956400148

`(A204922(n+1)-A073424(n))*A000079(A163351(n))`
-/

namespace A193909.P2293068973956400148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204922 (n + 1) - A073424 n) * A000079 (A163351 n).toNat

end

end A193909.P2293068973956400148

/-! ## A193909.P7209022685603543314

`A193908(∑[2*n]%comp[∑[n]])`
-/

namespace A193909.P7209022685603543314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193908 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193909.P7209022685603543314

/-!
# A193910: Leap centuries in the revised Julian calendar.

The programs for A193910, the canonical program `A193910.P15574741651008581582` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193910 has offset 1).

The definition of A193910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193910.P15574741651008581582

`a(n-2)+9` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A193910

/-- `a(n-2)+9` -/
def P15574741651008581582.Spec : Prop :=
  ∀ n, (P15574741651008581582.a n : ℤ) = A193910 (n + 1)

theorem P15574741651008581582.correct : P15574741651008581582.Spec := by
  intro n
  simp only [A193910, Nat.add_sub_cancel]

end A193910

/-! ## A193910.P12158299291587729585

`ogf((2+4x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A193910.P12158299291587729585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 3] [1, -1, -1, 1] n

end

end A193910.P12158299291587729585

namespace A193910

/-- `ogf((2+4x+3x^2)/(1-x-x^2+x^3))` -/
def P12158299291587729585.Spec : Prop :=
  ∀ n, P12158299291587729585.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P4816741323237567795

`2+floor(9/2*n)`
-/

namespace A193910.P4816741323237567795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + ⌊(9 : ℚ) / 2 * (n : ℚ)⌋

end

end A193910.P4816741323237567795

namespace A193910

/-- `2+floor(9/2*n)` -/
def P4816741323237567795.Spec : Prop :=
  ∀ n, P4816741323237567795.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P1196465062800855993

`∑[2+∑{d}[n, C(2, #)]]`
-/

namespace A193910.P1196465062800855993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + ∑ d ∈ Nat.divisors (f2 n), Nat.choose 2 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193910.P1196465062800855993

namespace A193910

/-- `∑[2+∑{d}[n, C(2, #)]]` -/
def P1196465062800855993.Spec : Prop :=
  ∀ n, (P1196465062800855993.a n : ℤ) = A193910 (n + 1)

end A193910

/-! ## A193910.P10024099987503601631

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A193910.P10024099987503601631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 5] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193910.P10024099987503601631

namespace A193910

/-- `∑[abs(a(n-2))]` -/
def P10024099987503601631.Spec : Prop :=
  ∀ n, (P10024099987503601631.a n : ℤ) = A193910 (n + 1)

end A193910

/-! ## A193910.P17082047156971266891

`∑[9-a(n-1)]` with `a(0)=2, a(1)=4`
-/

namespace A193910.P17082047156971266891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193910.P17082047156971266891

namespace A193910

/-- `∑[9-a(n-1)]` -/
def P17082047156971266891.Spec : Prop :=
  ∀ n, P17082047156971266891.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P13618998212389855081

`fp[floor(2*n/3)/3]`
-/

namespace A193910.P13618998212389855081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(2 * n : ℚ) / 3⌋ : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A193910.P13618998212389855081

namespace A193910

/-- `fp[floor(2*n/3)/3]` -/
def P13618998212389855081.Spec : Prop :=
  ∀ n, (P13618998212389855081.a n : ℤ) = A193910 (n + 1)

end A193910

/-! ## A193910.P1690844768161132009

`∑[∑[ogf((2+4x+3x^2)/(1+x))]]`
-/

namespace A193910.P1690844768161132009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193910.P1690844768161132009

namespace A193910

/-- `∑[∑[ogf((2+4x+3x^2)/(1+x))]]` -/
def P1690844768161132009.Spec : Prop :=
  ∀ n, P1690844768161132009.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P1487399051225543522

`record[n+2-(2*n)%9]`
-/

namespace A193910.P1487399051225543522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((2 * n % 9 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193910.P1487399051225543522

namespace A193910

/-- `record[n+2-(2*n)%9]` -/
def P1487399051225543522.Spec : Prop :=
  ∀ n, P1487399051225543522.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P3871907208842267415

`lt[1, val(n²+3+n, 3)]`
-/

namespace A193910.P3871907208842267415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 3 + n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193910.P3871907208842267415

namespace A193910

/-- `lt[1, val(n²+3+n, 3)]` -/
def P3871907208842267415.Spec : Prop :=
  ∀ n, (P3871907208842267415.a n : ℤ) = A193910 (n + 1)

end A193910

/-! ## A193910.P14097967543320278591

`record[abs(2-n)-dr(2*n)]`
-/

namespace A193910.P14097967543320278591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| - (SequenceMachineLib.digitalRoot (2 * n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193910.P14097967543320278591

namespace A193910

/-- `record[abs(2-n)-dr(2*n)]` -/
def P14097967543320278591.Spec : Prop :=
  ∀ n, P14097967543320278591.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P14168318152805879656

`record[3-dr(2*n+1)+n]`
-/

namespace A193910.P14168318152805879656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193910.P14168318152805879656

namespace A193910

/-- `record[3-dr(2*n+1)+n]` -/
def P14168318152805879656.Spec : Prop :=
  ∀ n, P14168318152805879656.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P17090720690182647629

`ceil(lcm(3, 2*n+1+n)/2)`
-/

namespace A193910.P17090720690182647629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 3 (2 * n + 1 + n) : ℚ) / 2⌉

end

end A193910.P17090720690182647629

namespace A193910

/-- `ceil(lcm(3, 2*n+1+n)/2)` -/
def P17090720690182647629.Spec : Prop :=
  ∀ n, P17090720690182647629.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P17826775650162763399

`floor(9*n-1-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A193910.P17826775650162763399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (9 * n : ℤ) - 1 - a (n - 1)

end

end A193910.P17826775650162763399

namespace A193910

/-- `floor(9*n-1-a(n-1))` -/
def P17826775650162763399.Spec : Prop :=
  ∀ n, P17826775650162763399.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P7799890125158152530

`4-((1-n)%2-a(n-1))` with `a(0)=2`
-/

namespace A193910.P7799890125158152530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 - (Int.tmod (1 - (n : ℤ)) 2 - a (n - 1))

end

end A193910.P7799890125158152530

namespace A193910

/-- `4-((1-n)%2-a(n-1))` -/
def P7799890125158152530.Spec : Prop :=
  ∀ n, P7799890125158152530.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P9065201075141986810

`record[(n+2)/((2*n+1)%9)!]`
-/

namespace A193910.P9065201075141986810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.factorial ((2 * n + 1) % 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193910.P9065201075141986810

namespace A193910

/-- `record[(n+2)/((2*n+1)%9)!]` -/
def P9065201075141986810.Spec : Prop :=
  ∀ n, P9065201075141986810.a n = (A193910 (n + 1) : ℚ)

end A193910

/-! ## A193910.P3807428275581904322

`eq[n+3, dr((n+1)*2*n)+n]`
-/

namespace A193910.P3807428275581904322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n + 1) * (2 * n) : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193910.P3807428275581904322

namespace A193910

/-- `eq[n+3, dr((n+1)*2*n)+n]` -/
def P3807428275581904322.Spec : Prop :=
  ∀ n, (P3807428275581904322.a n : ℤ) = A193910 (n + 1)

end A193910

/-! ## A193910.P11799976999750416424

`ceil(A017197(n)/2)`
-/

namespace A193910.P11799976999750416424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017197 n : ℚ) / 2⌉

end

end A193910.P11799976999750416424

namespace A193910

/-- `ceil(A017197(n)/2)` -/
def P11799976999750416424.Spec : Prop :=
  ∀ n, P11799976999750416424.a n = A193910 (n + 1)

end A193910

/-! ## A193910.P7102409978912972643

`∑[dr(1-A040422(n))]`
-/

namespace A193910.P7102409978912972643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A040422 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193910.P7102409978912972643

namespace A193910

/-- `∑[dr(1-A040422(n))]` -/
def P7102409978912972643.Spec : Prop :=
  ∀ n, (P7102409978912972643.a n : ℤ) = A193910 (n + 1)

end A193910

/-! ## A193910.P669352680818501718

`∑[A048186(a(n-1))]` with `a(0)=2`
-/

namespace A193910.P669352680818501718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A048186 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193910.P669352680818501718

namespace A193910

/-- `∑[A048186(a(n-1))]` -/
def P669352680818501718.Spec : Prop :=
  ∀ n, P669352680818501718.a n = A193910 (n + 1)

end A193910

/-!
# A193911: Sums of the diagonals of the matrix formed by listing the h-Stohr sequences in increasing order.

The programs for A193911, the canonical program `A193911.P4685327557335337339` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193911 has offset 1).

The definition of A193911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193911.P4685327557335337339

`ogf((1+x-x^2)/(1-2x-2x^2+6x^3-x^4-4x^5+2x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A193911

/-- `ogf((1+x-x^2)/(1-2x-2x^2+6x^3-x^4-4x^5+2x^6))` -/
def P4685327557335337339.Spec : Prop :=
  ∀ n, P4685327557335337339.a n = A193911 (n + 1)

theorem P4685327557335337339.correct : P4685327557335337339.Spec := by
  intro n
  simp only [A193911, Nat.add_sub_cancel]

end A193911

/-! ## A193911.P12061146539762479899

`∑[record[row(n)+2*T(n-1,k-1)]]` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A193911.P12061146539762479899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n f2 =>
  (SequenceMachineLib.triRow n : ℤ) + 2 * SequenceMachineLib.triUpLeft f2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P12061146539762479899

namespace A193911

/-- `∑[record[row(n)+2*T(n-1,k-1)]]` -/
def P12061146539762479899.Spec : Prop :=
  ∀ n, P12061146539762479899.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P17674296084253364082

`∑[∑[ceil(A075427(n)/2)]]`
-/

namespace A193911.P17674296084253364082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075427 n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P17674296084253364082

namespace A193911

/-- `∑[∑[ceil(A075427(n)/2)]]` -/
def P17674296084253364082.Spec : Prop :=
  ∀ n, P17674296084253364082.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P3279008068998451274

`∑[∑[A228693(2+n)-1]]`
-/

namespace A193911.P3279008068998451274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (2 + n) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P3279008068998451274

namespace A193911

/-- `∑[∑[A228693(2+n)-1]]` -/
def P3279008068998451274.Spec : Prop :=
  ∀ n, P3279008068998451274.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P3782534828142339767

`∑[A136252(n)-∑[n%2]]`
-/

namespace A193911.P3782534828142339767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P3782534828142339767

namespace A193911

/-- `∑[A136252(n)-∑[n%2]]` -/
def P3782534828142339767.Spec : Prop :=
  ∀ n, P3782534828142339767.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P10921855990259666092

`∑[∑[A060546(n)-and(1, n)]]`
-/

namespace A193911.P10921855990259666092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P10921855990259666092

namespace A193911

/-- `∑[∑[A060546(n)-and(1, n)]]` -/
def P10921855990259666092.Spec : Prop :=
  ∀ n, P10921855990259666092.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P5880798275164735074

`∑[∑[(A086341(n+1)-1)/2]]`
-/

namespace A193911.P5880798275164735074
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086341 (n + 1) - 1 : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P5880798275164735074

namespace A193911

/-- `∑[∑[(A086341(n+1)-1)/2]]` -/
def P5880798275164735074.Spec : Prop :=
  ∀ n, P5880798275164735074.a n = (A193911 (n + 1) : ℚ)

end A193911

/-! ## A193911.P16187640023016820053

`∑[∑[A052955(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A193911.P16187640023016820053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A052955 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P16187640023016820053

namespace A193911

/-- `∑[∑[A052955(n)-a(n-1)]]` -/
def P16187640023016820053.Spec : Prop :=
  ∀ n, P16187640023016820053.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P4677223533771582895

`∑[∑[A106624(n+1)]+and(1, n+1)]`
-/

namespace A193911.P4677223533771582895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P4677223533771582895

namespace A193911

/-- `∑[∑[A106624(n+1)]+and(1, n+1)]` -/
def P4677223533771582895.Spec : Prop :=
  ∀ n, P4677223533771582895.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P2308586306532456518

`A024206(n+2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A193911.P2308586306532456518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A024206 (n + 2) + (a (n - 2) + a (n - 2))

end

end A193911.P2308586306532456518

namespace A193911

/-- `A024206(n+2)+a(n-2)+a(n-2)` -/
def P2308586306532456518.Spec : Prop :=
  ∀ n, P2308586306532456518.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P13315759522344825848

`∑[2*A052955(n)-A080513(n)]`
-/

namespace A193911.P13315759522344825848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052955 n - A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P13315759522344825848

namespace A193911

/-- `∑[2*A052955(n)-A080513(n)]` -/
def P13315759522344825848.Spec : Prop :=
  ∀ n, P13315759522344825848.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P12528544514798675703

`A053599(n+2)-A002620(n+3)`
-/

namespace A193911.P12528544514798675703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053599 (n + 2) - A002620 (n + 3)

end

end A193911.P12528544514798675703

namespace A193911

/-- `A053599(n+2)-A002620(n+3)` -/
def P12528544514798675703.Spec : Prop :=
  ∀ n, P12528544514798675703.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P212553936820608087

`∑[A027383(n+1)-A004526(n+3)]`
-/

namespace A193911.P212553936820608087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) - A004526 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P212553936820608087

namespace A193911

/-- `∑[A027383(n+1)-A004526(n+3)]` -/
def P212553936820608087.Spec : Prop :=
  ∀ n, P212553936820608087.a n = A193911 (n + 1)

end A193911

/-! ## A193911.P7033112037281040039

`∑[∑[A016116(n+1)]-A004526(n+1)]`
-/

namespace A193911.P7033112037281040039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P7033112037281040039

namespace A193911

/-- `∑[∑[A016116(n+1)]-A004526(n+1)]` -/
def P7033112037281040039.Spec : Prop :=
  ∀ n, P7033112037281040039.a n = A193911 (n + 1)

end A193911

/-!
# A193912: Partial sums of A193911.

The programs for A193912, the canonical program `A193912.P17006153337437636728` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193912 has offset 1).

The definition of A193912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193912.P17006153337437636728

`ogf((1+x-x^2)/(1-3x+8x^3-7x^4-3x^5+6x^6-2x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A193912

/-- `ogf((1+x-x^2)/(1-3x+8x^3-7x^4-3x^5+6x^6-2x^7))` -/
def P17006153337437636728.Spec : Prop :=
  ∀ n, P17006153337437636728.a n = A193912 (n + 1)

theorem P17006153337437636728.correct : P17006153337437636728.Spec := by
  intro n
  simp only [A193912, Nat.add_sub_cancel]

end A193912

/-! ## A193912.P187963104835530651

`∑[A193911(1+n)]`
-/

namespace A193912.P187963104835530651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193911 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193912.P187963104835530651

namespace A193912

/-- `∑[A193911(1+n)]` -/
def P187963104835530651.Spec : Prop :=
  ∀ n, P187963104835530651.a n = A193912 (n + 1)

end A193912

/-! ## A193912.P8277133583797954873

`∑[∑[∑[A228693(n+2)-1]]]`
-/

namespace A193912.P8277133583797954873
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193912.P8277133583797954873

namespace A193912

/-- `∑[∑[∑[A228693(n+2)-1]]]` -/
def P8277133583797954873.Spec : Prop :=
  ∀ n, P8277133583797954873.a n = A193912 (n + 1)

end A193912

/-! ## A193912.P1739014834931674260

`∑[∑[∑[A060546(n)-and(1, n)]]]`
-/

namespace A193912.P1739014834931674260
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - (Nat.land 1 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193912.P1739014834931674260

namespace A193912

/-- `∑[∑[∑[A060546(n)-and(1, n)]]]` -/
def P1739014834931674260.Spec : Prop :=
  ∀ n, P1739014834931674260.a n = A193912 (n + 1)

end A193912

/-! ## A193912.P14241674265077058064

`A193911(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A193912.P14241674265077058064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193911 (n + 1) + a (n - 1)

end

end A193912.P14241674265077058064

namespace A193912

/-- `A193911(n+1)+a(n-1)` -/
def P14241674265077058064.Spec : Prop :=
  ∀ n, P14241674265077058064.a n = A193912 (n + 1)

end A193912

/-! ## A193912.P18405789320685596741

`∑[∑[∑[(A086341(n+1)-1)/2]]]`
-/

namespace A193912.P18405789320685596741
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086341 (n + 1) - 1 : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193912.P18405789320685596741

namespace A193912

/-- `∑[∑[∑[(A086341(n+1)-1)/2]]]` -/
def P18405789320685596741.Spec : Prop :=
  ∀ n, P18405789320685596741.a n = (A193912 (n + 1) : ℚ)

end A193912

/-! ## A193912.P258267899735409190

`∑[∑[∑[A052955(n)-a(n-1)]]]` with `a(0)=1`
-/

namespace A193912.P258267899735409190
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A052955 n - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193912.P258267899735409190

namespace A193912

/-- `∑[∑[∑[A052955(n)-a(n-1)]]]` -/
def P258267899735409190.Spec : Prop :=
  ∀ n, P258267899735409190.a n = A193912 (n + 1)

end A193912

/-! ## A193912.P7310285565659868498

`A005744(n+1)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A193912.P7310285565659868498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A005744 (n + 1) + (a (n - 2) + a (n - 2))

end

end A193912.P7310285565659868498

namespace A193912

/-- `A005744(n+1)+a(n-2)+a(n-2)` -/
def P7310285565659868498.Spec : Prop :=
  ∀ n, P7310285565659868498.a n = A193912 (n + 1)

end A193912

/-! ## A193912.P15373624668488900261

`∑[∑[∑[A032085(n+1)/a(n-1)]]]` with `a(0)=1`
-/

namespace A193912.P15373624668488900261
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f3 =>
  (A032085 (n + 1) : ℚ) / f3 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193912.P15373624668488900261

namespace A193912

/-- `∑[∑[∑[A032085(n+1)/a(n-1)]]]` -/
def P15373624668488900261.Spec : Prop :=
  ∀ n, P15373624668488900261.a n = (A193912 (n + 1) : ℚ)

end A193912

/-!
# A193913: Diagonal element T(n,n) of the infinite array with T(n,1) = T(1,n) = Fibonacci(n) and recursively T(n,k) = T(n-1,k-1) + T(n,k-1) + T(n-1,k).

The programs for A193913, there is no canonical definition to state claims against.
-/

/-! ## A193913.P7779227297400942203

`record[A128033(n)]+n!`
-/

namespace A193913.P7779227297400942203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.factorial n : ℤ)

end

end A193913.P7779227297400942203

/-!
# A193914: a(1)=1; a(n+1) = Reverse((1 + a(n))^2).

The programs for A193914, there is no canonical definition to state claims against.
-/

/-! ## A193914.P8919187128962115829

`A002942(1+a(n-1))` with `a(0)=1`
-/

namespace A193914.P8919187128962115829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002942 (1 + a (n - 1)).toNat

end

end A193914.P8919187128962115829

/-!
# A193915: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers), and q(n,x)=2x*q(n-1,x)+1 with q(0,x)=1.

The programs for A193915, there is no canonical definition to state claims against.
-/

/-! ## A193915.P10638080468590319171

`A193916(∑[2*n]%comp[∑[n]])`
-/

namespace A193915.P10638080468590319171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193916 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193915.P10638080468590319171

/-! ## A193915.P15228657055402300381

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A193921(n)`
-/

namespace A193915.P15228657055402300381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A193921 n : ℚ)

end

end A193915.P15228657055402300381

/-! ## A193915.P7911163050714010876

`A130321(n)*A193921(n)`
-/

namespace A193915.P7911163050714010876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193921 n

end

end A193915.P7911163050714010876

/-! ## A193915.P8992794295867684081

`sqrt(A262616(n))*A193921(n)`
-/

namespace A193915.P8992794295867684081
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A193921 n : ℝ)

end

end A193915.P8992794295867684081

/-! ## A193915.P18033959915513559889

`round(A143061(n+1)/ϕ)*A130321(n)`
-/

namespace A193915.P18033959915513559889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143061 (n + 1) : ℝ) / Real.goldenRatio) * A130321 n

end

end A193915.P18033959915513559889

/-! ## A193915.P9121960585533007974

`A000079(A025581(n))*A193921(n)`
-/

namespace A193915.P9121960585533007974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A193921 n

end

end A193915.P9121960585533007974

/-!
# A193916: Mirror of the triangle A193915.

The programs for A193916, there is no canonical definition to state claims against.
-/

/-! ## A193916.P556991189066514106

`2^col(n)*A193922(n)`
-/

namespace A193916.P556991189066514106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * A193922 n

end

end A193916.P556991189066514106

/-! ## A193916.P2204207195107974244

`A193915(∑[2*n]%comp[∑[n]])`
-/

namespace A193916.P2204207195107974244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193915 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193916.P2204207195107974244

/-! ## A193916.P16574707271456785795

`A059268(n)*A193922(n)`
-/

namespace A193916.P16574707271456785795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193922 n

end

end A193916.P16574707271456785795

/-! ## A193916.P7807941537343204404

`2^A002262(n)*A193922(n)`
-/

namespace A193916.P7807941537343204404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A193922 n : ℚ)

end

end A193916.P7807941537343204404

/-!
# A193917: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers).

The programs for A193917, there is no canonical definition to state claims against.
-/

/-! ## A193917.P8859274711230446921

`A194000(n)-A005379(A194000(n))`
-/

namespace A193917.P8859274711230446921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194000 n - A005379 (A194000 n).toNat

end

end A193917.P8859274711230446921

/-! ## A193917.P6347206223060877088

`A193918(∑[2*n]%comp[∑[n]])`
-/

namespace A193917.P6347206223060877088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193918 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193917.P6347206223060877088

/-!
# A193918: Mirror of the triangle A193917.

The programs for A193918, there is no canonical definition to state claims against.
-/

/-! ## A193918.P13220030212023677741

`A193917(∑[2*n]%comp[∑[n]])`
-/

namespace A193918.P13220030212023677741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193917 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193918.P13220030212023677741

/-! ## A193918.P942180502522197598

`A194001(n)-A005379(A194001(n))`
-/

namespace A193918.P942180502522197598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194001 n - A005379 (A194001 n).toNat

end

end A193918.P942180502522197598

/-!
# A193919: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers), and q(n,x)=(x+1)^n.

The programs for A193919, there is no canonical definition to state claims against.
-/

/-! ## A193919.P6329754188829172728

`A193920(∑[2*n]%comp[∑[n]])`
-/

namespace A193919.P6329754188829172728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193920 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193919.P6329754188829172728

/-! ## A193919.P8004502873576361429

`A371626(A193997(n))`
-/

namespace A193919.P8004502873576361429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371626 (A193997 n).toNat

end

end A193919.P8004502873576361429

/-!
# A193920: Mirror of the triangle A193919.

The programs for A193920, there is no canonical definition to state claims against.
-/

/-! ## A193920.P12421360830050938893

`A193919(∑[2*n]%comp[∑[n]])`
-/

namespace A193920.P12421360830050938893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193919 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193920.P12421360830050938893

/-! ## A193920.P1365053816935506363

`A371626(A193998(n))`
-/

namespace A193920.P1365053816935506363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371626 (A193998 n).toNat

end

end A193920.P1365053816935506363

/-!
# A193921: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers), and q(n,x)=x^n+x^(n-1)+...+x+1.

The programs for A193921, there is no canonical definition to state claims against.
-/

/-! ## A193921.P9573289316502178919

`T(row(n)-1, 1)+T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A193921.P9573289316502178919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) 1 + SequenceMachineLib.triUpLeft a n

end

end A193921.P9573289316502178919

/-! ## A193921.P16907941849757902673

`round(A143061(1+n)/ϕ)`
-/

namespace A193921.P16907941849757902673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143061 (1 + n) : ℝ) / Real.goldenRatio)

end

end A193921.P16907941849757902673

/-! ## A193921.P9500917289389021833

`A193922(∑[2*n]%comp[∑[n]])`
-/

namespace A193921.P9500917289389021833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193921.P9500917289389021833

/-! ## A193921.P4035635855169864411

`A000045(row(n)-col(n))+T(n,k-1)` with `a(0)=1`
-/

namespace A193921.P4035635855169864411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) + SequenceMachineLib.triLeft a n

end

end A193921.P4035635855169864411

/-! ## A193921.P11165245872187303867

`A171729(n+1)-char[∑[n+2]]`
-/

namespace A193921.P11165245872187303867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193921.P11165245872187303867

/-! ## A193921.P8585706276582870619

`round(round(A094585(n+1)/ϕ)/ϕ)`
-/

namespace A193921.P8585706276582870619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A094585 (n + 1) : ℝ) / Real.goldenRatio) : ℝ) / Real.goldenRatio)

end

end A193921.P8585706276582870619

/-! ## A193921.P16903865110464187357

`A101803(A143061(n+1))`
-/

namespace A193921.P16903865110464187357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (A143061 (n + 1)).toNat

end

end A193921.P16903865110464187357

/-! ## A193921.P2143492954163311460

`A005378(A143061(n+1)+1)-1`
-/

namespace A193921.P2143492954163311460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A143061 (n + 1) + 1).toNat - 1

end

end A193921.P2143492954163311460

/-! ## A193921.P6452472144661343197

`A193915(n)/A130321(n)`
-/

namespace A193921.P6452472144661343197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193915 n : ℚ) / (A130321 n : ℚ)

end

end A193921.P6452472144661343197

/-!
# A193922: Mirror of the triangle A193921.

The programs for A193922, the canonical program `A193922.P17539686961463381595` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193922 has offset 0).

The definition of A193922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193922.P9787224385561737987

`T(row(n)-2, 1)+T(n-1,k)+1` with `a(0)=1, a(1)=1`
-/

namespace A193922.P9787224385561737987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) 1 + SequenceMachineLib.triUp a n + 1

end

end A193922.P9787224385561737987

namespace A193922

/-- `T(row(n)-2, 1)+T(n-1,k)+1` -/
def P9787224385561737987.Spec : Prop :=
  ∀ n, (P9787224385561737987.a n : ℤ) = A193922 n

end A193922

/-! ## A193922.P1142138744713783029

`round(A204922(1+n)/ϕ)`
-/

namespace A193922.P1142138744713783029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A204922 (1 + n) : ℝ) / Real.goldenRatio)

end

end A193922.P1142138744713783029

namespace A193922

/-- `round(A204922(1+n)/ϕ)` -/
def P1142138744713783029.Spec : Prop :=
  ∀ n, P1142138744713783029.a n = A193922 n

end A193922

/-! ## A193922.P17845301254287855160

`A000045(row(n))+T(n-1,k)` with `a(0)=1, a(1)=1`
-/

namespace A193922.P17845301254287855160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (SequenceMachineLib.triRow n) + SequenceMachineLib.triUp a n

end

end A193922.P17845301254287855160

namespace A193922

/-- `A000045(row(n))+T(n-1,k)` -/
def P17845301254287855160.Spec : Prop :=
  ∀ n, P17845301254287855160.a n = A193922 n

end A193922

/-! ## A193922.P7465959567844759335

`A204922(round(n-sqrt(2*n))+1)`
-/

namespace A193922.P7465959567844759335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (2 * n : ℝ)) + 1).toNat

end

end A193922.P7465959567844759335

namespace A193922

/-- `A204922(round(n-sqrt(2*n))+1)` -/
def P7465959567844759335.Spec : Prop :=
  ∀ n, P7465959567844759335.a n = A193922 n

end A193922

/-! ## A193922.P14569253628732202437

`round(round(A193999(n+1)/ϕ)/ϕ)`
-/

namespace A193922.P14569253628732202437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A193999 (n + 1) : ℝ) / Real.goldenRatio) : ℝ) / Real.goldenRatio)

end

end A193922.P14569253628732202437

namespace A193922

/-- `round(round(A193999(n+1)/ϕ)/ϕ)` -/
def P14569253628732202437.Spec : Prop :=
  ∀ n, P14569253628732202437.a n = A193922 n

end A193922

/-! ## A193922.P8895856075443792819

`A171730(n+1)-A073424(n)`
-/

namespace A193922.P8895856075443792819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171730 (n + 1) - A073424 n

end

end A193922.P8895856075443792819

namespace A193922

/-- `A171730(n+1)-A073424(n)` -/
def P8895856075443792819.Spec : Prop :=
  ∀ n, P8895856075443792819.a n = A193922 n

end A193922

/-! ## A193922.P14922416870937436485

`round(A143061(A038722(n+1))/ϕ)`
-/

namespace A193922.P14922416870937436485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143061 (A038722 (n + 1)).toNat : ℝ) / Real.goldenRatio)

end

end A193922.P14922416870937436485

namespace A193922

/-- `round(A143061(A038722(n+1))/ϕ)` -/
def P14922416870937436485.Spec : Prop :=
  ∀ n, P14922416870937436485.a n = A193922 n

end A193922

/-! ## A193922.P7953904462896545990

`round(A143061(A061579(n)+1)/ϕ)`
-/

namespace A193922.P7953904462896545990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143061 (A061579 n + 1).toNat : ℝ) / Real.goldenRatio)

end

end A193922.P7953904462896545990

namespace A193922

/-- `round(A143061(A061579(n)+1)/ϕ)` -/
def P7953904462896545990.Spec : Prop :=
  ∀ n, P7953904462896545990.a n = A193922 n

end A193922

/-! ## A193922.P4091638811222721903

`round(A143061(A114327(n)+1+n)/ϕ)`
-/

namespace A193922.P4091638811222721903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143061 (A114327 n + 1 + (n : ℤ)).toNat : ℝ) / Real.goldenRatio)

end

end A193922.P4091638811222721903

namespace A193922

/-- `round(A143061(A114327(n)+1+n)/ϕ)` -/
def P4091638811222721903.Spec : Prop :=
  ∀ n, P4091638811222721903.a n = A193922 n

end A193922

/-! ## A193922.P3422200865037594114

`round(A143061(A093995(n+1)-n)/ϕ)`
-/

namespace A193922.P3422200865037594114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143061 (A093995 (n + 1) - (n : ℤ)).toNat : ℝ) / Real.goldenRatio)

end

end A193922.P3422200865037594114

namespace A193922

/-- `round(A143061(A093995(n+1)-n)/ϕ)` -/
def P3422200865037594114.Spec : Prop :=
  ∀ n, P3422200865037594114.a n = A193922 n

end A193922

/-! ## A193922.P17539686961463381595

`A108035(n+1)-A104763(n+1)%A108035(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193922

/-- `A108035(n+1)-A104763(n+1)%A108035(n+1)` -/
def P17539686961463381595.Spec : Prop :=
  ∀ n, P17539686961463381595.a n = A193922 n

theorem P17539686961463381595.correct : P17539686961463381595.Spec := by
  intro n
  simp only [A193922]

end A193922

/-! ## A193922.P13492862363613105633

`A005206(A204922(n+1)-A073424(n))`
-/

namespace A193922.P13492862363613105633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A204922 (n + 1) - A073424 n).toNat

end

end A193922.P13492862363613105633

namespace A193922

/-- `A005206(A204922(n+1)-A073424(n))` -/
def P13492862363613105633.Spec : Prop :=
  ∀ n, P13492862363613105633.a n = A193922 n

end A193922

/-! ## A193922.P511433055529138293

`round(A005206(A193999(n+1))/ϕ)`
-/

namespace A193922.P511433055529138293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005206 (A193999 (n + 1)).toNat : ℝ) / Real.goldenRatio)

end

end A193922.P511433055529138293

namespace A193922

/-- `round(A005206(A193999(n+1))/ϕ)` -/
def P511433055529138293.Spec : Prop :=
  ∀ n, P511433055529138293.a n = A193922 n

end A193922

/-! ## A193922.P8950812900292756434

`A028310(A193999(n+1)-A204922(n+1))`
-/

namespace A193922.P8950812900292756434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A193999 (n + 1) - A204922 (n + 1)).toNat

end

end A193922.P8950812900292756434

namespace A193922

/-- `A028310(A193999(n+1)-A204922(n+1))` -/
def P8950812900292756434.Spec : Prop :=
  ∀ n, P8950812900292756434.a n = A193922 n

end A193922

/-! ## A193922.P8052128345213969815

`A101803(A204922(n+1))`
-/

namespace A193922.P8052128345213969815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (A204922 (n + 1)).toNat

end

end A193922.P8052128345213969815

namespace A193922

/-- `A101803(A204922(n+1))` -/
def P8052128345213969815.Spec : Prop :=
  ∀ n, P8052128345213969815.a n = A193922 n

end A193922

/-!
# A193923: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=(x+1)^n and q(n,x)=Sum_{k=0..n}F(k+1)*x^(n-k), where F=A000045 (Fibonacci numbers).

The programs for A193923, the canonical program `A193923.P12883701603755401531` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193923 has offset 0).

The definition of A193923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193923.P12883701603755401531

`max(T(n-1,k)+T(n-1,k-1), T(n-1,k-1)+T(n,k-1))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A193923

/-- `max(T(n-1,k)+T(n-1,k-1), T(n-1,k-1)+T(n,k-1))` -/
def P12883701603755401531.Spec : Prop :=
  ∀ n, (P12883701603755401531.a n : ℤ) = A193923 n

theorem P12883701603755401531.correct : P12883701603755401531.Spec := by
  intro n
  simp only [A193923]

end A193923

/-! ## A193923.P12002324883621048001

`A193924(∑[2*n]%A080036(n))`
-/

namespace A193923.P12002324883621048001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A193923.P12002324883621048001

namespace A193923

/-- `A193924(∑[2*n]%A080036(n))` -/
def P12002324883621048001.Spec : Prop :=
  ∀ n, P12002324883621048001.a n = A193923 n

end A193923

/-! ## A193923.P11281421027372907963

`A193924(A061579(n))`
-/

namespace A193923.P11281421027372907963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (A061579 n).toNat

end

end A193923.P11281421027372907963

namespace A193923

/-- `A193924(A061579(n))` -/
def P11281421027372907963.Spec : Prop :=
  ∀ n, P11281421027372907963.a n = A193923 n

end A193923

/-! ## A193923.P348058334824295878

`A294453(A245300(n)-A051162(n))`
-/

namespace A193923.P348058334824295878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A245300 n - A051162 n).toNat

end

end A193923.P348058334824295878

namespace A193923

/-- `A294453(A245300(n)-A051162(n))` -/
def P348058334824295878.Spec : Prop :=
  ∀ n, P348058334824295878.a n = A193923 n

end A193923

/-!
# A193924: Mirror of the triangle A193923.

The programs for A193924, the canonical program `A193924.P2861080417862327747` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193924 has offset 0).

The definition of A193924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193924.P2861080417862327747

`A193923(A061579(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A193924

/-- `A193923(A061579(n))` -/
def P2861080417862327747.Spec : Prop :=
  ∀ n, P2861080417862327747.a n = A193924 n

theorem P2861080417862327747.correct : P2861080417862327747.Spec := by
  intro n
  simp only [A193924]

end A193924

/-!
# A193925: a(n) = a(n-1)^2 - n^(n-2) + n.

The programs for A193925, the canonical program `A193925.P18255791814928394867` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193925 has offset 0).

The definition of A193925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193925.P18255791814928394867

`a(n-1)²-n^(n-2)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A193925

/-- `a(n-1)²-n^(n-2)+n` -/
def P18255791814928394867.Spec : Prop :=
  ∀ n, P18255791814928394867.a n = (A193925 n : ℚ)

end A193925

/-! ## A193925.P17282282300576360179

`a(n-1)²+n-A000272(n)` with `a(0)=0`
-/

namespace A193925.P17282282300576360179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 + ((n : ℤ) - A000272 n)

end

end A193925.P17282282300576360179

namespace A193925

/-- `a(n-1)²+n-A000272(n)` -/
def P17282282300576360179.Spec : Prop :=
  ∀ n, P17282282300576360179.a n = A193925 n

end A193925

/-! ## A193925.P6412606273345309008

`A362960(A192979(n))-A363920(n)`
-/

namespace A193925.P6412606273345309008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362960 (A192979 n).toNat - A363920 n

end

end A193925.P6412606273345309008

namespace A193925

/-- `A362960(A192979(n))-A363920(n)` -/
def P6412606273345309008.Spec : Prop :=
  ∀ n, P6412606273345309008.a n = A193925 n

end A193925

/-!
# A193926: First differences of A062039.

The programs for A193926, there is no canonical definition to state claims against.
-/

/-! ## A193926.P2268286122213100115

`Δ[A062039(n)]`
-/

namespace A193926.P2268286122213100115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193926.P2268286122213100115

/-! ## A193926.P2523592770772414655

`A062039(1+n)-A062039(n)`
-/

namespace A193926.P2523592770772414655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 (1 + n) - A062039 n

end

end A193926.P2523592770772414655

/-! ## A193926.P9184620149686291426

`A062039(n+1)+A001478(A062039(n)+1)+1`
-/

namespace A193926.P9184620149686291426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 (n + 1) + (A001478 (A062039 n + 1).toNat + 1)

end

end A193926.P9184620149686291426

/-!
# A193927: Numbers m such that A062039(m+1) < A062039(m).

The programs for A193927, there is no canonical definition to state claims against.
-/

/-! ## A193927.P665073205751603999

`comp[A193928(1+n)]`
-/

namespace A193927.P665073205751603999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193928 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193927.P665073205751603999

/-! ## A193927.P7313624255970358471

`lt[A193926(n), 0]`
-/

namespace A193927.P7313624255970358471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193927.P7313624255970358471

/-! ## A193927.P1713737875162511830

`record[-A193926(n+3)]`
-/

namespace A193927.P1713737875162511830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A193926 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193927.P1713737875162511830

/-! ## A193927.P10967120971141349133

`lt[n², n*A062039(n)]`
-/

namespace A193927.P10967120971141349133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193927.P10967120971141349133

/-! ## A193927.P14842868028389224519

`record[(n+3)%A062039(n+3)]`
-/

namespace A193927.P14842868028389224519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A062039 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193927.P14842868028389224519

/-! ## A193927.P1197939860437209616

`lt[A087475(n), A062039(n)²]`
-/

namespace A193927.P1197939860437209616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193927.P1197939860437209616

/-! ## A193927.P4135344501743658807

`lt[A062039(n+1), A062039(n)]`
-/

namespace A193927.P4135344501743658807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193927.P4135344501743658807

/-! ## A193927.P12920541503639071519

`record[A062039(n+3)-A062039(n+4)]`
-/

namespace A193927.P12920541503639071519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 (n + 3) - A062039 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193927.P12920541503639071519

/-! ## A193927.P1918892578151117879

`lt[A000124(n), A097063(A062039(n))]`
-/

namespace A193927.P1918892578151117879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 (A062039 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193927.P1918892578151117879

/-! ## A193927.P5241555307205460806

`lt[A097063(n), A097063(A062039(n))]`
-/

namespace A193927.P5241555307205460806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 (A062039 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193927.P5241555307205460806

/-!
# A193928: Numbers m such that A062039(m) <= A062039(m+1).

The programs for A193928, there is no canonical definition to state claims against.
-/

/-! ## A193928.P15288046495711389127

`comp[A193927(1+n)]`
-/

namespace A193928.P15288046495711389127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193927 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193928.P15288046495711389127

/-! ## A193928.P20349292720646108

`lt[-1, A193926(n)]`
-/

namespace A193928.P20349292720646108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193928.P20349292720646108

/-! ## A193928.P5926115693984198331

`lt[n*A062039(n)+1, n²+2]`
-/

namespace A193928.P5926115693984198331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062039 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193928.P5926115693984198331

/-! ## A193928.P594356757818716873

`lt[A062039(n)², A087475(n)]`
-/

namespace A193928.P594356757818716873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193928.P594356757818716873

/-! ## A193928.P10900315614942915075

`comp[record[-A193926(n+3)]]`
-/

namespace A193928.P10900315614942915075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A193926 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193928.P10900315614942915075

/-! ## A193928.P6915544733082630096

`comp[lt[n², n*A062039(n)]]`
-/

namespace A193928.P6915544733082630096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062039 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A193928.P6915544733082630096

/-! ## A193928.P16052242671055545807

`lt[A062039(n)², A059100(n)]`
-/

namespace A193928.P16052242671055545807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193928.P16052242671055545807

/-! ## A193928.P13316408329278251899

`comp[-A193926(A028310(n))]`
-/

namespace A193928.P13316408329278251899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A193926 (A028310 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193928.P13316408329278251899

/-! ## A193928.P15499225650199490015

`lt[A097063(A062039(n)), A000124(n)]`
-/

namespace A193928.P15499225650199490015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 (A062039 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193928.P15499225650199490015

/-! ## A193928.P1762077810238419925

`comp[record[A193927(A137735(n))]]`
-/

namespace A193928.P1762077810238419925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193927 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193928.P1762077810238419925

/-!
# A193929: Number of prime factors of n^4 + 1, counted with multiplicity.

The programs for A193929, the canonical program `A193929.P1130408973914528788` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193929 has offset 0).

The definition of A193929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193929.P1130408973914528788

`A001221(n^4+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A193929

/-- `A001221(n^4+1)` -/
def P1130408973914528788.Spec : Prop :=
  ∀ n, P1130408973914528788.a n = A193929 n

theorem P1130408973914528788.correct : P1130408973914528788.Spec := by
  intro n
  simp only [A193929]

end A193929

/-! ## A193929.P3146889812751375872

`A001222(n^4+1)`
-/

namespace A193929.P3146889812751375872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 4 + 1)

end

end A193929.P3146889812751375872

namespace A193929

/-- `A001222(n^4+1)` -/
def P3146889812751375872.Spec : Prop :=
  ∀ n, P3146889812751375872.a n = A193929 n

end A193929

/-! ## A193929.P5987122882565401388

`A048675(A193562(n)²)/2`
-/

namespace A193929.P5987122882565401388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (A193562 n ^ 2).toNat : ℚ) / 2

end

end A193929.P5987122882565401388

namespace A193929

/-- `A048675(A193562(n)²)/2` -/
def P5987122882565401388.Spec : Prop :=
  ∀ n, P5987122882565401388.a n = (A193929 n : ℚ)

end A193929

/-! ## A193929.P15743741689896534956

`A339893(A045965(A193562(n)²))`
-/

namespace A193929.P15743741689896534956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339893 (A045965 (A193562 n ^ 2).toNat).toNat

end

end A193929.P15743741689896534956

namespace A193929

/-- `A339893(A045965(A193562(n)²))` -/
def P15743741689896534956.Spec : Prop :=
  ∀ n, P15743741689896534956.a n = A193929 n

end A193929

/-! ## A193929.P14404547690669884517

`A095999(2^A193562(n))`
-/

namespace A193929.P14404547690669884517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095999 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A193562 n : ℤ))).toNat

end

end A193929.P14404547690669884517

namespace A193929

/-- `A095999(2^A193562(n))` -/
def P14404547690669884517.Spec : Prop :=
  ∀ n, P14404547690669884517.a n = A193929 n

end A193929

/-! ## A193929.P7678555716264030285

`A004218(A193562(n)^3)`
-/

namespace A193929.P7678555716264030285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A193562 n ^ 3).toNat

end

end A193929.P7678555716264030285

namespace A193929

/-- `A004218(A193562(n)^3)` -/
def P7678555716264030285.Spec : Prop :=
  ∀ n, P7678555716264030285.a n = A193929 n

end A193929

/-! ## A193929.P18131983057774732296

`A056239(∏{e}[2^A193562(n), #])`
-/

namespace A193929.P18131983057774732296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A193562 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A193929.P18131983057774732296

namespace A193929

/-- `A056239(∏{e}[2^A193562(n), #])` -/
def P18131983057774732296.Spec : Prop :=
  ∀ n, P18131983057774732296.a n = A193929 n

end A193929

/-! ## A193929.P8680764209944726309

`A193330((n+1-A239700(n+1)²)²)`
-/

namespace A193929.P8680764209944726309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (((n + 1 : ℤ) - A239700 (n + 1) ^ 2) ^ 2).toNat

end

end A193929.P8680764209944726309

namespace A193929

/-- `A193330((n+1-A239700(n+1)²)²)` -/
def P8680764209944726309.Spec : Prop :=
  ∀ n, P8680764209944726309.a n = A193929 n

end A193929

/-! ## A193929.P5514124017247970735

`A193330(n²)`
-/

namespace A193929.P5514124017247970735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (n ^ 2)

end

end A193929.P5514124017247970735

namespace A193929

/-- `A193330(n²)` -/
def P5514124017247970735.Spec : Prop :=
  ∀ n, P5514124017247970735.a n = A193929 n

end A193929

/-! ## A193929.P10842083794800532307

`log2(A193432(n²))`
-/

namespace A193929.P10842083794800532307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A193432 (n ^ 2) : ℝ)

end

end A193929.P10842083794800532307

namespace A193929

/-- `log2(A193432(n²))` -/
def P10842083794800532307.Spec : Prop :=
  ∀ n, P10842083794800532307.a n = (A193929 n : ℝ)

end A193929

/-! ## A193929.P1288743693145278193

`∑{e}[A278162(n²), #]`
-/

namespace A193929.P1288743693145278193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A193929.P1288743693145278193

namespace A193929

/-- `∑{e}[A278162(n²), #]` -/
def P1288743693145278193.Spec : Prop :=
  ∀ n, (P1288743693145278193.a n : ℤ) = A193929 n

end A193929

/-! ## A193929.P703867788616788943

`A000194(A193432(n²)-1)`
-/

namespace A193929.P703867788616788943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A193432 (n ^ 2) - 1).toNat

end

end A193929.P703867788616788943

namespace A193929

/-- `A000194(A193432(n²)-1)` -/
def P703867788616788943.Spec : Prop :=
  ∀ n, P703867788616788943.a n = A193929 n

end A193929

/-! ## A193929.P1826473975262898369

`A323076(A193432(n²)+2)`
-/

namespace A193929.P1826473975262898369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323076 (A193432 (n ^ 2) + 2).toNat

end

end A193929.P1826473975262898369

namespace A193929

/-- `A323076(A193432(n²)+2)` -/
def P1826473975262898369.Spec : Prop :=
  ∀ n, P1826473975262898369.a n = A193929 n

end A193929

/-! ## A193929.P15322889726008258515

`A055212(2*A193432(n²))`
-/

namespace A193929.P15322889726008258515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (2 * A193432 (n ^ 2)).toNat

end

end A193929.P15322889726008258515

namespace A193929

/-- `A055212(2*A193432(n²))` -/
def P15322889726008258515.Spec : Prop :=
  ∀ n, P15322889726008258515.a n = A193929 n

end A193929

/-! ## A193929.P4214298937137260464

`A079057(A000005(A193432(n*n)))`
-/

namespace A193929.P4214298937137260464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079057 (A000005 (A193432 (n * n)).toNat).toNat

end

end A193929.P4214298937137260464

namespace A193929

/-- `A079057(A000005(A193432(n*n)))` -/
def P4214298937137260464.Spec : Prop :=
  ∀ n, P4214298937137260464.a n = A193929 n

end A193929

/-!
# A193930: E.g.f.: exp(x+x^2+x^3+x^4).

The programs for A193930, there is no canonical definition to state claims against.
-/

/-! ## A193930.P12672996312980034845

`A293669(eq[row(n), col(n)+3])`
-/

namespace A193930.P12672996312980034845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A193930.P12672996312980034845

/-! ## A193930.P17910196086529483103

`A090754(n)/A090755(n)*n!`
-/

namespace A193930.P17910196086529483103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090754 n : ℚ) / (A090755 n : ℚ) * (Nat.factorial n : ℚ)

end

end A193930.P17910196086529483103

/-! ## A193930.P13974576554955059700

`A261764(A077169(n)-1+n)`
-/

namespace A193930.P13974576554955059700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261764 (A077169 n - 1 + (n : ℤ)).toNat

end

end A193930.P13974576554955059700

/-!
# A193931: E.g.f. A(x) = exp(x+x^2+x^3+x^4+x^5).

The programs for A193931, there is no canonical definition to state claims against.
-/

/-! ## A193931.P1164759814786872226

`A293669(eq[row(n), col(n)+4])`
-/

namespace A193931.P1164759814786872226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A193931.P1164759814786872226

/-!
# A193932: E.g.f. A(x) = exp(x+x^2+x^3+x^4+x^5+x^6).

The programs for A193932, there is no canonical definition to state claims against.
-/

/-! ## A193932.P15067887198997624326

`A293669(A055999(3+n))`
-/

namespace A193932.P15067887198997624326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A055999 (3 + n)).toNat

end

end A193932.P15067887198997624326

/-!
# A193933: E.g.f. A(x) = exp(x+x^2+x^3+x^4+x^5+x^6+x^7).

The programs for A193933, there is no canonical definition to state claims against.
-/

/-! ## A193933.P2598047019989797052

`A293669(eq[6, A025581(n)])`
-/

namespace A193933.P2598047019989797052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193933.P2598047019989797052

/-!
# A193934: Triangle read by rows: row n gives the n primes corresponding to A187822.

The programs for A193934, there is no canonical definition to state claims against.
-/

/-! ## A193934.P6682851166762871610

`p?[A185139(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A193934.P6682851166762871610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185139 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193934.P6682851166762871610

/-! ## A193934.P6527896641250672695

`p?[A329943(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A193934.P6527896641250672695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329943 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193934.P6527896641250672695

/-! ## A193934.P13528738672649205631

`p?[A008277(A133299(n+1))]`
-/

namespace A193934.P13528738672649205631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A133299 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193934.P13528738672649205631

/-! ## A193934.P2854746136109884343

`p?[A008277(A167198(n+1))]`
-/

namespace A193934.P2854746136109884343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A167198 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193934.P2854746136109884343

/-! ## A193934.P17715187302291491149

`A138864(C(A059297(n), 8)+col(n)+1)`
-/

namespace A193934.P17715187302291491149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138864 (Nat.choose (A059297 n).toNat 8 + (SequenceMachineLib.triCol n + 1))

end

end A193934.P17715187302291491149

/-!
# A193935: 4-nonnesting permutations.

The programs for A193935, there is no canonical definition to state claims against.
-/

/-! ## A193935.P13101805785312851398

`(n+1)!-A098852(3*n+1)`
-/

namespace A193935.P13101805785312851398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A098852 (3 * n + 1)

end

end A193935.P13101805785312851398

/-! ## A193935.P8280470070254402201

`A032551(n+2)!-(n-n%6)`
-/

namespace A193935.P8280470070254402201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A032551 (n + 2)).toNat : ℤ) - ((n : ℤ) - ((n % 6 : ℕ) : ℤ))

end

end A193935.P8280470070254402201

/-! ## A193935.P3679872163212976482

`Δ[abs(∑[n!-A051344(n!-1)])]`
-/

namespace A193935.P3679872163212976482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A051344 (Nat.factorial n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193935.P3679872163212976482

/-!
# A193936: 5-nonnesting permutations.

The programs for A193936, there is no canonical definition to state claims against.
-/

/-! ## A193936.P18057948759060951285

`A066492(n+1)!-A308234(n+1)`
-/

namespace A193936.P18057948759060951285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A066492 (n + 1)).toNat : ℤ) - A308234 (n + 1)

end

end A193936.P18057948759060951285

/-! ## A193936.P3043634517742753984

`A069747(n+1)!-A308234(n+1)`
-/

namespace A193936.P3043634517742753984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A069747 (n + 1)).toNat : ℤ) - A308234 (n + 1)

end

end A193936.P3043634517742753984

/-! ## A193936.P14193915733369889733

`A077739(n+1)!-A308234(n+1)`
-/

namespace A193936.P14193915733369889733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A077739 (n + 1)).toNat : ℤ) - A308234 (n + 1)

end

end A193936.P14193915733369889733

/-! ## A193936.P1766444922910610700

`A239138(n+1)!-A308234(n+1)`
-/

namespace A193936.P1766444922910610700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A239138 (n + 1)).toNat : ℤ) - A308234 (n + 1)

end

end A193936.P1766444922910610700

/-! ## A193936.P5668385208057780169

`record[A119502(n)]-A120647(A122024(n))`
-/

namespace A193936.P5668385208057780169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A120647 (A122024 n).toNat

end

end A193936.P5668385208057780169

/-!
# A193937: 6-nonnesting permutations.

The programs for A193937, there is no canonical definition to state claims against.
-/

/-! ## A193937.P13121130377113116321

`A044913(n+1)!-A007095(A097601(n))`
-/

namespace A193937.P13121130377113116321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A044913 (n + 1)).toNat : ℤ) - A007095 (A097601 n).toNat

end

end A193937.P13121130377113116321

/-!
# A193938: 3-nonnesting permutations.

The programs for A193938, there is no canonical definition to state claims against.
-/

/-! ## A193938.P2629336939549155488

`A335451(A000108(n))+A073596(n)`
-/

namespace A193938.P2629336939549155488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335451 (A000108 n).toNat + A073596 n

end

end A193938.P2629336939549155488

/-! ## A193938.P9671119055107050461

`A384772(A340941(n))+A073596(n)`
-/

namespace A193938.P9671119055107050461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384772 (A340941 n).toNat + A073596 n

end

end A193938.P9671119055107050461

/-!
# A193939: E.g.f.: A(x) = 1/(3-exp(x)-exp(x^2)).

The programs for A193939, there is no canonical definition to state claims against.
-/

/-! ## A193939.P11596861473515612370

`A008620((n+1)*A215691(n))`
-/

namespace A193939.P11596861473515612370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n + 1 : ℤ) * A215691 n).toNat

end

end A193939.P11596861473515612370

/-!
# A193941: G.f.: (1+x^3)/(1-x-x^6).

The programs for A193941, the canonical program `A193941.P18356755254150150807` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193941 has offset 0).

The definition of A193941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193941.P18356755254150150807

`ogf((1+x^3)/(1-x-x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A193941

/-- `ogf((1+x^3)/(1-x-x^6))` -/
def P18356755254150150807.Spec : Prop :=
  ∀ n, P18356755254150150807.a n = A193941 n

theorem P18356755254150150807.correct : P18356755254150150807.Spec := by
  intro n
  simp only [A193941]

end A193941

/-! ## A193941.P7597383762923004267

`a(n-1)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=2`
-/

namespace A193941.P7597383762923004267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 2] fun n a =>
  a (n - 1) + a (n - 6)

end

end A193941.P7597383762923004267

namespace A193941

/-- `a(n-1)+a(n-6)` -/
def P7597383762923004267.Spec : Prop :=
  ∀ n, (P7597383762923004267.a n : ℤ) = A193941 n

end A193941

/-! ## A193941.P11198956561188241237

`A017900(n+3)+A005708(n)`
-/

namespace A193941.P11198956561188241237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (n + 3) + A005708 n

end

end A193941.P11198956561188241237

namespace A193941

/-- `A017900(n+3)+A005708(n)` -/
def P11198956561188241237.Spec : Prop :=
  ∀ n, P11198956561188241237.a n = A193941 n

end A193941

/-! ## A193941.P6668646952446669616

`A017900(n+3)+∑[A017900(n)]`
-/

namespace A193941.P6668646952446669616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193941.P6668646952446669616

namespace A193941

/-- `A017900(n+3)+∑[A017900(n)]` -/
def P6668646952446669616.Spec : Prop :=
  ∀ n, P6668646952446669616.a n = A193941 n

end A193941

/-! ## A193941.P10824798560985404341

`A017900(n+3)+A017900(n+6)`
-/

namespace A193941.P10824798560985404341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (n + 3) + A017900 (n + 6)

end

end A193941.P10824798560985404341

namespace A193941

/-- `A017900(n+3)+A017900(n+6)` -/
def P10824798560985404341.Spec : Prop :=
  ∀ n, P10824798560985404341.a n = A193941 n

end A193941

/-! ## A193941.P1533595164464431792

`A005708(n)+Δ[A005708(n+2)]`
-/

namespace A193941.P1533595164464431792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n + (f1 (n + 1) - f1 n)

end

end A193941.P1533595164464431792

namespace A193941

/-- `A005708(n)+Δ[A005708(n+2)]` -/
def P1533595164464431792.Spec : Prop :=
  ∀ n, P1533595164464431792.a n = A193941 n

end A193941

/-!
# A193942: G.f.: (1+x^4)/(1-x-x^8).

The programs for A193942, the canonical program `A193942.P12867416340150658591` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193942 has offset 0).

The definition of A193942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193942.P12867416340150658591

`ogf((1+x^4)/(1-x-x^8))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A193942

/-- `ogf((1+x^4)/(1-x-x^8))` -/
def P12867416340150658591.Spec : Prop :=
  ∀ n, P12867416340150658591.a n = A193942 n

theorem P12867416340150658591.correct : P12867416340150658591.Spec := by
  intro n
  simp only [A193942]

end A193942

/-! ## A193942.P3135368118033031365

`A017902(n+4)+A005710(n)`
-/

namespace A193942.P3135368118033031365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (n + 4) + A005710 n

end

end A193942.P3135368118033031365

namespace A193942

/-- `A017902(n+4)+A005710(n)` -/
def P3135368118033031365.Spec : Prop :=
  ∀ n, P3135368118033031365.a n = A193942 n

end A193942

/-! ## A193942.P3692016017871309583

`A017902(n+4)+∑[A017902(n)]`
-/

namespace A193942.P3692016017871309583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193942.P3692016017871309583

namespace A193942

/-- `A017902(n+4)+∑[A017902(n)]` -/
def P3692016017871309583.Spec : Prop :=
  ∀ n, P3692016017871309583.a n = A193942 n

end A193942

/-! ## A193942.P10587086542936514879

`A017902(n+4)+A017902(n+8)`
-/

namespace A193942.P10587086542936514879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (n + 4) + A017902 (n + 8)

end

end A193942.P10587086542936514879

namespace A193942

/-- `A017902(n+4)+A017902(n+8)` -/
def P10587086542936514879.Spec : Prop :=
  ∀ n, P10587086542936514879.a n = A193942 n

end A193942

/-! ## A193942.P2793035911505470195

`A005710(n)+Δ[A005710(n+3)]`
-/

namespace A193942.P2793035911505470195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 n + (f1 (n + 1) - f1 n)

end

end A193942.P2793035911505470195

namespace A193942

/-- `A005710(n)+Δ[A005710(n+3)]` -/
def P2793035911505470195.Spec : Prop :=
  ∀ n, P2793035911505470195.a n = A193942 n

end A193942

/-!
# A193943: Integers n such that for all i > n the largest prime factor of i*(i+1) exceeds the largest prime factor of n*(n+1).

The programs for A193943, there is no canonical definition to state claims against.
-/

/-! ## A193943.P2091971848288638079

`record[A002072(col(n)+1)]`
-/

namespace A193943.P2091971848288638079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002072 (SequenceMachineLib.triCol n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193943.P2091971848288638079

/-! ## A193943.P5048533796672333920

`record[A002072(A028920(n))]`
-/

namespace A193943.P5048533796672333920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002072 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193943.P5048533796672333920

/-! ## A193943.P15382994255391292166

`record[A002072(A116549(n))]`
-/

namespace A193943.P15382994255391292166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002072 (A116549 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193943.P15382994255391292166

/-! ## A193943.P15239273494740225703

`record[A002072(A133310(n))]`
-/

namespace A193943.P15239273494740225703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002072 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193943.P15239273494740225703

/-! ## A193943.P2763787701958564921

`record[A002072(row(A211858(n)))]`
-/

namespace A193943.P2763787701958564921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002072 (SequenceMachineLib.triRow (A211858 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193943.P2763787701958564921

/-!
# A193944: Integers k such that for all j > k the largest prime factor of j*(j+1)*(j+2) exceeds the largest prime factor of k*(k+1)*(k+2).

The programs for A193944, there is no canonical definition to state claims against.
-/

/-! ## A193944.P10638487429862000982

`record[A003032(floor(n/(xor(n, n+1)+1))+2)]`
-/

namespace A193944.P10638487429862000982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003032 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193944.P10638487429862000982

/-! ## A193944.P16857859999925162076

`record[A003032(A028920(n)+1)]`
-/

namespace A193944.P16857859999925162076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003032 (A028920 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193944.P16857859999925162076

/-! ## A193944.P11569463685458295331

`record[A003032(A053632(n)+1)]`
-/

namespace A193944.P11569463685458295331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003032 (A053632 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193944.P11569463685458295331

/-! ## A193944.P4228335190385962673

`record[A003032(A002262(n)+2)]`
-/

namespace A193944.P4228335190385962673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003032 (A002262 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193944.P4228335190385962673

/-! ## A193944.P14858523968151602880

`record[A003032(A003986(n)+2)]`
-/

namespace A193944.P14858523968151602880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003032 (A003986 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193944.P14858523968151602880

/-!
# A193945: Integers n such that for all i > n the largest prime factor of i(i+1)(i+2)(i+3) exceeds the largest prime factor of n(n+1)(n+2)(n+3).

The programs for A193945, there is no canonical definition to state claims against.
-/

/-! ## A193945.P3467698206993299842

`A144641(n+1)-A051165(n)`
-/

namespace A193945.P3467698206993299842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144641 (n + 1) - A051165 n

end

end A193945.P3467698206993299842

/-! ## A193945.P10238384235541674565

`A237270(A280760(n+1))`
-/

namespace A193945.P10238384235541674565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A280760 (n + 1)).toNat

end

end A193945.P10238384235541674565

/-!
# A193946: Integers n such that for all i > n the largest prime factor of i(i+1)(i+2)(i+3)(i+4) exceeds the largest prime factor of n(n+1)(n+2)(n+3)(n+4).

The programs for A193946, there is no canonical definition to state claims against.
-/

/-! ## A193946.P12787979028598062954

`record[A396087(A344025(n+1)+2)]`
-/

namespace A193946.P12787979028598062954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396087 (A344025 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193946.P12787979028598062954

/-! ## A193946.P6835239966195089985

`record[gcd(A083928(n), A396087(n+3))]`
-/

namespace A193946.P6835239966195089985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083928 n) (A396087 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193946.P6835239966195089985

/-! ## A193946.P9917597991865841739

`record[A396087(n+3)/A088323(2*(n+3))]`
-/

namespace A193946.P9917597991865841739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396087 (n + 3) : ℚ) / (A088323 (2 * (n + 3)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193946.P9917597991865841739

/-! ## A193946.P189692534421089255

`record[A396087(n+3)%A396087(n+5)]`
-/

namespace A193946.P189692534421089255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396087 (n + 3)) (A396087 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193946.P189692534421089255

/-!
# A193948: Integers k such that for all i > k the largest prime factor of i(i+1)(i+2)(i+3)(i+4)(i+5)(i+6) exceeds the largest prime factor of k(k+1)(k+2)(k+3)(k+4)(k+5)(k+6).

The programs for A193948, there is no canonical definition to state claims against.
-/

/-! ## A193948.P11636924907257682385

`p?[C(n, a(floor(n/10))+1)]-7` with `a(0)=4`
-/

namespace A193948.P11636924907257682385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  Nat.choose n (f1 ⌊(n : ℚ) / 10⌋.toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7

end

end A193948.P11636924907257682385

/-! ## A193948.P3420845584133935139

`lt[A074811(n+7), n]`
-/

namespace A193948.P3420845584133935139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074811 (n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193948.P3420845584133935139

/-! ## A193948.P17033309674209369546

`lt[A321721(n+7), n]`
-/

namespace A193948.P17033309674209369546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321721 (n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193948.P17033309674209369546

/-! ## A193948.P4433480443267567217

`lt[A205483(n+4), n-2]-3`
-/

namespace A193948.P4433480443267567217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205483 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 3

end

end A193948.P4433480443267567217

/-! ## A193948.P8492426429960858673

`lt[comp[n²], A006530(n+8)]+1`
-/

namespace A193948.P8492426429960858673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A193948.P8492426429960858673

/-!
# A193949: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers), and q(n,x)=sum{(k+1)(n+1)*x^(n-k) : 0<=k<=n}.

The programs for A193949, there is no canonical definition to state claims against.
-/

/-! ## A193949.P13744775859312375814

`A193950(∑[2*n]%comp[∑[n]])`
-/

namespace A193949.P13744775859312375814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193950 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193949.P13744775859312375814

/-!
# A193950: Mirror of the triangle A193949.

The programs for A193950, there is no canonical definition to state claims against.
-/

/-! ## A193950.P10221383290927926495

`A193949(∑[2*n]%comp[∑[n]])`
-/

namespace A193950.P10221383290927926495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193949 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193950.P10221383290927926495

/-!
# A193951: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{(k+1)(n+1)*x^(n-k) : 0<=k<=n} and q(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers).

The programs for A193951, there is no canonical definition to state claims against.
-/

/-! ## A193951.P14549979094009270098

`(comp[∑[n+3]]-n+1)*A193957(n)`
-/

namespace A193951.P14549979094009270098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1) * A193957 n

end

end A193951.P14549979094009270098

/-! ## A193951.P13622930423024389466

`(A003056(n)*A193957(n))^floor(atan(n))`
-/

namespace A193951.P13622930423024389466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n * A193957 n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A193951.P13622930423024389466

/-! ## A193951.P10236195252023063923

`A028310(A003056(n)*A193957(n))`
-/

namespace A193951.P10236195252023063923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003056 n * A193957 n).toNat

end

end A193951.P10236195252023063923

/-! ## A193951.P5062817475948734940

`A000007(n)+A003056(n)*A193957(n)`
-/

namespace A193951.P5062817475948734940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A003056 n * A193957 n

end

end A193951.P5062817475948734940

/-! ## A193951.P4860600306724972692

`∏{d}[A003056(n)*A193957(n), A014963(#)]`
-/

namespace A193951.P4860600306724972692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A193957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A193951.P4860600306724972692

/-! ## A193951.P1742324468404432778

`C(A124788(n), n)+A003056(n)*A193957(n)`
-/

namespace A193951.P1742324468404432778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A124788 n).toNat n : ℤ) + A003056 n * A193957 n

end

end A193951.P1742324468404432778

/-! ## A193951.P262569606645117762

`(A003056(n)*A193957(n))^(A000040(n+1)%2)`
-/

namespace A193951.P262569606645117762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n * A193957 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A193951.P262569606645117762

/-! ## A193951.P612755638088714639

`gcd(A003056(n)*A193957(n), A000010(n+1)%2)`
-/

namespace A193951.P612755638088714639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 n * A193957 n) (Int.tmod (A000010 (n + 1)) 2)

end

end A193951.P612755638088714639

/-! ## A193951.P16106737326098382443

`(A003056(n)*A193957(n))^(record[A020639(n+2)]%2)`
-/

namespace A193951.P16106737326098382443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n * A193957 n : ℚ) ^ (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 : ℤ)

end

end A193951.P16106737326098382443

/-!
# A193952: Mirror of the triangle A193951.

The programs for A193952, there is no canonical definition to state claims against.
-/

/-! ## A193952.P11353110824681263788

`A193951(∑[2*n]%comp[∑[n]])`
-/

namespace A193952.P11353110824681263788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193951 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193952.P11353110824681263788

/-! ## A193952.P2077105428582890678

`A003056(n^floor(atan(n)))*A193958(n)`
-/

namespace A193952.P2077105428582890678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat * A193958 n

end

end A193952.P2077105428582890678

/-! ## A193952.P2119478388150232755

`A134478(C(∑[char[∑[n]]], 2))*A193958(n)`
-/

namespace A193952.P2119478388150232755
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) * A193958 n

end

end A193952.P2119478388150232755

/-! ## A193952.P4100576450921905033

`A193957(C(∑[char[∑[n]]], 2))*A193958(n)`
-/

namespace A193952.P4100576450921905033
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193957 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) * A193958 n

end

end A193952.P4100576450921905033

/-! ## A193952.P1423275742332533233

`A028310(A003056(n)*A193958(n))`
-/

namespace A193952.P1423275742332533233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003056 n * A193958 n).toNat

end

end A193952.P1423275742332533233

/-! ## A193952.P7630143141530394159

`∏{d}[A003056(n)*A193958(n), A014963(#)]`
-/

namespace A193952.P7630143141530394159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A193958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A193952.P7630143141530394159

/-!
# A193953: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers), and q(n,x)=x*q(n-1,x)+n+1, n>=0.

The programs for A193953, there is no canonical definition to state claims against.
-/

/-! ## A193953.P7876744553040384406

`A189663(A194007(A028310(n)))`
-/

namespace A193953.P7876744553040384406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A194007 (A028310 n).toNat).toNat

end

end A193953.P7876744553040384406

/-! ## A193953.P5588494325646964514

`A194007(n)-A005379(A194007(n))`
-/

namespace A193953.P5588494325646964514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194007 n - A005379 (A194007 n).toNat

end

end A193953.P5588494325646964514

/-! ## A193953.P6374400974210530482

`A193954(∑[2*n]%comp[∑[n]])`
-/

namespace A193953.P6374400974210530482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193954 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193953.P6374400974210530482

/-! ## A193953.P8143445142397687989

`A371626(A194007(n))`
-/

namespace A193953.P8143445142397687989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371626 (A194007 n).toNat

end

end A193953.P8143445142397687989

/-!
# A193954: Mirror of the triangle A193953.

The programs for A193954, there is no canonical definition to state claims against.
-/

/-! ## A193954.P11005861303504341201

`A194008(n)-A005379(A194008(n))`
-/

namespace A193954.P11005861303504341201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194008 n - A005379 (A194008 n).toNat

end

end A193954.P11005861303504341201

/-! ## A193954.P3933029535489596464

`A189663(A054977(n)*A194008(n))`
-/

namespace A193954.P3933029535489596464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A054977 n * A194008 n).toNat

end

end A193954.P3933029535489596464

/-! ## A193954.P10447179168817444018

`A194008(n)+A005379(A194008(n))*A057428(n)`
-/

namespace A193954.P10447179168817444018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194008 n + A005379 (A194008 n).toNat * A057428 n

end

end A193954.P10447179168817444018

/-! ## A193954.P2267730159891872798

`A193953(∑[2*n]%comp[∑[n]])`
-/

namespace A193954.P2267730159891872798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193953 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193954.P2267730159891872798

/-!
# A193955: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers), and q(n,x)=sum{((k+1)^2)*x^(n-k) : 0<=k<=n}.

The programs for A193955, there is no canonical definition to state claims against.
-/

/-! ## A193955.P12483942948281137252

`A193956(∑[2*n]%comp[∑[n]])`
-/

namespace A193955.P12483942948281137252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193956 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193955.P12483942948281137252

/-!
# A193956: Mirror of the triangle A193955.

The programs for A193956, there is no canonical definition to state claims against.
-/

/-! ## A193956.P18072794244133549119

`A193955(∑[2*n]%comp[∑[n]])`
-/

namespace A193956.P18072794244133549119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193955 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193956.P18072794244133549119

/-!
# A193957: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers), and q(n,x)=sum{(k+1)(n+1)*x^(n-k) : 0<=k<=n}.

The programs for A193957, there is no canonical definition to state claims against.
-/

/-! ## A193957.P11741934783750262488

`A193958(∑[2*n]%comp[∑[n]])`
-/

namespace A193957.P11741934783750262488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193958 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193957.P11741934783750262488

/-! ## A193957.P13887546791004107748

`A193951(n)/A028310(A003056(n))`
-/

namespace A193957.P13887546791004107748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193951 n : ℚ) / (A028310 (A003056 n).toNat : ℚ)

end

end A193957.P13887546791004107748

/-!
# A193958: Mirror of the triangle A193955.

The programs for A193958, there is no canonical definition to state claims against.
-/

/-! ## A193958.P5050938372174303511

`A193957(∑[2*n]%comp[∑[n]])`
-/

namespace A193958.P5050938372174303511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193957 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193958.P5050938372174303511

/-!
# A193959: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{((k+1)^2)*x^(n-k) : 0<=k<=n} and q(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers) .

The programs for A193959, there is no canonical definition to state claims against.
-/

/-! ## A193959.P3395269685400750818

`A193960(A061579(n+1))`
-/

namespace A193959.P3395269685400750818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193960 (A061579 (n + 1)).toNat

end

end A193959.P3395269685400750818

/-! ## A193959.P822856526147911139

`∑{digits}[A000463(A343032(n)), #]`
-/

namespace A193959.P822856526147911139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A343032 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A193959.P822856526147911139

/-! ## A193959.P7872657357844800955

`A050036(n+1)-A124761(A004006(n))`
-/

namespace A193959.P7872657357844800955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050036 (n + 1) - A124761 (A004006 n).toNat

end

end A193959.P7872657357844800955

/-! ## A193959.P4626047701716190177

`A050036(n+1)-A196563(A004054(n))`
-/

namespace A193959.P4626047701716190177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050036 (n + 1) - A196563 (A004054 n).toNat

end

end A193959.P4626047701716190177

/-!
# A193960: Mirror of the triangle A193959.

The programs for A193960, there is no canonical definition to state claims against.
-/

/-! ## A193960.P17783586422742874750

`A193959(abs(1-A061579(n)))`
-/

namespace A193960.P17783586422742874750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193959 |1 - A061579 n|.toNat

end

end A193960.P17783586422742874750

/-!
# A193961: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=sum{((k+1)^2)*x^(n-k) : 0<=k<=n}.

The programs for A193961, there is no canonical definition to state claims against.
-/

/-! ## A193961.P5821579681147402448

`A193962(∑[2*n]%comp[∑[n]])`
-/

namespace A193961.P5821579681147402448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193962 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193961.P5821579681147402448

/-!
# A193962: Mirror of the triangle A193961.

The programs for A193962, there is no canonical definition to state claims against.
-/

/-! ## A193962.P6422162470344511203

`A193961(∑[2*n]%comp[∑[n]])`
-/

namespace A193962.P6422162470344511203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193961 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193962.P6422162470344511203

/-!
# A193963: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=sum{((k+1)^2)*x^k : 0<=k<=n}.

The programs for A193963, there is no canonical definition to state claims against.
-/

/-! ## A193963.P11772563711667969813

`A000330(A193738(n))*A055461(n+1)`
-/

namespace A193963.P11772563711667969813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A193738 n).toNat * A055461 (n + 1)

end

end A193963.P11772563711667969813

/-! ## A193963.P6962635256905355346

`A004736(n+1)²*A000330(A193738(n))`
-/

namespace A193963.P6962635256905355346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 * A000330 (A193738 n).toNat

end

end A193963.P6962635256905355346

/-! ## A193963.P16434642990619160969

`A000330(A193738(n))*A133819(A038722(n+1))`
-/

namespace A193963.P16434642990619160969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A193738 n).toNat * A133819 (A038722 (n + 1)).toNat

end

end A193963.P16434642990619160969

/-! ## A193963.P1669464830503240767

`A193964(∑[2*n]%comp[∑[n]])`
-/

namespace A193963.P1669464830503240767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193964 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193963.P1669464830503240767

/-!
# A193964: Mirror of the triangle A193963.

The programs for A193964, there is no canonical definition to state claims against.
-/

/-! ## A193964.P2720563253918434737

`A000330(A193739(n))*A133819(n+1)`
-/

namespace A193964.P2720563253918434737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A193739 n).toNat * A133819 (n + 1)

end

end A193964.P2720563253918434737

/-! ## A193964.P15534459507726133577

`A002260(n+1)²*A000330(A193739(n))`
-/

namespace A193964.P15534459507726133577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A000330 (A193739 n).toNat

end

end A193964.P15534459507726133577

/-! ## A193964.P3138038768571166364

`(A002262(n)+1)²*A000330(A193739(n))`
-/

namespace A193964.P3138038768571166364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 2 * A000330 (A193739 n).toNat

end

end A193964.P3138038768571166364

/-! ## A193964.P2281697880116050823

`(1-A057944(n)+n)²*A000330(A193739(n))`
-/

namespace A193964.P2281697880116050823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) ^ 2 * A000330 (A193739 n).toNat

end

end A193964.P2281697880116050823

/-! ## A193964.P15085350026309211260

`A000005(A059268(n))²*A000330(A193739(n))`
-/

namespace A193964.P15085350026309211260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat ^ 2 * A000330 (A193739 n).toNat

end

end A193964.P15085350026309211260

/-! ## A193964.P9975893459386032179

`A000330(A193739(n))*A055461(A038722(n+1))`
-/

namespace A193964.P9975893459386032179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A193739 n).toNat * A055461 (A038722 (n + 1)).toNat

end

end A193964.P9975893459386032179

/-!
# A193965: Triangular array: the self-fusion of (p(n,x)), where p(n,x)=sum{L(k+1)*x^(n-k) : 0<=k<=n}, where L=A000032 (Lucas numbers).

The programs for A193965, there is no canonical definition to state claims against.
-/

/-! ## A193965.P14725254799405475103

`A193966(∑[2*n]%comp[∑[n]])`
-/

namespace A193965.P14725254799405475103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193966 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193965.P14725254799405475103

/-!
# A193966: Mirror of the triangle A193965.

The programs for A193966, there is no canonical definition to state claims against.
-/

/-! ## A193966.P16837215066587357540

`A193965(∑[2*n]%comp[∑[n]])`
-/

namespace A193966.P16837215066587357540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193965 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193966.P16837215066587357540

/-!
# A193967: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{L(k+1)*x^(n-k) : 0<=k<=n}, where F=A000032 (Lucas numbers), and q(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers).

The programs for A193967, there is no canonical definition to state claims against.
-/

/-! ## A193967.P2690192328547938077

`A193968(∑[2*n]%comp[∑[n]])`
-/

namespace A193967.P2690192328547938077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193968 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193967.P2690192328547938077

/-!
# A193968: Mirror of the triangle A193967.

The programs for A193968, there is no canonical definition to state claims against.
-/

/-! ## A193968.P4604184724924075618

`A193967(∑[2*n]%comp[∑[n]])`
-/

namespace A193968.P4604184724924075618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193967 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193968.P4604184724924075618

/-!
# A193969: Triangular array: the fusion of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers) and q(n,x)=sum{L(k+1)*x^(n-k) : 0<=k<=n}, where F=A000032 (Lucas numbers).

The programs for A193969, there is no canonical definition to state claims against.
-/

/-! ## A193969.P676573621023460309

`A193970(∑[2*n]%comp[∑[n]])`
-/

namespace A193969.P676573621023460309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193970 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193969.P676573621023460309

/-!
# A193970: Mirror of the triangle A193969.

The programs for A193970, there is no canonical definition to state claims against.
-/

/-! ## A193970.P7737911071355698577

`A193969(∑[2*n]%comp[∑[n]])`
-/

namespace A193970.P7737911071355698577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193969 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193970.P7737911071355698577

/-!
# A193971: Triangular array: the fission of (p(n,x)) by (q(n,x)), where p(n,x)=x*p(n-1,x)+n+1 with p(0,x)=1, and q(n,x)=(x+1)^n.

The programs for A193971, there is no canonical definition to state claims against.
-/

/-! ## A193971.P4278686538138941125

`T(n-1,k-1)+(row(n)+2)*A007318(n)` with `a(0)=2`
-/

namespace A193971.P4278686538138941125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n + 2 : ℤ) * A007318 n

end

end A193971.P4278686538138941125

/-! ## A193971.P9726587080058611824

`A074909(n)+T(n-1,k-1)+T(n-1,k)+Δ[row(n)]` with `a(0)=2`
-/

namespace A193971.P9726587080058611824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A074909 n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A193971.P9726587080058611824

/-! ## A193971.P11068662657851128066

`A368070(A099628(1+n))`
-/

namespace A193971.P11068662657851128066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368070 (A099628 (1 + n)).toNat

end

end A193971.P11068662657851128066

/-! ## A193971.P13342917071212519397

`A060351(2*A043569(1+n)+1)`
-/

namespace A193971.P13342917071212519397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (2 * A043569 (1 + n) + 1).toNat

end

end A193971.P13342917071212519397

/-! ## A193971.P10105444382058132012

`(row(n)+3)*A074909(n)-A209518(n)`
-/

namespace A193971.P10105444382058132012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 3 : ℤ) * A074909 n - A209518 n

end

end A193971.P10105444382058132012

/-! ## A193971.P12240208912701673363

`A135278(A057428(n)+n)+T(n-1,k-1)+T(n-1,k)+Δ[row(n)]` with `a(0)=2`
-/

namespace A193971.P12240208912701673363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A135278 (A057428 n + (n : ℤ)).toNat + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A193971.P12240208912701673363

/-! ## A193971.P1811123286922307580

`A156644(n)+A051601(n)+T(n-1,k-1)+T(n-1,k)+Δ[row(n)]` with `a(0)=2`
-/

namespace A193971.P1811123286922307580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A156644 n + A051601 n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A193971.P1811123286922307580

/-! ## A193971.P17490410655115736654

`A127717(A038722(n+1))+A074909(n)`
-/

namespace A193971.P17490410655115736654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127717 (A038722 (n + 1)).toNat + A074909 n

end

end A193971.P17490410655115736654

/-! ## A193971.P6580113514098442738

`A034261(A014132(n+1))+A003506(n+1)`
-/

namespace A193971.P6580113514098442738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A014132 (n + 1)).toNat + A003506 (n + 1)

end

end A193971.P6580113514098442738

/-! ## A193971.P15204386044172146679

`A074909(n)+A004736(n+1)*A209518(n)`
-/

namespace A193971.P15204386044172146679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A004736 (n + 1) * A209518 n

end

end A193971.P15204386044172146679

/-!
# A193972: Mirror of the triangle A193971.

The programs for A193972, there is no canonical definition to state claims against.
-/

/-! ## A193972.P4643907579310758627

`T(n-1,k)+(row(n)+2)*C(row(n), col(n))` with `a(0)=2`
-/

namespace A193972.P4643907579310758627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + 2) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A193972.P4643907579310758627

/-! ## A193972.P543518844354519573

`A007318(n)+2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` with `a(0)=2`
-/

namespace A193972.P543518844354519573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007318 n + (2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n)

end

end A193972.P543518844354519573

/-! ## A193972.P9781273217254002903

`A060351(2*A209492(n+1))`
-/

namespace A193972.P9781273217254002903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (2 * A209492 (n + 1)).toNat

end

end A193972.P9781273217254002903

/-! ## A193972.P10213786687685908094

`A135278(n)+A127717(n+1)`
-/

namespace A193972.P10213786687685908094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A127717 (n + 1)

end

end A193972.P10213786687685908094

/-! ## A193972.P2705119840044931432

`A127717(n+1)+A074909(n+1)`
-/

namespace A193972.P2705119840044931432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127717 (n + 1) + A074909 (n + 1)

end

end A193972.P2705119840044931432

/-! ## A193972.P424360107296569477

`A127717(n+1)+A007318(comp[∑[n]])`
-/

namespace A193972.P424360107296569477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127717 (n + 1) + A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A193972.P424360107296569477

/-! ## A193972.P11221396474268760711

`A264751(comp[∑[n]]+1)`
-/

namespace A193972.P11221396474268760711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264751 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A193972.P11221396474268760711

/-! ## A193972.P14785026788568803118

`A193971(A061579(n))`
-/

namespace A193972.P14785026788568803118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193971 (A061579 n).toNat

end

end A193972.P14785026788568803118

/-!
# A193973: Triangular array: the fission of (p(n,x)) by (q(n,x)), where p(n,x)=x*p(n-1,x)+n+1 with p(0,x)=1, and q(n,x)=x*p(n-1,x)+1 with p(0,x)=1.

The programs for A193973, the canonical program `A193973.P5860804858313849161` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193973 has offset 0).

The definition of A193973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193973.P5860804858313849161

`A000217(row(n)+2)-A000217(row(n)+1-col(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A193973

/-- `A000217(row(n)+2)-A000217(row(n)+1-col(n))` -/
def P5860804858313849161.Spec : Prop :=
  ∀ n, P5860804858313849161.a n = A193973 n

theorem P5860804858313849161.correct : P5860804858313849161.Spec := by
  intro n
  simp only [A193973]

end A193973

/-! ## A193973.P17260566619945766213

`T(n-1,k-1)+∑[row(T(n-1,k))]` with `a(0)=2`
-/

namespace A193973.P17260566619945766213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.triRow (SequenceMachineLib.triUp f1 n)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUpLeft a n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193973.P17260566619945766213

namespace A193973

/-- `T(n-1,k-1)+∑[row(T(n-1,k))]` -/
def P17260566619945766213.Spec : Prop :=
  ∀ n, (P17260566619945766213.a n : ℤ) = A193973 n

end A193973

/-! ## A193973.P4371178085339381527

`2+row(n)+T(n-1,k-1)` with `a(0)=2`
-/

namespace A193973.P4371178085339381527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 + SequenceMachineLib.triRow n + SequenceMachineLib.triUpLeft a n

end

end A193973.P4371178085339381527

namespace A193973

/-- `2+row(n)+T(n-1,k-1)` -/
def P4371178085339381527.Spec : Prop :=
  ∀ n, (P4371178085339381527.a n : ℤ) = A193973 n

end A193973

/-! ## A193973.P3267561806549972967

`T(n-1,k-1)+∑[floor(sqrt(T(n-1,k)))]` with `a(0)=2`
-/

namespace A193973.P3267561806549972967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.sqrt (SequenceMachineLib.triUp f1 n)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUpLeft a n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193973.P3267561806549972967

namespace A193973

/-- `T(n-1,k-1)+∑[floor(sqrt(T(n-1,k)))]` -/
def P3267561806549972967.Spec : Prop :=
  ∀ n, (P3267561806549972967.a n : ℤ) = A193973 n

end A193973

/-! ## A193973.P16280782156155464350

`comp[∑[n]]-n+T(n-1,k-1)` with `a(0)=2`
-/

namespace A193973.P16280782156155464350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + SequenceMachineLib.triUpLeft a n

end

end A193973.P16280782156155464350

namespace A193973

/-- `comp[∑[n]]-n+T(n-1,k-1)` -/
def P16280782156155464350.Spec : Prop :=
  ∀ n, P16280782156155464350.a n = A193973 n

end A193973

/-! ## A193973.P11118545606807813634

`∑[char[∑[n]]]+1+T(n-1,k-1)` with `a(0)=2`
-/

namespace A193973.P11118545606807813634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 + SequenceMachineLib.triUpLeft a n)

end

end A193973.P11118545606807813634

namespace A193973

/-- `∑[char[∑[n]]]+1+T(n-1,k-1)` -/
def P11118545606807813634.Spec : Prop :=
  ∀ n, (P11118545606807813634.a n : ℤ) = A193973 n

end A193973

/-! ## A193973.P14304232697877843992

`T(n,k-1)+row(n)+2-col(n)` with `a(0)=2`
-/

namespace A193973.P14304232697877843992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triLeft a n + (SequenceMachineLib.triRow n : ℤ) + 2 - (SequenceMachineLib.triCol n : ℤ)

end

end A193973.P14304232697877843992

namespace A193973

/-- `T(n,k-1)+row(n)+2-col(n)` -/
def P14304232697877843992.Spec : Prop :=
  ∀ n, P14304232697877843992.a n = A193973 n

end A193973

/-! ## A193973.P5049242678396564225

`T(n-1,k-1)+round(sqrt(2*(n+1)))+1` with `a(0)=2`
-/

namespace A193973.P5049242678396564225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1)

end

end A193973.P5049242678396564225

namespace A193973

/-- `T(n-1,k-1)+round(sqrt(2*(n+1)))+1` -/
def P5049242678396564225.Spec : Prop :=
  ∀ n, P5049242678396564225.a n = A193973 n

end A193973

/-! ## A193973.P3067817361730642465

`T(row(n), col(n)-1)+row(n)+2-col(n)` with `a(0)=2`
-/

namespace A193973.P3067817361730642465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triRow n : ℤ) ((SequenceMachineLib.triCol n : ℤ) - 1) + (SequenceMachineLib.triRow n : ℤ) + 2 - (SequenceMachineLib.triCol n : ℤ)

end

end A193973.P3067817361730642465

namespace A193973

/-- `T(row(n), col(n)-1)+row(n)+2-col(n)` -/
def P3067817361730642465.Spec : Prop :=
  ∀ n, P3067817361730642465.a n = A193973 n

end A193973

/-! ## A193973.P18168518956938089618

`(col(n)+1)*(col(n)+2)/2+(row(n)-col(n)+1)*(col(n)+1)`
-/

namespace A193973.P18168518956938089618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triCol n + 2) : ℚ) / 2 + (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ)

end

end A193973.P18168518956938089618

namespace A193973

/-- `(col(n)+1)*(col(n)+2)/2+(row(n)-col(n)+1)*(col(n)+1)` -/
def P18168518956938089618.Spec : Prop :=
  ∀ n, P18168518956938089618.a n = (A193973 n : ℚ)

end A193973

/-! ## A193973.P5533758374489148371

`col(n)+1+(col(n)+1)*(row(n)-col(n)+1)+C(col(n)+1, 2)`
-/

namespace A193973.P5533758374489148371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) + (SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) + (Nat.choose (SequenceMachineLib.triCol n + 1) 2 : ℤ)

end

end A193973.P5533758374489148371

namespace A193973

/-- `col(n)+1+(col(n)+1)*(row(n)-col(n)+1)+C(col(n)+1, 2)` -/
def P5533758374489148371.Spec : Prop :=
  ∀ n, P5533758374489148371.a n = A193973 n

end A193973

/-! ## A193973.P8067579077931892955

`A000217(col(n)+1)+(col(n)+1)*(row(n)-col(n)+1)`
-/

namespace A193973.P8067579077931892955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triCol n + 1) + (SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A193973.P8067579077931892955

namespace A193973

/-- `A000217(col(n)+1)+(col(n)+1)*(row(n)-col(n)+1)` -/
def P8067579077931892955.Spec : Prop :=
  ∀ n, P8067579077931892955.a n = A193973 n

end A193973

/-! ## A193973.P2420014072884717063

`A134464(n+1)+A077028(n)`
-/

namespace A193973.P2420014072884717063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134464 (n + 1) + A077028 n

end

end A193973.P2420014072884717063

namespace A193973

/-- `A134464(n+1)+A077028(n)` -/
def P2420014072884717063.Spec : Prop :=
  ∀ n, P2420014072884717063.a n = A193973 n

end A193973

/-! ## A193973.P8400826583476755244

`A309559(n)+A158405(n+1)`
-/

namespace A193973.P8400826583476755244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n + A158405 (n + 1)

end

end A193973.P8400826583476755244

namespace A193973

/-- `A309559(n)+A158405(n+1)` -/
def P8400826583476755244.Spec : Prop :=
  ∀ n, P8400826583476755244.a n = A193973 n

end A193973

/-! ## A193973.P3515274553743867119

`comp[∑[n]]-A000217(A025581(n))`
-/

namespace A193973.P3515274553743867119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A000217 (A025581 n).toNat

end

end A193973.P3515274553743867119

namespace A193973

/-- `comp[∑[n]]-A000217(A025581(n))` -/
def P3515274553743867119.Spec : Prop :=
  ∀ n, P3515274553743867119.a n = A193973 n

end A193973

/-! ## A193973.P13874823021115194018

`A141419(n+1)+A002260(n+1)`
-/

namespace A193973.P13874823021115194018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + A002260 (n + 1)

end

end A193973.P13874823021115194018

namespace A193973

/-- `A141419(n+1)+A002260(n+1)` -/
def P13874823021115194018.Spec : Prop :=
  ∀ n, P13874823021115194018.a n = A193973 n

end A193973

/-! ## A193973.P276370558641555442

`A141419(n+1)+A002262(n)+1`
-/

namespace A193973.P276370558641555442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + (A002262 n + 1)

end

end A193973.P276370558641555442

namespace A193973

/-- `A141419(n+1)+A002262(n)+1` -/
def P276370558641555442.Spec : Prop :=
  ∀ n, P276370558641555442.a n = A193973 n

end A193973

/-! ## A193973.P13848667007478591409

`A365582(n+1)+A204250(n+1)`
-/

namespace A193973.P13848667007478591409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365582 (n + 1) + A204250 (n + 1)

end

end A193973.P13848667007478591409

namespace A193973

/-- `A365582(n+1)+A204250(n+1)` -/
def P13848667007478591409.Spec : Prop :=
  ∀ n, P13848667007478591409.a n = A193973 n

end A193973

/-! ## A193973.P11704598298956054783

`A141418(n+1)+2*A002260(n+1)`
-/

namespace A193973.P11704598298956054783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) + 2 * A002260 (n + 1)

end

end A193973.P11704598298956054783

namespace A193973

/-- `A141418(n+1)+2*A002260(n+1)` -/
def P11704598298956054783.Spec : Prop :=
  ∀ n, P11704598298956054783.a n = A193973 n

end A193973

/-! ## A193973.P9296768030996957485

`2*A141419(n+1)-A141418(n+1)`
-/

namespace A193973.P9296768030996957485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141419 (n + 1) - A141418 (n + 1)

end

end A193973.P9296768030996957485

namespace A193973

/-- `2*A141419(n+1)-A141418(n+1)` -/
def P9296768030996957485.Spec : Prop :=
  ∀ n, P9296768030996957485.a n = A193973 n

end A193973

/-!
# A193974: Mirror of the triangle A193973.

The programs for A193974, the canonical program `A193974.P14269232743332111222` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193974 has offset 0).

The definition of A193974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193974.P5159954140024211716

`2+row(n)+T(n-1,k)` with `a(0)=2`
-/

namespace A193974.P5159954140024211716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 + SequenceMachineLib.triRow n + SequenceMachineLib.triUp a n

end

end A193974.P5159954140024211716

namespace A193974

/-- `2+row(n)+T(n-1,k)` -/
def P5159954140024211716.Spec : Prop :=
  ∀ n, (P5159954140024211716.a n : ℤ) = A193974 n

end A193974

/-! ## A193974.P3495274522453701261

`comp[∑[n]]-n+T(n-1,k)` with `a(0)=2`
-/

namespace A193974.P3495274522453701261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + SequenceMachineLib.triUp a n

end

end A193974.P3495274522453701261

namespace A193974

/-- `comp[∑[n]]-n+T(n-1,k)` -/
def P3495274522453701261.Spec : Prop :=
  ∀ n, P3495274522453701261.a n = A193974 n

end A193974

/-! ## A193974.P7068540077953148943

`comp[∑[n]]-(n-T(n-1,k))` with `a(0)=2`
-/

namespace A193974.P7068540077953148943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - SequenceMachineLib.triUp a n)

end

end A193974.P7068540077953148943

namespace A193974

/-- `comp[∑[n]]-(n-T(n-1,k))` -/
def P7068540077953148943.Spec : Prop :=
  ∀ n, P7068540077953148943.a n = A193974 n

end A193974

/-! ## A193974.P9422574103857637691

`∑[char[∑[n]]]+T(n-1,k)+1` with `a(0)=2`
-/

namespace A193974.P9422574103857637691
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.triUp a n + 1)

end

end A193974.P9422574103857637691

namespace A193974

/-- `∑[char[∑[n]]]+T(n-1,k)+1` -/
def P9422574103857637691.Spec : Prop :=
  ∀ n, (P9422574103857637691.a n : ℤ) = A193974 n

end A193974

/-! ## A193974.P1740460190208277476

`row(n)-(T(n-1,k)-2*T(n-1,k)-2)` with `a(0)=2`
-/

namespace A193974.P1740460190208277476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUp a n - 2)

end

end A193974.P1740460190208277476

namespace A193974

/-- `row(n)-(T(n-1,k)-2*T(n-1,k)-2)` -/
def P1740460190208277476.Spec : Prop :=
  ∀ n, P1740460190208277476.a n = A193974 n

end A193974

/-! ## A193974.P14327575945175391281

`T(n-1,k)+round(sqrt(2*(n+1)))+1` with `a(0)=2`
-/

namespace A193974.P14327575945175391281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1)

end

end A193974.P14327575945175391281

namespace A193974

/-- `T(n-1,k)+round(sqrt(2*(n+1)))+1` -/
def P14327575945175391281.Spec : Prop :=
  ∀ n, P14327575945175391281.a n = A193974 n

end A193974

/-! ## A193974.P4756289714566934103

`(row(n)-col(n)+1)*(row(n)-col(n)+2)/2+(col(n)+1)*(row(n)-col(n)+1)`
-/

namespace A193974.P4756289714566934103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2) : ℚ) / 2 + ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ)

end

end A193974.P4756289714566934103

namespace A193974

/-- `(row(n)-col(n)+1)*(row(n)-col(n)+2)/2+(col(n)+1)*(row(n)-col(n)+1)` -/
def P4756289714566934103.Spec : Prop :=
  ∀ n, P4756289714566934103.a n = (A193974 n : ℚ)

end A193974

/-! ## A193974.P9296657845696167626

`row(n)-col(n)+1+(row(n)-col(n)+1)*(col(n)+1)+C(row(n)-col(n)+1, 2)`
-/

namespace A193974.P9296657845696167626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) + (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat 2 : ℤ)

end

end A193974.P9296657845696167626

namespace A193974

/-- `row(n)-col(n)+1+(row(n)-col(n)+1)*(col(n)+1)+C(row(n)-col(n)+1, 2)` -/
def P9296657845696167626.Spec : Prop :=
  ∀ n, P9296657845696167626.a n = A193974 n

end A193974

/-! ## A193974.P14269232743332111222

`A131783(n+1)+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193974

/-- `A131783(n+1)+1` -/
def P14269232743332111222.Spec : Prop :=
  ∀ n, P14269232743332111222.a n = A193974 n

theorem P14269232743332111222.correct : P14269232743332111222.Spec := by
  intro n
  simp only [A193974]

end A193974

/-! ## A193974.P15423862409278389165

`A205016(n+1)/2`
-/

namespace A193974.P15423862409278389165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205016 (n + 1) : ℚ) / 2

end

end A193974.P15423862409278389165

namespace A193974

/-- `A205016(n+1)/2` -/
def P15423862409278389165.Spec : Prop :=
  ∀ n, P15423862409278389165.a n = (A193974 n : ℚ)

theorem P15423862409278389165.correct : P15423862409278389165.Spec := by
  intro n
  simp only [A193974, Nat.add_sub_cancel, A193974.P15423862409278389165.a, A193974.P14269232743332111222.a, A131783, A131783.P16711198060458241591.a, A205016, A205016.P2286842531164054448.a, A025581, A025581.P16112744757063613497.a, A049777, A049777.P4000231892958571332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193974

/-! ## A193974.P7518254678927330975

`A000217(row(n)-col(n)+1)+(row(n)-col(n)+1)*(col(n)+1)`
-/

namespace A193974.P7518254678927330975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A193974.P7518254678927330975

namespace A193974

/-- `A000217(row(n)-col(n)+1)+(row(n)-col(n)+1)*(col(n)+1)` -/
def P7518254678927330975.Spec : Prop :=
  ∀ n, P7518254678927330975.a n = A193974 n

end A193974

/-! ## A193974.P424217355710057159

`A144330(n)+A143956(n+1)`
-/

namespace A193974.P424217355710057159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144330 n + A143956 (n + 1)

end

end A193974.P424217355710057159

namespace A193974

/-- `A144330(n)+A143956(n+1)` -/
def P424217355710057159.Spec : Prop :=
  ∀ n, P424217355710057159.a n = A193974 n

end A193974

/-! ## A193974.P10608567069576811214

`A158822(n)+A143595(n+1)`
-/

namespace A193974.P10608567069576811214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158822 n + A143595 (n + 1)

end

end A193974.P10608567069576811214

namespace A193974

/-- `A158822(n)+A143595(n+1)` -/
def P10608567069576811214.Spec : Prop :=
  ∀ n, P10608567069576811214.a n = A193974 n

end A193974

/-! ## A193974.P4694152599962736672

`A193592(n)+A131819(n+1)`
-/

namespace A193974.P4694152599962736672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n + A131819 (n + 1)

end

end A193974.P4694152599962736672

namespace A193974

/-- `A193592(n)+A131819(n+1)` -/
def P4694152599962736672.Spec : Prop :=
  ∀ n, P4694152599962736672.a n = A193974 n

end A193974

/-! ## A193974.P17315792063445965978

`A329854(n)+A131914(n+1)`
-/

namespace A193974.P17315792063445965978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329854 n + A131914 (n + 1)

end

end A193974.P17315792063445965978

namespace A193974

/-- `A329854(n)+A131914(n+1)` -/
def P17315792063445965978.Spec : Prop :=
  ∀ n, P17315792063445965978.a n = A193974 n

end A193974

/-! ## A193974.P2195527767496364822

`A049777(n+1)+A004736(n+1)`
-/

namespace A193974.P2195527767496364822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A004736 (n + 1)

end

end A193974.P2195527767496364822

namespace A193974

/-- `A049777(n+1)+A004736(n+1)` -/
def P2195527767496364822.Spec : Prop :=
  ∀ n, P2195527767496364822.a n = A193974 n

end A193974

/-! ## A193974.P4466092886889506527

`A049777(n+1)+A025581(n)+1`
-/

namespace A193974.P4466092886889506527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A025581 n + 1)

end

end A193974.P4466092886889506527

namespace A193974

/-- `A049777(n+1)+A025581(n)+1` -/
def P4466092886889506527.Spec : Prop :=
  ∀ n, P4466092886889506527.a n = A193974 n

theorem P4466092886889506527.correct : P4466092886889506527.Spec := by
  intro n
  simp only [A193974, Nat.add_sub_cancel, A193974.P4466092886889506527.a, A193974.P14269232743332111222.a, A025581, A025581.P16112744757063613497.a, A049777, A049777.P4000231892958571332.a, A131783, A131783.P16711198060458241591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193974

/-! ## A193974.P15059650313215299229

`A128076(n+1)+A049780(n)+1`
-/

namespace A193974.P15059650313215299229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + (A049780 n + 1)

end

end A193974.P15059650313215299229

namespace A193974

/-- `A128076(n+1)+A049780(n)+1` -/
def P15059650313215299229.Spec : Prop :=
  ∀ n, P15059650313215299229.a n = A193974 n

end A193974

/-! ## A193974.P14707521731618455005

`A365904(n+1)+1-A083920(n)`
-/

namespace A193974.P14707521731618455005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365904 (n + 1) + (1 - A083920 n)

end

end A193974.P14707521731618455005

namespace A193974

/-- `A365904(n+1)+1-A083920(n)` -/
def P14707521731618455005.Spec : Prop :=
  ∀ n, P14707521731618455005.a n = A193974 n

end A193974

/-! ## A193974.P10957776560009633928

`A120070(n+2)-A049777(n+1)`
-/

namespace A193974.P10957776560009633928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) - A049777 (n + 1)

end

end A193974.P10957776560009633928

namespace A193974

/-- `A120070(n+2)-A049777(n+1)` -/
def P10957776560009633928.Spec : Prop :=
  ∀ n, P10957776560009633928.a n = A193974 n

end A193974

/-!
# A193975: Triangular array: the self-fission of (p(n,x)), where p(n,x)=x*p(n-1,x)+n+1, where p(0,x)=1.

The programs for A193975, the canonical program `A193975.P7422222807454422260` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193975 has offset 0).

The definition of A193975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193975.P11655073162412598519

`(col(n)+1)*(row(n)+2)+T(n-1,k-1)` with `a(0)=2`
-/

namespace A193975.P11655073162412598519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triRow n + 2) + SequenceMachineLib.triUpLeft a n

end

end A193975.P11655073162412598519

namespace A193975

/-- `(col(n)+1)*(row(n)+2)+T(n-1,k-1)` -/
def P11655073162412598519.Spec : Prop :=
  ∀ n, (P11655073162412598519.a n : ℤ) = A193975 n

end A193975

/-! ## A193975.P14190121471233731294

`A075362(n+1)+T(n-1,k-1)+col(n)+1` with `a(0)=2`
-/

namespace A193975.P14190121471233731294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A075362 (n + 1) + SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A193975.P14190121471233731294

namespace A193975

/-- `A075362(n+1)+T(n-1,k-1)+col(n)+1` -/
def P14190121471233731294.Spec : Prop :=
  ∀ n, P14190121471233731294.a n = A193975 n

end A193975

/-! ## A193975.P7422222807454422260

`A177877(n-A049780(n))+A177877(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A193975

/-- `A177877(n-A049780(n))+A177877(n)` -/
def P7422222807454422260.Spec : Prop :=
  ∀ n, P7422222807454422260.a n = A193975 n

theorem P7422222807454422260.correct : P7422222807454422260.Spec := by
  intro n
  simp only [A193975]

end A193975

/-! ## A193975.P18049546241764105208

`A082652(comp[∑[n]])`
-/

namespace A193975.P18049546241764105208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A193975.P18049546241764105208

namespace A193975

/-- `A082652(comp[∑[n]])` -/
def P18049546241764105208.Spec : Prop :=
  ∀ n, P18049546241764105208.a n = A193975 n

end A193975

/-! ## A193975.P17431796019566018231

`A193976(A061579(n))`
-/

namespace A193975.P17431796019566018231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193976 (A061579 n).toNat

end

end A193975.P17431796019566018231

namespace A193975

/-- `A193976(A061579(n))` -/
def P17431796019566018231.Spec : Prop :=
  ∀ n, P17431796019566018231.a n = A193975 n

end A193975

/-! ## A193975.P15875793531159169327

`A104634((n-comp[∑[n]])²-comp[∑[n-1]])`
-/

namespace A193975.P15875793531159169327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A193975.P15875793531159169327

namespace A193975

/-- `A104634((n-comp[∑[n]])²-comp[∑[n-1]])` -/
def P15875793531159169327.Spec : Prop :=
  ∀ n, P15875793531159169327.a n = A193975 n

end A193975

/-! ## A193975.P11473425044217627014

`A193891(comp[∑[n-1]]+comp[∑[n]]-n)`
-/

namespace A193975.P11473425044217627014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193891 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A193975.P11473425044217627014

namespace A193975

/-- `A193891(comp[∑[n-1]]+comp[∑[n]]-n)` -/
def P11473425044217627014.Spec : Prop :=
  ∀ n, P11473425044217627014.a n = A193975 n

end A193975

/-! ## A193975.P52415914789282980

`2/A004736(n+1)*A185874(n+1)`
-/

namespace A193975.P52415914789282980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A004736 (n + 1) : ℚ) * (A185874 (n + 1) : ℚ)

end

end A193975.P52415914789282980

namespace A193975

/-- `2/A004736(n+1)*A185874(n+1)` -/
def P52415914789282980.Spec : Prop :=
  ∀ n, P52415914789282980.a n = (A193975 n : ℚ)

end A193975

/-!
# A193976: Mirror of the triangle A193975.

The programs for A193976, the canonical program `A193976.P17233718569355432960` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193976 has offset 0).

The definition of A193976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193976.P10193430409589729132

`2*(T(n-1,k)+row(n)+1)-(T(n-2,k)+col(n))` with `a(0)=2`
-/

namespace A193976.P10193430409589729132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n : ℤ) + 1) - (SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triCol n : ℤ))

end

end A193976.P10193430409589729132

namespace A193976

/-- `2*(T(n-1,k)+row(n)+1)-(T(n-2,k)+col(n))` -/
def P10193430409589729132.Spec : Prop :=
  ∀ n, P10193430409589729132.a n = A193976 n

end A193976

/-! ## A193976.P6681329084004136237

`T(n-1,k)+(row(n)+2)*(row(n)+1-col(n))` with `a(0)=2`
-/

namespace A193976.P6681329084004136237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + 2 : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A193976.P6681329084004136237

namespace A193976

/-- `T(n-1,k)+(row(n)+2)*(row(n)+1-col(n))` -/
def P6681329084004136237.Spec : Prop :=
  ∀ n, P6681329084004136237.a n = A193976 n

end A193976

/-! ## A193976.P12449065749676230960

`A063929(n+1)+T(n-1,k)` with `a(0)=2`
-/

namespace A193976.P12449065749676230960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A063929 (n + 1) + SequenceMachineLib.triUp a n

end

end A193976.P12449065749676230960

namespace A193976

/-- `A063929(n+1)+T(n-1,k)` -/
def P12449065749676230960.Spec : Prop :=
  ∀ n, P12449065749676230960.a n = A193976 n

end A193976

/-! ## A193976.P17233718569355432960

`A104634(n+1)+abs(A122432(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A193976

/-- `A104634(n+1)+abs(A122432(n))` -/
def P17233718569355432960.Spec : Prop :=
  ∀ n, P17233718569355432960.a n = A193976 n

theorem P17233718569355432960.correct : P17233718569355432960.Spec := by
  intro n
  simp only [A193976]

end A193976

/-! ## A193976.P12756073931772014410

`A104792(n+1)+A104633(n+1)`
-/

namespace A193976.P12756073931772014410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104792 (n + 1) + A104633 (n + 1)

end

end A193976.P12756073931772014410

namespace A193976

/-- `A104792(n+1)+A104633(n+1)` -/
def P12756073931772014410.Spec : Prop :=
  ∀ n, P12756073931772014410.a n = A193976 n

end A193976

/-! ## A193976.P5063868217117206629

`A104634(n+1)+A000217(A004736(n+1))`
-/

namespace A193976.P5063868217117206629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + A000217 (A004736 (n + 1)).toNat

end

end A193976.P5063868217117206629

namespace A193976

/-- `A104634(n+1)+A000217(A004736(n+1))` -/
def P5063868217117206629.Spec : Prop :=
  ∀ n, P5063868217117206629.a n = A193976 n

end A193976

/-! ## A193976.P3982609503417314671

`A104633(n+1)+A000330(A004736(n+1))`
-/

namespace A193976.P3982609503417314671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A000330 (A004736 (n + 1)).toNat

end

end A193976.P3982609503417314671

namespace A193976

/-- `A104633(n+1)+A000330(A004736(n+1))` -/
def P3982609503417314671.Spec : Prop :=
  ∀ n, P3982609503417314671.a n = A193976 n

end A193976

/-! ## A193976.P3026810297126949022

`A082652(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A193976.P3026810297126949022
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A193976.P3026810297126949022

namespace A193976

/-- `A082652(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)` -/
def P3026810297126949022.Spec : Prop :=
  ∀ n, P3026810297126949022.a n = A193976 n

end A193976

/-! ## A193976.P2175619005344627422

`A193975(row(n)*(row(n)+3)/2-col(n))`
-/

namespace A193976.P2175619005344627422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193975 (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ))).toNat

end

end A193976.P2175619005344627422

namespace A193976

/-- `A193975(row(n)*(row(n)+3)/2-col(n))` -/
def P2175619005344627422.Spec : Prop :=
  ∀ n, P2175619005344627422.a n = A193976 n

end A193976

/-! ## A193976.P2440454433025684133

`A104634(1+comp[∑[n]])`
-/

namespace A193976.P2440454433025684133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A193976.P2440454433025684133

namespace A193976

/-- `A104634(1+comp[∑[n]])` -/
def P2440454433025684133.Spec : Prop :=
  ∀ n, P2440454433025684133.a n = A193976 n

end A193976

/-! ## A193976.P13617054611268669458

`A193891(A140978(n+1)-(n+1))`
-/

namespace A193976.P13617054611268669458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193891 (A140978 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193976.P13617054611268669458

namespace A193976

/-- `A193891(A140978(n+1)-(n+1))` -/
def P13617054611268669458.Spec : Prop :=
  ∀ n, P13617054611268669458.a n = A193976 n

end A193976

/-! ## A193976.P14212563174937034630

`A104634(n+1)+A005843(A104634(n+1))-A104716(n+1)`
-/

namespace A193976.P14212563174937034630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + (A005843 (A104634 (n + 1)).toNat - A104716 (n + 1))

end

end A193976.P14212563174937034630

namespace A193976

/-- `A104634(n+1)+A005843(A104634(n+1))-A104716(n+1)` -/
def P14212563174937034630.Spec : Prop :=
  ∀ n, P14212563174937034630.a n = A193976 n

end A193976

/-!
# A193977: Triangular array: the fission of (p(n,x)) by (q(n,x)), where p(n,x)=x*p(n-1,x)+n+1 with p(0,x)=1, and q(n,x)=sum{(k+1)*x^k ; 0<=k<=n}.

The programs for A193977, there is no canonical definition to state claims against.
-/

/-! ## A193977.P7746337991892543602

`T(n-1,k-1)+(row(n)+2)*(row(n)+1-col(n))` with `a(0)=2`
-/

namespace A193977.P7746337991892543602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n + 2 : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A193977.P7746337991892543602

/-! ## A193977.P17443870734990727854

`A063929(n+1)+T(n-1,k-1)` with `a(0)=2`
-/

namespace A193977.P17443870734990727854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A063929 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A193977.P17443870734990727854

/-! ## A193977.P12345930706220226059

`(row(n)-col(n)+1)*A193973(n)`
-/

namespace A193977.P12345930706220226059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * A193973 n

end

end A193977.P12345930706220226059

/-! ## A193977.P3514027185546201022

`(C(comp[∑[n]]-n, 2)-n)*A141419(comp[∑[n]])`
-/

namespace A193977.P3514027185546201022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A141419 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

end

end A193977.P3514027185546201022

/-! ## A193977.P4102374985549589904

`A107985(n)+A104633(n+1)`
-/

namespace A193977.P4102374985549589904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n + A104633 (n + 1)

end

end A193977.P4102374985549589904

/-! ## A193977.P11267767303203435724

`A004736(n+1)*A193973(n)`
-/

namespace A193977.P11267767303203435724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A193973 n

end

end A193977.P11267767303203435724

/-! ## A193977.P15994237587932758819

`(A025581(n)+1)*A193973(n)`
-/

namespace A193977.P15994237587932758819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A193973 n

end

end A193977.P15994237587932758819

/-! ## A193977.P2792772119189601493

`A193973(n)*A373214(n+1)`
-/

namespace A193977.P2792772119189601493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n * A373214 (n + 1)

end

end A193977.P2792772119189601493

/-! ## A193977.P1439813828737319039

`sqrt(A055461(n+1))*A193973(n)`
-/

namespace A193977.P1439813828737319039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A193973 n : ℝ)

end

end A193977.P1439813828737319039

/-! ## A193977.P8923073272347245171

`A093445(n+1)+A049777(n+1)`
-/

namespace A193977.P8923073272347245171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (n + 1) + A049777 (n + 1)

end

end A193977.P8923073272347245171

/-!
# A193978: Mirror of the triangle A193977.

The programs for A193978, there is no canonical definition to state claims against.
-/

/-! ## A193978.P18160124025438543985

`T(n,k-1)+T(n-1,k)+row(n)+2-T(n-1,k-1)` with `a(0)=2`
-/

namespace A193978.P18160124025438543985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triLeft a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n : ℤ) + 2 - SequenceMachineLib.triUpLeft a n

end

end A193978.P18160124025438543985

/-! ## A193978.P5940795041088940015

`T(n-1,k)+(col(n)+1)*(row(n)+2)` with `a(0)=2`
-/

namespace A193978.P5940795041088940015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triRow n + 2)

end

end A193978.P5940795041088940015

/-! ## A193978.P2689487312411740903

`T(n-1,k-1)+T(n-1,k)+row(n)+col(n)+2-T(n-2,k-1)` with `a(0)=2`
-/

namespace A193978.P2689487312411740903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triCol n : ℤ) + 2 - SequenceMachineLib.triUp2Left a n

end

end A193978.P2689487312411740903

/-! ## A193978.P4474771609231150944

`(1+col(n))*A193974(n)`
-/

namespace A193978.P4474771609231150944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triCol n : ℤ) * A193974 n

end

end A193978.P4474771609231150944

/-! ## A193978.P7775157077309155466

`(col(n)+1)*(A131783(n+1)+1)`
-/

namespace A193978.P7775157077309155466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * (A131783 (n + 1) + 1)

end

end A193978.P7775157077309155466

/-! ## A193978.P13177255529970065984

`A127779(n+1)+A107985(n)`
-/

namespace A193978.P13177255529970065984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127779 (n + 1) + A107985 n

end

end A193978.P13177255529970065984

/-! ## A193978.P14938990482170277584

`A002260(n+1)*A193974(n)`
-/

namespace A193978.P14938990482170277584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A193974 n

end

end A193978.P14938990482170277584

/-! ## A193978.P12930573686563936307

`(A002262(n)+1)*A193974(n)`
-/

namespace A193978.P12930573686563936307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A193974 n

end

end A193978.P12930573686563936307

/-! ## A193978.P17159085249160688747

`A057555(Δ[n²])*A193974(n)`
-/

namespace A193978.P17159085249160688747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A193974 n

end

end A193978.P17159085249160688747

/-! ## A193978.P2600561024180533353

`A097285(Δ[n²])*A193974(n)`
-/

namespace A193978.P2600561024180533353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A193974 n

end

end A193978.P2600561024180533353

/-!
# A193979: Triangular array: the self-fission of (p(n,x)), where p(n,x)=x*p(n-1,x)+n, with p(0,x)=1.

The programs for A193979, there is no canonical definition to state claims against.
-/

/-! ## A193979.P12596383066630572402

`A193980(∑[2*n]%comp[∑[n]])`
-/

namespace A193979.P12596383066630572402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193980 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193979.P12596383066630572402

/-! ## A193979.P17657225538373621537

`A033930(A397496(n+1))`
-/

namespace A193979.P17657225538373621537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A397496 (n + 1)).toNat

end

end A193979.P17657225538373621537

/-!
# A193980: Mirror of the triangle A193979.

The programs for A193980, there is no canonical definition to state claims against.
-/

/-! ## A193980.P2318861755381857712

`A104634(n+1)-A049780(A014132(n+1))`
-/

namespace A193980.P2318861755381857712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) - A049780 (A014132 (n + 1)).toNat

end

end A193980.P2318861755381857712

/-! ## A193980.P14084830278200929029

`A185878(n+1)/A002260(n+1)-A114327(n)`
-/

namespace A193980.P14084830278200929029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185878 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) - (A114327 n : ℚ)

end

end A193980.P14084830278200929029

/-! ## A193980.P4156878800686298253

`A002260(n+1)+A213751(n+1)-A104633(n+1)`
-/

namespace A193980.P4156878800686298253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A213751 (n + 1) - A104633 (n + 1))

end

end A193980.P4156878800686298253

/-! ## A193980.P10530781564795947640

`A193979(∑[2*n]%comp[∑[n]])`
-/

namespace A193980.P10530781564795947640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193979 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193980.P10530781564795947640

/-!
# A193981: Number of ways to arrange 3 nonattacking triangular rooks on an nXnXn triangular grid.

The programs for A193981, the canonical program `A193981.P9503583681536881760` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193981 has offset 1).

The definition of A193981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193981.P2776531748755136587

`ogf((2x^3+11x^4+17x^5)/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))`
-/

namespace A193981.P2776531748755136587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2, 11, 17] [1, -6, 14, -14, 0, 14, -14, 6, -1] n

end

end A193981.P2776531748755136587

namespace A193981

/-- `ogf((2x^3+11x^4+17x^5)/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))` -/
def P2776531748755136587.Spec : Prop :=
  ∀ n, P2776531748755136587.a n = A193981 (n + 1)

end A193981

/-! ## A193981.P1080491170315842337

`(∑[n+1]+1)*C(n, 4)+(n^3+n)/2-A002717(n)`
-/

namespace A193981.P1080491170315842337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 1) * Nat.choose n 4 : ℕ) : ℚ) + ((n ^ 3 + n : ℚ) / 2 - (A002717 n : ℚ))

end

end A193981.P1080491170315842337

namespace A193981

/-- `(∑[n+1]+1)*C(n, 4)+(n^3+n)/2-A002717(n)` -/
def P1080491170315842337.Spec : Prop :=
  ∀ n, P1080491170315842337.a n = (A193981 (n + 1) : ℚ)

end A193981

/-! ## A193981.P9503583681536881760

`A019298(n)+A053526(n)-n²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A193981

/-- `A019298(n)+A053526(n)-n²` -/
def P9503583681536881760.Spec : Prop :=
  ∀ n, P9503583681536881760.a n = A193981 (n + 1)

theorem P9503583681536881760.correct : P9503583681536881760.Spec := by
  intro n
  simp only [A193981, Nat.add_sub_cancel]

end A193981

/-! ## A193981.P4078876991670402324

`A193986(∑[n+3]+1)`
-/

namespace A193981.P4078876991670402324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A193981.P4078876991670402324

namespace A193981

/-- `A193986(∑[n+3]+1)` -/
def P4078876991670402324.Spec : Prop :=
  ∀ n, P4078876991670402324.a n = A193981 (n + 1)

end A193981

/-!
# A193982: Number of ways to arrange 4 nonattacking triangular rooks on an nXnXn triangular grid.

The programs for A193982, the canonical program `A193982.P12873416446424447786` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193982 has offset 1).

The definition of A193982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193982.P12873416446424447786

`ogf((18x^5+125x^6+267x^7+279x^8+151x^9)/(1-6x+12x^2-2x^3-27x^4+36x^5-36x^7+27x^8+2x^9-12x^10+6x^11-x^12))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A193982

/-- `ogf((18x^5+125x^6+267x^7+279x^8+151x^9)/(1-6x+12x^2-2x^3-27x^4+36x^5-36x^7+27x^8+2x^9-12x^10+6x^11-x^12))` -/
def P12873416446424447786.Spec : Prop :=
  ∀ n, P12873416446424447786.a n = A193982 (n + 1)

theorem P12873416446424447786.correct : P12873416446424447786.Spec := by
  intro n
  simp only [A193982, Nat.add_sub_cancel]

end A193982

/-! ## A193982.P4751652005192605157

`A193986(∑[n+4]+3)`
-/

namespace A193982.P4751652005192605157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193986 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A193982.P4751652005192605157

namespace A193982

/-- `A193986(∑[n+4]+3)` -/
def P4751652005192605157.Spec : Prop :=
  ∀ n, P4751652005192605157.a n = A193982 (n + 1)

end A193982

/-! ## A193982.P12759194391300172754

`A298167(A402063(n))`
-/

namespace A193982.P12759194391300172754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298167 (A402063 n).toNat

end

end A193982.P12759194391300172754

namespace A193982

/-- `A298167(A402063(n))` -/
def P12759194391300172754.Spec : Prop :=
  ∀ n, P12759194391300172754.a n = A193982 (n + 1)

end A193982

/-!
# A193983: Number of ways to arrange 5 nonattacking triangular rooks on an n X n X n triangular grid.

The programs for A193983, there is no canonical definition to state claims against.
-/

/-! ## A193983.P14228737255967658602

`A193986(∑[n+5]+6)`
-/

namespace A193983.P14228737255967658602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193986 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A193983.P14228737255967658602

/-! ## A193983.P17636128285831651669

`A103035(A100136(n))`
-/

namespace A193983.P17636128285831651669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103035 (A100136 n).toNat

end

end A193983.P17636128285831651669

/-! ## A193983.P3051050332381794783

`A210717(A122552(n))`
-/

namespace A193983.P3051050332381794783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 (A122552 n).toNat

end

end A193983.P3051050332381794783

/-! ## A193983.P16865007962379540918

`A293957(A319792(n))`
-/

namespace A193983.P16865007962379540918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293957 (A319792 n).toNat

end

end A193983.P16865007962379540918

/-!
# A193984: Number of ways to arrange 6 nonattacking triangular rooks on an n X n X n triangular grid.

The programs for A193984, there is no canonical definition to state claims against.
-/

/-! ## A193984.P18340019365073945504

`A193986(∑[n+6]+10)`
-/

namespace A193984.P18340019365073945504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193986 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A193984.P18340019365073945504

/-!
# A193985: Number of ways to arrange 7 nonattacking triangular rooks on an nXnXn triangular grid.

The programs for A193985, there is no canonical definition to state claims against.
-/

/-! ## A193985.P16072743583371440386

`A193986(A055999(n+4))`
-/

namespace A193985.P16072743583371440386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193986 (A055999 (n + 4)).toNat

end

end A193985.P16072743583371440386

/-!
# A193986: T(n,k) is the number of ways to arrange k nonattacking triangular rooks on an nXnXn triangular grid.

The programs for A193986, there is no canonical definition to state claims against.
-/

/-! ## A193986.P3172038314104416027

`A127773(A324684(n)+A007947(n+1))`
-/

namespace A193986.P3172038314104416027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127773 (A324684 n + A007947 (n + 1)).toNat

end

end A193986.P3172038314104416027

/-! ## A193986.P14590110060434254947

`C(A046530(n+1), A001223(A318107(n)))`
-/

namespace A193986.P14590110060434254947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046530 (n + 1)).toNat (A001223 (A318107 n).toNat).toNat

end

end A193986.P14590110060434254947

/-! ## A193986.P17039620330654175755

`A194424(n+1)%A000993(A343088(n))`
-/

namespace A193986.P17039620330654175755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194424 (n + 1)) (A000993 (A343088 n).toNat)

end

end A193986.P17039620330654175755

/-! ## A193986.P2895138410347838053

`A263837(n+1)%A000993(A343088(n))`
-/

namespace A193986.P2895138410347838053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263837 (n + 1)) (A000993 (A343088 n).toNat)

end

end A193986.P2895138410347838053

/-! ## A193986.P13370339463452896579

`A299702(n+1)%A233668(A343088(n))`
-/

namespace A193986.P13370339463452896579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299702 (n + 1)) (A233668 (A343088 n).toNat)

end

end A193986.P13370339463452896579

/-!
# A193987: Least number k such that tau(tau(k)) = n.

The programs for A193987, there is no canonical definition to state claims against.
-/

/-! ## A193987.P16085021227795504411

`A061799(A005179(1+n))`
-/

namespace A193987.P16085021227795504411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A005179 (1 + n)).toNat

end

end A193987.P16085021227795504411

/-! ## A193987.P11490112835436038341

`A007416(A064787(A005179(n+1)))`
-/

namespace A193987.P11490112835436038341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A064787 (A005179 (n + 1)).toNat).toNat

end

end A193987.P11490112835436038341

/-!
# A193988: Numbers n such that sigma_2(n) > sigma_2(k) for all k < n.

The programs for A193988, there is no canonical definition to state claims against.
-/

/-! ## A193988.P5044965455395314895

`lt[A381708(n+1), 3]+1`
-/

namespace A193988.P5044965455395314895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381708 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A193988.P5044965455395314895

/-! ## A193988.P646012318387428258

`∑[A035218(A103221(A209725(n+1)))]`
-/

namespace A193988.P646012318387428258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A103221 (A209725 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193988.P646012318387428258

/-! ## A193988.P1645709269450677991

`lt[A369025(A116528(n)), A340801(n+1)]`
-/

namespace A193988.P1645709269450677991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369025 (A116528 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193988.P1645709269450677991

/-! ## A193988.P3550073933994356520

`lt[A316400(A000593(n+4)), A123756(n)]`
-/

namespace A193988.P3550073933994356520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316400 (A000593 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193988.P3550073933994356520

/-! ## A193988.P2833157947418887812

`lt[A001055(A332638(n)), gcd(n, n%2)+1]`
-/

namespace A193988.P2833157947418887812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A332638 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193988.P2833157947418887812

/-!
# A193989: Numbers n such that sigma_3(n) > sigma_3(k) for all k < n.

The programs for A193989, there is no canonical definition to state claims against.
-/

/-! ## A193989.P10642089390690004815

`lt[A063726(n), A008619(A053767(n))]`
-/

namespace A193989.P10642089390690004815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A053767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193989.P10642089390690004815

/-! ## A193989.P1204381385303257375

`lt[A307649(n+1), A230843(A000969(n))]`
-/

namespace A193989.P1204381385303257375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (A000969 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193989.P1204381385303257375

/-! ## A193989.P11219785838922235187

`∑[A048766(A340792(n+1)-A055086(n))]`
-/

namespace A193989.P11219785838922235187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A340792 (n + 1) - A055086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193989.P11219785838922235187

/-! ## A193989.P10973583655123323543

`lt[A046782(n+1), n]`
-/

namespace A193989.P10973583655123323543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193989.P10973583655123323543

/-! ## A193989.P1832242897850731091

`lt[A054899(2*(n+1))², A317311(n)]`
-/

namespace A193989.P1832242897850731091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193989.P1832242897850731091

/-! ## A193989.P18043708734034963199

`lt[A272313(n+1), A048161(2*n+5)]+1`
-/

namespace A193989.P18043708734034963199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193989.P18043708734034963199

/-! ## A193989.P1069146544601005982

`∑[A048766(A002024(A110029(n+1)))]`
-/

namespace A193989.P1069146544601005982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A002024 (A110029 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193989.P1069146544601005982

/-! ## A193989.P4011802407177038372

`lt[A210485(A035457(n)), A004526(n)]-1`
-/

namespace A193989.P4011802407177038372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A035457 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A193989.P4011802407177038372

/-! ## A193989.P8215019944708433722

`lt[A210485(A035457(n+1)), A004526(n+1)]`
-/

namespace A193989.P8215019944708433722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A035457 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193989.P8215019944708433722

/-!
# A193990: Number of distinct prime factors <= n of binomial(2*n,n).

The programs for A193990, the canonical program `A193990.P7884612137994625744` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193990 has offset 1).

The definition of A193990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193990.P7884612137994625744

`A067434(n+1)-A108954(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A193990

/-- `A067434(n+1)-A108954(n+1)` -/
def P7884612137994625744.Spec : Prop :=
  ∀ n, P7884612137994625744.a n = A193990 (n + 1)

theorem P7884612137994625744.correct : P7884612137994625744.Spec := by
  intro n
  simp only [A193990, Nat.add_sub_cancel]

end A193990

/-! ## A193990.P1279107436690206147

`(A067434(n+1)-A060715(n+1))%(n+1)`
-/

namespace A193990.P1279107436690206147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067434 (n + 1) - A060715 (n + 1)) (n + 1 : ℤ)

end

end A193990.P1279107436690206147

namespace A193990

/-- `(A067434(n+1)-A060715(n+1))%(n+1)` -/
def P1279107436690206147.Spec : Prop :=
  ∀ n, P1279107436690206147.a n = A193990 (n + 1)

end A193990

/-! ## A193990.P16768580402328402296

`A067434(n+1)-A028310(A060715(n+1))`
-/

namespace A193990.P16768580402328402296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A028310 (A060715 (n + 1)).toNat

end

end A193990.P16768580402328402296

namespace A193990

/-- `A067434(n+1)-A028310(A060715(n+1))` -/
def P16768580402328402296.Spec : Prop :=
  ∀ n, P16768580402328402296.a n = A193990 (n + 1)

end A193990

/-! ## A193990.P3117634078080279348

`A067434(n+1)-(A060715(n+1)+A000007(n))`
-/

namespace A193990.P3117634078080279348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - (A060715 (n + 1) + A000007 n)

end

end A193990.P3117634078080279348

namespace A193990

/-- `A067434(n+1)-(A060715(n+1)+A000007(n))` -/
def P3117634078080279348.Spec : Prop :=
  ∀ n, P3117634078080279348.a n = A193990 (n + 1)

end A193990

/-! ## A193990.P13514116355129715272

`A000720(n+1)-A036541(2*(n+1))`
-/

namespace A193990.P13514116355129715272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A036541 (2 * (n + 1))

end

end A193990.P13514116355129715272

namespace A193990

/-- `A000720(n+1)-A036541(2*(n+1))` -/
def P13514116355129715272.Spec : Prop :=
  ∀ n, P13514116355129715272.a n = A193990 (n + 1)

end A193990

/-! ## A193990.P4922385944886208531

`A034973(2*(n+1))-A108954(n+1)`
-/

namespace A193990.P4922385944886208531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (2 * (n + 1)) - A108954 (n + 1)

end

end A193990.P4922385944886208531

namespace A193990

/-- `A034973(2*(n+1))-A108954(n+1)` -/
def P4922385944886208531.Spec : Prop :=
  ∀ n, P4922385944886208531.a n = A193990 (n + 1)

end A193990

/-! ## A193990.P9243873507040350777

`A071854(n+1)+A060208(n+1)`
-/

namespace A193990.P9243873507040350777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071854 (n + 1) + A060208 (n + 1)

end

end A193990.P9243873507040350777

namespace A193990

/-- `A071854(n+1)+A060208(n+1)` -/
def P9243873507040350777.Spec : Prop :=
  ∀ n, P9243873507040350777.a n = A193990 (n + 1)

theorem P9243873507040350777.correct : P9243873507040350777.Spec := by
  intro n
  simp only [A193990, Nat.add_sub_cancel, A193990.P9243873507040350777.a, A193990.P7884612137994625744.a, A060208, A060208.P7183975736576041079.a, A067434, A067434.P13929793644750032362.a, A071854, A071854.P11151984717235714317.a, A108954, A108954.P13763132661793771575.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A056173, A056173.P15098762460861555107.a, A056175, A056175.P9200230780470454519.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001405, A001405.P5205018418992951678.a, A056057, A056057.P2194597549001614042.a, A056169, A056169.P17430176249366647977.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193990

/-! ## A193990.P8151254132404836311

`A000720(n+1)-A147844(n+1)`
-/

namespace A193990.P8151254132404836311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A147844 (n + 1)

end

end A193990.P8151254132404836311

namespace A193990

/-- `A000720(n+1)-A147844(n+1)` -/
def P8151254132404836311.Spec : Prop :=
  ∀ n, P8151254132404836311.a n = A193990 (n + 1)

end A193990

/-! ## A193990.P13648238632983285356

`∑[A010051(n+1)]-A147844(n+1)`
-/

namespace A193990.P13648238632983285356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A147844 (n + 1)

end

end A193990.P13648238632983285356

namespace A193990

/-- `∑[A010051(n+1)]-A147844(n+1)` -/
def P13648238632983285356.Spec : Prop :=
  ∀ n, P13648238632983285356.a n = A193990 (n + 1)

end A193990

/-! ## A193990.P16488512657505597081

`A099801(n+1)-(A147844(n+1)+A035250(n+2))`
-/

namespace A193990.P16488512657505597081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (n + 1) - (A147844 (n + 1) + A035250 (n + 2))

end

end A193990.P16488512657505597081

namespace A193990

/-- `A099801(n+1)-(A147844(n+1)+A035250(n+2))` -/
def P16488512657505597081.Spec : Prop :=
  ∀ n, P16488512657505597081.a n = A193990 (n + 1)

end A193990

/-!
# A193992: Position where 10^n-1 occurs in the Kaprekar sequence A006886.

The programs for A193992, there is no canonical definition to state claims against.
-/

/-! ## A193992.P12492576522367113449

`∑[A194232(1+n)]`
-/

namespace A193992.P12492576522367113449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194232 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193992.P12492576522367113449

/-! ## A193992.P18339021095451610395

`A194232(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A193992.P18339021095451610395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A194232 (n + 1) + a (n - 1)

end

end A193992.P18339021095451610395

/-! ## A193992.P14902284289474561845

`round(A194232(n+1)+a(A023443(n)))` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A193992.P14902284289474561845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A194232 (n + 1) + a (A023443 n).toNat

end

end A193992.P14902284289474561845

/-! ## A193992.P2092773806740943146

`A194232(n+1)%A000079(n+2)+a(A023443(n))` with `a(0)=2`
-/

namespace A193992.P2092773806740943146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A194232 (n + 1)) (A000079 (n + 2)) + a (A023443 n).toNat

end

end A193992.P2092773806740943146

/-! ## A193992.P6818104811101962126

`(A194232(n+1)+a(A023443(n)))%A125341(n)` with `a(0)=2`
-/

namespace A193992.P6818104811101962126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A194232 (n + 1) + a (A023443 n).toNat) (A125341 n)

end

end A193992.P6818104811101962126

/-!
# A193994: Number of zeros in the period of Fibonacci 5-step sequence A001591 mod n.

The programs for A193994, there is no canonical definition to state claims against.
-/

/-! ## A193994.P6206622591906806253

`A083762(A149372(n+1))`
-/

namespace A193994.P6206622591906806253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083762 (A149372 (n + 1)).toNat

end

end A193994.P6206622591906806253

/-!
# A193995: a(n) = number of (distinct) terms required to determine whether n is a happy number or not (A007770 or A031177).

The programs for A193995, there is no canonical definition to state claims against.
-/

/-! ## A193995.P8698380128898919289

`A099645(n+1)+A031176(n+1)`
-/

namespace A193995.P8698380128898919289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (n + 1) + A031176 (n + 1)

end

end A193995.P8698380128898919289

/-! ## A193995.P13559497316036595021

`A031176(A103369(n+1))+A000401(A364682(n+1))`
-/

namespace A193995.P13559497316036595021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (A103369 (n + 1)).toNat + A000401 (A364682 (n + 1)).toNat

end

end A193995.P13559497316036595021

/-! ## A193995.P7127392087791778821

`A031176(n+1)+A364682(n+1)-1`
-/

namespace A193995.P7127392087791778821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n + 1) + (A364682 (n + 1) - 1)

end

end A193995.P7127392087791778821

/-! ## A193995.P15049206108577762034

`A031176(n+1)+A000401(A364682(n+1))`
-/

namespace A193995.P15049206108577762034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n + 1) + A000401 (A364682 (n + 1)).toNat

end

end A193995.P15049206108577762034

/-! ## A193995.P3561589374642278766

`A031176(n+1)+A003621(n+1)-A003621(A103369(n+1))`
-/

namespace A193995.P3561589374642278766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n + 1) + (A003621 (n + 1) - A003621 (A103369 (n + 1)).toNat)

end

end A193995.P3561589374642278766

/-! ## A193995.P3378082707932296502

`A031176(n+1)+A300081(n+1)-A300081(A103369(n+1))`
-/

namespace A193995.P3378082707932296502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n + 1) + (A300081 (n + 1) - A300081 (A103369 (n + 1)).toNat)

end

end A193995.P3378082707932296502

/-!
# A193996: Numbers that require exactly 8 iterations to determine that they are happy or not (A007770 and A031177).

The programs for A193996, there is no canonical definition to state claims against.
-/

/-! ## A193996.P8666668212767932812

`A039943(2+n)`
-/

namespace A193996.P8666668212767932812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039943 (2 + n)

end

end A193996.P8666668212767932812

/-! ## A193996.P5683885373942669129

`record[A039943(abs(2-n))]`
-/

namespace A193996.P5683885373942669129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039943 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193996.P5683885373942669129

/-! ## A193996.P6547865911546254508

`eq[1, A364682(n+2)]+2`
-/

namespace A193996.P6547865911546254508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364682 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A193996.P6547865911546254508

/-! ## A193996.P17153517880490282996

`lt[A099645(n+2), 1]+2`
-/

namespace A193996.P17153517880490282996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A193996.P17153517880490282996

/-!
# A193997: Triangular array: the fission of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers) and q(n,x)=(x+1)^n.

The programs for A193997, there is no canonical definition to state claims against.
-/

/-! ## A193997.P868189101192613182

`A193998(∑[2*n]%comp[∑[n]])`
-/

namespace A193997.P868189101192613182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193998 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193997.P868189101192613182

/-!
# A193998: Mirror of the triangle A193997.

The programs for A193998, there is no canonical definition to state claims against.
-/

/-! ## A193998.P12533050757750708272

`A193997(∑[2*n]%comp[∑[n]])`
-/

namespace A193998.P12533050757750708272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193997 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193998.P12533050757750708272

/-!
# A193999: Mirror of the triangle A094585.

The programs for A193999, the canonical program `A193999.P7124452469695763199` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193999 has offset 1).

The definition of A193999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193999.P7124452469695763199

`A000045(row(n)+4)-A000045(col(n)+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A193999

/-- `A000045(row(n)+4)-A000045(col(n)+3)` -/
def P7124452469695763199.Spec : Prop :=
  ∀ n, P7124452469695763199.a n = A193999 (n + 1)

theorem P7124452469695763199.correct : P7124452469695763199.Spec := by
  intro n
  simp only [A193999, Nat.add_sub_cancel]

end A193999

/-! ## A193999.P7064276451838675514

`A108035(1+n)+T(n-1,k)` with `a(0)=1`
-/

namespace A193999.P7064276451838675514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108035 (1 + n) + SequenceMachineLib.triUp a n

end

end A193999.P7064276451838675514

namespace A193999

/-- `A108035(1+n)+T(n-1,k)` -/
def P7064276451838675514.Spec : Prop :=
  ∀ n, P7064276451838675514.a n = A193999 (n + 1)

end A193999

/-! ## A193999.P4830309336824214433

`A000045(row(n)+2)+T(n-1,k)` with `a(0)=1`
-/

namespace A193999.P4830309336824214433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (SequenceMachineLib.triRow n + 2) + SequenceMachineLib.triUp a n

end

end A193999.P4830309336824214433

namespace A193999

/-- `A000045(row(n)+2)+T(n-1,k)` -/
def P4830309336824214433.Spec : Prop :=
  ∀ n, P4830309336824214433.a n = A193999 (n + 1)

end A193999

/-! ## A193999.P17079692999683052116

`A094585(A038722(1+n))`
-/

namespace A193999.P17079692999683052116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (A038722 (1 + n)).toNat

end

end A193999.P17079692999683052116

namespace A193999

/-- `A094585(A038722(1+n))` -/
def P17079692999683052116.Spec : Prop :=
  ∀ n, P17079692999683052116.a n = A193999 (n + 1)

end A193999

/-! ## A193999.P12193006211163524313

`A209745(n+2+row(n)-col(n))+T(n-1,k)` with `a(0)=1`
-/

namespace A193999.P12193006211163524313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A209745 ((n : ℤ) + (2 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)))).toNat + SequenceMachineLib.triUp a n

end

end A193999.P12193006211163524313

namespace A193999

/-- `A209745(n+2+row(n)-col(n))+T(n-1,k)` -/
def P12193006211163524313.Spec : Prop :=
  ∀ n, P12193006211163524313.a n = A193999 (n + 1)

end A193999

/-! ## A193999.P10207296664228613313

`A143061(A099375(n)+1+n)`
-/

namespace A193999.P10207296664228613313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A099375 n + 1 + (n : ℤ)).toNat

end

end A193999.P10207296664228613313

namespace A193999

/-- `A143061(A099375(n)+1+n)` -/
def P10207296664228613313.Spec : Prop :=
  ∀ n, P10207296664228613313.a n = A193999 (n + 1)

end A193999

/-! ## A193999.P10477953241739628966

`A193922(A014132(n+1))+A193922(n)-A000007(n)`
-/

namespace A193999.P10477953241739628966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (A014132 (n + 1)).toNat + (A193922 n - A000007 n)

end

end A193999.P10477953241739628966

namespace A193999

/-- `A193922(A014132(n+1))+A193922(n)-A000007(n)` -/
def P10477953241739628966.Spec : Prop :=
  ∀ n, P10477953241739628966.a n = A193999 (n + 1)

end A193999

/-! ## A193999.P17364114856639014991

`A204922(A014132(n+1))-A104763(n+1)`
-/

namespace A193999.P17364114856639014991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A014132 (n + 1)).toNat - A104763 (n + 1)

end

end A193999.P17364114856639014991

namespace A193999

/-- `A204922(A014132(n+1))-A104763(n+1)` -/
def P17364114856639014991.Spec : Prop :=
  ∀ n, P17364114856639014991.a n = A193999 (n + 1)

end A193999

/-! ## A193999.P18129441706009753523

`A204922(comp[∑[n]]+1)`
-/

namespace A193999.P18129441706009753523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A193999.P18129441706009753523

namespace A193999

/-- `A204922(comp[∑[n]]+1)` -/
def P18129441706009753523.Spec : Prop :=
  ∀ n, P18129441706009753523.a n = A193999 (n + 1)

end A193999

/-! ## A193999.P1921138870939480379

`A193922(eq[0, A103452(n)]+1)`
-/

namespace A193999.P1921138870939480379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A193999.P1921138870939480379

namespace A193999

/-- `A193922(eq[0, A103452(n)]+1)` -/
def P1921138870939480379.Spec : Prop :=
  ∀ n, P1921138870939480379.a n = A193999 (n + 1)

end A193999

/-! ## A193999.P14509085968256122034

`A204922(n+1)+A005206(A204922(n+1)-A010054(n))`
-/

namespace A193999.P14509085968256122034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1) + A005206 (A204922 (n + 1) - A010054 n).toNat

end

end A193999.P14509085968256122034

namespace A193999

/-- `A204922(n+1)+A005206(A204922(n+1)-A010054(n))` -/
def P14509085968256122034.Spec : Prop :=
  ∀ n, P14509085968256122034.a n = A193999 (n + 1)

end A193999

