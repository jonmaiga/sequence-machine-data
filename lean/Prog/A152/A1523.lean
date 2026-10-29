import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A152300: A symmetrical triangle of coefficients of polynomials: q(x,n)=((1 - x)^(2*n)/(n*x))*Sum[Binomial[k + n - 1, k]*k^n*x^k, {k, 0, Infinity}]; p(x,n)=q(x,n)+x^(n-1)*q(1/x,n); t(n,m)=coefficients(p(x,n)).

The programs for A152300, there is no canonical definition to state claims against.
-/

/-! ## A152300.P5317081964953877523

`A152260(A038722(n+1))+A152260(n+1)`
-/

namespace A152300.P5317081964953877523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152260 (A038722 (n + 1)).toNat + A152260 (n + 1)

end

end A152300.P5317081964953877523

/-! ## A152300.P16691966130317826264

`A152260(n+1)+A152260(A061579(n)+1)`
-/

namespace A152300.P16691966130317826264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152260 (n + 1) + A152260 (A061579 n + 1).toNat

end

end A152300.P16691966130317826264

/-! ## A152300.P8771441629099742923

`A152260(A093995(n+1)-n)+A152260(n+1)`
-/

namespace A152300.P8771441629099742923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152260 (A093995 (n + 1) - (n : ℤ)).toNat + A152260 (n + 1)

end

end A152300.P8771441629099742923

/-! ## A152300.P1856744690345492324

`A152260(A002024(n+1)²-n)+A152260(n+1)`
-/

namespace A152300.P1856744690345492324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152260 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat + A152260 (n + 1)

end

end A152300.P1856744690345492324

/-!
# A152301: a(3) = 1; otherwise a(n) = A152389(n).

The programs for A152301, there is no canonical definition to state claims against.
-/

/-! ## A152301.P6848814804134684067

`A098720(n+1)+1`
-/

namespace A152301.P6848814804134684067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098720 (n + 1) + 1

end

end A152301.P6848814804134684067

/-! ## A152301.P5403097240652388081

`A152389(n+1)+char[2]`
-/

namespace A152301.P5403097240652388081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152301.P5403097240652388081

/-! ## A152301.P17708943084938423527

`A152389(gcd(n+1, C(2, n)))`
-/

namespace A152301.P17708943084938423527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (Nat.gcd (n + 1) (Nat.choose 2 n))

end

end A152301.P17708943084938423527

/-! ## A152301.P13988621734758484165

`A152389(abs(n*C(2, n)%2-n)+1)`
-/

namespace A152301.P13988621734758484165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (|((n * (Nat.choose 2 n % 2) : ℕ) : ℤ) - (n : ℤ)| + 1).toNat

end

end A152301.P13988621734758484165

/-! ## A152301.P4598882243601031235

`abs(A152389(abs(C(2, n)-n)+1)-1)+1`
-/

namespace A152301.P4598882243601031235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A152389 (|(Nat.choose 2 n : ℤ) - (n : ℤ)| + 1).toNat - 1)| + 1

end

end A152301.P4598882243601031235

/-! ## A152301.P16962022540593680998

`A028310(A152389(n+1))`
-/

namespace A152301.P16962022540593680998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A152389 (n + 1)).toNat

end

end A152301.P16962022540593680998

/-! ## A152301.P9212004304122573096

`A152389(A171526(n+1))`
-/

namespace A152301.P9212004304122573096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (A171526 (n + 1)).toNat

end

end A152301.P9212004304122573096

/-! ## A152301.P16062678845608915917

`A152389(gcd(n+1, A055672(n)))`
-/

namespace A152301.P16062678845608915917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (Int.gcd (n + 1 : ℤ) (A055672 n))

end

end A152301.P16062678845608915917

/-! ## A152301.P9241190271214340829

`∏{d}[A152389(n+1), A014963(#)]`
-/

namespace A152301.P9241190271214340829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A152301.P9241190271214340829

/-! ## A152301.P744653735817939952

`A152389((n+1)%(A152389(n+1)²+2))`
-/

namespace A152301.P744653735817939952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 (Int.tmod (n + 1 : ℤ) (A152389 (n + 1) ^ 2 + 2)).toNat

end

end A152301.P744653735817939952

/-!
# A152303: a(n) = b(n) mod 10, where b(n) = b(n-1) + b(n-2) + floor(b(n-2)/10), b(0) = b(1) = 1.

The programs for A152303, there is no canonical definition to state claims against.
-/

/-! ## A152303.P8147293291074589139

`A257639(A052945(n))%10`
-/

namespace A152303.P8147293291074589139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257639 (A052945 n).toNat) 10

end

end A152303.P8147293291074589139

/-! ## A152303.P14765791099073829795

`A055086(A088456(n))%11`
-/

namespace A152303.P14765791099073829795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055086 (A088456 n).toNat) 11

end

end A152303.P14765791099073829795

/-!
# A152308: Primes p such that the multiplicative order of 2 modulo p is (p-1)/8.

The programs for A152308, there is no canonical definition to state claims against.
-/

/-! ## A152308.P16769985830001829895

`A065091(eq[8, A001917(n+2)]+1)`
-/

namespace A152308.P16769985830001829895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A152308.P16769985830001829895

/-! ## A152308.P1525413642869536348

`A000040(eq[8, A001917(n+2)]+2)`
-/

namespace A152308.P1525413642869536348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A152308.P1525413642869536348

/-! ## A152308.P10595277804237218246

`A100484(eq[8, A001917(n+2)]+2)/2`
-/

namespace A152308.P10595277804237218246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) : ℚ) / 2

end

end A152308.P10595277804237218246

/-!
# A152310: Primes p such that the multiplicative order of 2 modulo p is (p-1)/10.

The programs for A152310, there is no canonical definition to state claims against.
-/

/-! ## A152310.P8964707610265502251

`A065091(eq[10, A001917(n+2)]+1)`
-/

namespace A152310.P8964707610265502251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A152310.P8964707610265502251

/-! ## A152310.P14481396692313107734

`A000040(eq[10, A001917(n+2)]+2)`
-/

namespace A152310.P14481396692313107734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A152310.P14481396692313107734

/-! ## A152310.P4281466913865922712

`A100484(eq[10, A001917(n+2)]+2)/2`
-/

namespace A152310.P4281466913865922712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) : ℚ) / 2

end

end A152310.P4281466913865922712

/-!
# A152312: Primes without odd prime digits.

The programs for A152312, there is no canonical definition to state claims against.
-/

/-! ## A152312.P1278337114978868095

`∪[A034844(n+1), A179024(n+1)]`
-/

namespace A152312.P1278337114978868095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P1278337114978868095

/-! ## A152312.P8253005412096561820

`∩[A038615(n+1), A380906(n+1)]`
-/

namespace A152312.P8253005412096561820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P8253005412096561820

/-! ## A152312.P12832784817427175694

`∩[A380906(n+1), A386342(n+1)]`
-/

namespace A152312.P12832784817427175694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P12832784817427175694

/-! ## A152312.P5162739642142773520

`∩[A038611(n+1), A386351(n+1)]`
-/

namespace A152312.P5162739642142773520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P5162739642142773520

/-! ## A152312.P4205340080786983348

`∩[A380906(n+1), A386351(n+1)]`
-/

namespace A152312.P4205340080786983348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P4205340080786983348

/-! ## A152312.P14845926392691168328

`∩[A386342(n+1), A386351(n+1)]`
-/

namespace A152312.P14845926392691168328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P14845926392691168328

/-! ## A152312.P7991515511582109249

`∩[A038613(n+1), A386342(n+1)]`
-/

namespace A152312.P7991515511582109249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P7991515511582109249

/-! ## A152312.P17334654791735957529

`∩[A039138(n+1), A380906(n+1)]`
-/

namespace A152312.P17334654791735957529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P17334654791735957529

/-! ## A152312.P98524144404731664

`∩[A039136(n+1), A386342(n+1)]`
-/

namespace A152312.P98524144404731664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P98524144404731664

/-! ## A152312.P5187973171585005777

`∩[A039136(n+1), A386351(n+1)]`
-/

namespace A152312.P5187973171585005777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P5187973171585005777

/-! ## A152312.P18059457168563335941

`∩[A039138(n+1), A386351(n+1)]`
-/

namespace A152312.P18059457168563335941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P18059457168563335941

/-! ## A152312.P12083370224584518260

`∩[A039147(n+1), A380906(n+1)]`
-/

namespace A152312.P12083370224584518260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P12083370224584518260

/-! ## A152312.P6460195153787289496

`∩[A039147(n+1), A386342(n+1)]`
-/

namespace A152312.P6460195153787289496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P6460195153787289496

/-! ## A152312.P16700378133619530160

`∩[A376047(n+1), A380906(n+1)]`
-/

namespace A152312.P16700378133619530160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P16700378133619530160

/-! ## A152312.P13212849689273629086

`∩[A052405(n+1), A386351(n+1)]`
-/

namespace A152312.P13212849689273629086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P13212849689273629086

/-! ## A152312.P17872245939281297221

`∩[A052413(n+1), A386342(n+1)]`
-/

namespace A152312.P17872245939281297221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P17872245939281297221

/-! ## A152312.P10100932872647728983

`∩[A052419(n+1), A380906(n+1)]`
-/

namespace A152312.P10100932872647728983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152312.P10100932872647728983

/-!
# A152313: Primes without 0's or primes in their decimal expansion.

The programs for A152313, the canonical program `A152313.P10045116747263746088` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152313 has offset 1).

The definition of A152313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152313.P10045116747263746088

`p?[A202268(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A152313

/-- `p?[A202268(n+1)]` -/
def P10045116747263746088.Spec : Prop :=
  ∀ n, P10045116747263746088.a n = A152313 (n + 1)

theorem P10045116747263746088.correct : P10045116747263746088.Spec := by
  intro n
  simp only [A152313, Nat.add_sub_cancel]

end A152313

/-! ## A152313.P124011644094950987

`p?[record[A202268(A324347(n))]]`
-/

namespace A152313.P124011644094950987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152313.P124011644094950987

namespace A152313

/-- `p?[record[A202268(A324347(n))]]` -/
def P124011644094950987.Spec : Prop :=
  ∀ n, P124011644094950987.a n = A152313 (n + 1)

end A152313

/-! ## A152313.P17010647108042468552

`∩[A034844(n+1), A202268(n+1)]`
-/

namespace A152313.P17010647108042468552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P17010647108042468552

namespace A152313

/-- `∩[A034844(n+1), A202268(n+1)]` -/
def P17010647108042468552.Spec : Prop :=
  ∀ n, (P17010647108042468552.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P7883556965830505

`∩[A038604(n+1), A202268(n+1)]`
-/

namespace A152313.P7883556965830505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P7883556965830505

namespace A152313

/-- `∩[A038604(n+1), A202268(n+1)]` -/
def P7883556965830505.Spec : Prop :=
  ∀ n, (P7883556965830505.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P10975266655091952359

`∩[A038611(n+1), A202268(n+1)]`
-/

namespace A152313.P10975266655091952359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P10975266655091952359

namespace A152313

/-- `∩[A038611(n+1), A202268(n+1)]` -/
def P10975266655091952359.Spec : Prop :=
  ∀ n, (P10975266655091952359.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P17653414581337141243

`∩[A152312(n+1), A202268(n+1)]`
-/

namespace A152313.P17653414581337141243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P17653414581337141243

namespace A152313

/-- `∩[A152312(n+1), A202268(n+1)]` -/
def P17653414581337141243.Spec : Prop :=
  ∀ n, (P17653414581337141243.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P13328013898740480548

`∩[A202268(n+1), A329760(n+1)]`
-/

namespace A152313.P13328013898740480548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P13328013898740480548

namespace A152313

/-- `∩[A202268(n+1), A329760(n+1)]` -/
def P13328013898740480548.Spec : Prop :=
  ∀ n, (P13328013898740480548.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P2335880049219274323

`∩[A202268(n+1), A342961(n+1)]`
-/

namespace A152313.P2335880049219274323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P2335880049219274323

namespace A152313

/-- `∩[A202268(n+1), A342961(n+1)]` -/
def P2335880049219274323.Spec : Prop :=
  ∀ n, (P2335880049219274323.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P5325394926931891801

`∩[A038615(n+1), A202268(n+1)]`
-/

namespace A152313.P5325394926931891801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P5325394926931891801

namespace A152313

/-- `∩[A038615(n+1), A202268(n+1)]` -/
def P5325394926931891801.Spec : Prop :=
  ∀ n, (P5325394926931891801.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P14516113526689495699

`∩[A034844(n+1), A386321(n+1)]`
-/

namespace A152313.P14516113526689495699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P14516113526689495699

namespace A152313

/-- `∩[A034844(n+1), A386321(n+1)]` -/
def P14516113526689495699.Spec : Prop :=
  ∀ n, (P14516113526689495699.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P17256274254396016309

`∩[A038872(n+1), A202268(n+1)]`
-/

namespace A152313.P17256274254396016309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P17256274254396016309

namespace A152313

/-- `∩[A038872(n+1), A202268(n+1)]` -/
def P17256274254396016309.Spec : Prop :=
  ∀ n, (P17256274254396016309.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P10722168864896117710

`∩[A045468(n+1), A202268(n+1)]`
-/

namespace A152313.P10722168864896117710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P10722168864896117710

namespace A152313

/-- `∩[A045468(n+1), A202268(n+1)]` -/
def P10722168864896117710.Spec : Prop :=
  ∀ n, (P10722168864896117710.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P4792950168156920904

`∩[A064739(n+1), A202268(n+1)]`
-/

namespace A152313.P4792950168156920904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P4792950168156920904

namespace A152313

/-- `∩[A064739(n+1), A202268(n+1)]` -/
def P4792950168156920904.Spec : Prop :=
  ∀ n, (P4792950168156920904.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P7803768645487277264

`∩[A034844(n+1), A386320(n+1)]`
-/

namespace A152313.P7803768645487277264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P7803768645487277264

namespace A152313

/-- `∩[A034844(n+1), A386320(n+1)]` -/
def P7803768645487277264.Spec : Prop :=
  ∀ n, (P7803768645487277264.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P9151515810647642743

`∩[A034844(n+1), A386323(n+1)]`
-/

namespace A152313.P9151515810647642743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P9151515810647642743

namespace A152313

/-- `∩[A034844(n+1), A386323(n+1)]` -/
def P9151515810647642743.Spec : Prop :=
  ∀ n, (P9151515810647642743.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P10605013837011538197

`∩[A034844(n+1), A386325(n+1)]`
-/

namespace A152313.P10605013837011538197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P10605013837011538197

namespace A152313

/-- `∩[A034844(n+1), A386325(n+1)]` -/
def P10605013837011538197.Spec : Prop :=
  ∀ n, (P10605013837011538197.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P8647344228637486862

`∩[A152312(n+1), A386320(n+1)]`
-/

namespace A152313.P8647344228637486862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P8647344228637486862

namespace A152313

/-- `∩[A152312(n+1), A386320(n+1)]` -/
def P8647344228637486862.Spec : Prop :=
  ∀ n, (P8647344228637486862.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P6683709957222504872

`∩[A081027(n+1), A202268(n+1)]`
-/

namespace A152313.P6683709957222504872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P6683709957222504872

namespace A152313

/-- `∩[A081027(n+1), A202268(n+1)]` -/
def P6683709957222504872.Spec : Prop :=
  ∀ n, (P6683709957222504872.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P11088882348835201163

`∩[A202268(n+1), A328896(n+1)]`
-/

namespace A152313.P11088882348835201163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P11088882348835201163

namespace A152313

/-- `∩[A202268(n+1), A328896(n+1)]` -/
def P11088882348835201163.Spec : Prop :=
  ∀ n, (P11088882348835201163.a n : ℤ) = A152313 (n + 1)

end A152313

/-! ## A152313.P17830179940288959097

`∩[A154386(n+1), A202268(n+1)]`
-/

namespace A152313.P17830179940288959097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152313.P17830179940288959097

namespace A152313

/-- `∩[A154386(n+1), A202268(n+1)]` -/
def P17830179940288959097.Spec : Prop :=
  ∀ n, (P17830179940288959097.a n : ℤ) = A152313 (n + 1)

end A152313

/-!
# A152314: Number of permutations of 0..n-1 with all sums of 3 adjacent terms unique.

The programs for A152314, there is no canonical definition to state claims against.
-/

/-! ## A152314.P11932882936543374634

`A245092(A152331(n+1))`
-/

namespace A152314.P11932882936543374634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A152331 (n + 1)).toNat

end

end A152314.P11932882936543374634

/-! ## A152314.P11836531568889570416

`A152331(∑[A102480(n)²])`
-/

namespace A152314.P11836531568889570416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102480 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152314.P11836531568889570416

/-! ## A152314.P8165699782681551439

`A152331(∑[A146628(n+1)])`
-/

namespace A152314.P8165699782681551439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152314.P8165699782681551439

/-! ## A152314.P4299820097956098053

`A152331(A102480(n)²+n)`
-/

namespace A152314.P4299820097956098053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152331 (A102480 n ^ 2 + (n : ℤ)).toNat

end

end A152314.P4299820097956098053

/-!
# A152315: Number of permutations of floor(i*3/2), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152315, there is no canonical definition to state claims against.
-/

/-! ## A152315.P10517482492145653274

`A152319(∑[and(n, n-2)!])`
-/

namespace A152315.P10517482492145653274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152319 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152315.P10517482492145653274

/-! ## A152315.P15018120760399564562

`A152317(A032549(n+1))`
-/

namespace A152315.P15018120760399564562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152317 (A032549 (n + 1)).toNat

end

end A152315.P15018120760399564562

/-!
# A152316: Number of permutations of floor(i*4/3), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152316, there is no canonical definition to state claims against.
-/

/-! ## A152316.P17775553002396870735

`∑[A003991(A167137(n))]`
-/

namespace A152316.P17775553002396870735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A167137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152316.P17775553002396870735

/-! ## A152316.P15363597598826926523

`A187185(A150975(n+1))`
-/

namespace A152316.P15363597598826926523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A150975 (n + 1)).toNat

end

end A152316.P15363597598826926523

/-!
# A152318: Number of permutations of floor(i*5/3), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152318, there is no canonical definition to state claims against.
-/

/-! ## A152318.P6179053850872153855

`A152325(∑[and(n, n-2)!])`
-/

namespace A152318.P6179053850872153855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152318.P6179053850872153855

/-! ## A152318.P18370265842320801602

`A152325(∑[A342074(n)+1])`
-/

namespace A152318.P18370265842320801602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342074 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152325 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152318.P18370265842320801602

/-!
# A152319: Number of permutations of floor(i*5/4), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152319, there is no canonical definition to state claims against.
-/

/-! ## A152319.P3978998481074540886

`A152330(lcm(n+1, (n+1)/∏{p}[n+1, #]*∏{e}[n+1, #]))`
-/

namespace A152319.P3978998481074540886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152330 (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ))))

end

end A152319.P3978998481074540886

/-! ## A152319.P17147817752949992106

`A028310(A152330(n+1))`
-/

namespace A152319.P17147817752949992106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A152330 (n + 1)).toNat

end

end A152319.P17147817752949992106

/-! ## A152319.P16971469855044607404

`A023443(A152330(n+1)+1)`
-/

namespace A152319.P16971469855044607404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A152330 (n + 1) + 1).toNat

end

end A152319.P16971469855044607404

/-!
# A152320: Number of permutations of floor(i*6/5), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152320, there is no canonical definition to state claims against.
-/

/-! ## A152320.P2399885072486972080

`record[A348045(A329675(n)²)]`
-/

namespace A152320.P2399885072486972080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (A329675 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152320.P2399885072486972080

/-! ## A152320.P16851313429618471470

`A130916(A130907(n)-A130902(n))`
-/

namespace A152320.P16851313429618471470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A130907 n - A130902 n).toNat

end

end A152320.P16851313429618471470

/-!
# A152321: Number of permutations of floor(i*7/3), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152321, there is no canonical definition to state claims against.
-/

/-! ## A152321.P13621634760737665831

`A028310(or(A152317(n+1), A152319(n+1)))`
-/

namespace A152321.P13621634760737665831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A152317 (n + 1)) (A152319 (n + 1))).toNat

end

end A152321.P13621634760737665831

/-! ## A152321.P8337500049610689646

`or(A152317(n+1), A247503(A152330(n+1)))`
-/

namespace A152321.P8337500049610689646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152317 (n + 1)) (A247503 (A152330 (n + 1)).toNat)

end

end A152321.P8337500049610689646

/-! ## A152321.P14524890510749146176

`or(A152317(n+1), A247503(A152340(n+1)))`
-/

namespace A152321.P14524890510749146176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152317 (n + 1)) (A247503 (A152340 (n + 1)).toNat)

end

end A152321.P14524890510749146176

/-!
# A152322: Number of permutations of floor(i*7/4), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152322, there is no canonical definition to state claims against.
-/

/-! ## A152322.P7701197170785269854

`char[4]+A105512(5^n)+1`
-/

namespace A152322.P7701197170785269854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A105512 (5 ^ n) + 1)

end

end A152322.P7701197170785269854

/-! ## A152322.P14419647658184749239

`A349536(A150264(n))`
-/

namespace A152322.P14419647658184749239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A150264 n).toNat

end

end A152322.P14419647658184749239

/-!
# A152323: Number of permutations of floor(i*7/5), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152323, there is no canonical definition to state claims against.
-/

/-! ## A152323.P16295900780054604419

`and(A100793(n)!, A033876(n))`
-/

namespace A152323.P16295900780054604419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A100793 n).toNat : ℤ) (A033876 n)

end

end A152323.P16295900780054604419

/-!
# A152326: Number of permutations of floor(i*8/5), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152326, there is no canonical definition to state claims against.
-/

/-! ## A152326.P1709215894933040779

`A352226((n+1)^n)+1`
-/

namespace A152326.P1709215894933040779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 ((n + 1) ^ n) + 1

end

end A152326.P1709215894933040779

/-! ## A152326.P16262168682197041838

`A144130(A051118(n))+A054441(n)`
-/

namespace A152326.P16262168682197041838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 (A051118 n).toNat + A054441 n

end

end A152326.P16262168682197041838

/-!
# A152329: Number of permutations of floor(i*9/5), i=0..n-1, with all sums of 3 adjacent terms unique.

The programs for A152329, there is no canonical definition to state claims against.
-/

/-! ## A152329.P4255132247566028475

`A028310(or(2^n, A085486(n)))`
-/

namespace A152329.P4255132247566028475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (2 ^ n : ℤ) (A085486 n)).toNat

end

end A152329.P4255132247566028475

/-! ## A152329.P17448849004351280347

`or(A000005(A002110(n)), A085486(n))`
-/

namespace A152329.P17448849004351280347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A002110 n).toNat) (A085486 n)

end

end A152329.P17448849004351280347

/-!
# A152332: Number of permutations of 0..n-1 with all sums of 4 adjacent terms unique.

The programs for A152332, there is no canonical definition to state claims against.
-/

/-! ## A152332.P8931954925950114468

`A152349(n+1)%p?[∑[floor(n²/12)!]]²`
-/

namespace A152332.P8931954925950114468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n ^ 2 : ℚ) / 12⌋.toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152349 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ)

end

end A152332.P8931954925950114468

/-! ## A152332.P12326092450181924837

`A152349(A205406(n+1))`
-/

namespace A152332.P12326092450181924837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152349 (A205406 (n + 1)).toNat

end

end A152332.P12326092450181924837

/-! ## A152332.P9455121392528724101

`A152349(A000005(5^n))`
-/

namespace A152332.P9455121392528724101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152349 (A000005 (5 ^ n)).toNat

end

end A152332.P9455121392528724101

/-! ## A152332.P16730403558356381957

`A152349(A250665(n)+n)`
-/

namespace A152332.P16730403558356381957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152349 (A250665 n + (n : ℤ)).toNat

end

end A152332.P16730403558356381957

/-!
# A152333: Number of permutations of floor(i*3/2), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152333, there is no canonical definition to state claims against.
-/

/-! ## A152333.P8115077010178016569

`A001281(A152339(n+1)+A152334(n+1))`
-/

namespace A152333.P8115077010178016569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152339 (n + 1) + A152334 (n + 1)).toNat

end

end A152333.P8115077010178016569

/-! ## A152333.P6303941685191771674

`A004525(A152339(n+1)+A152334(n+1))`
-/

namespace A152333.P6303941685191771674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A152339 (n + 1) + A152334 (n + 1)).toNat

end

end A152333.P6303941685191771674

/-! ## A152333.P9407867498865769270

`A004526(A152339(n+1)+A152334(n+1))`
-/

namespace A152333.P9407867498865769270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152339 (n + 1) + A152334 (n + 1)).toNat

end

end A152333.P9407867498865769270

/-!
# A152334: Number of permutations of floor(i*4/3), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152334, there is no canonical definition to state claims against.
-/

/-! ## A152334.P16246144083415714762

`A001281(A152344(n+1)+A152332(n+1))`
-/

namespace A152334.P16246144083415714762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152344 (n + 1) + A152332 (n + 1)).toNat

end

end A152334.P16246144083415714762

/-! ## A152334.P4845876464530751768

`A001281(A152345(n+1)+A152344(n+1))`
-/

namespace A152334.P4845876464530751768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152345 (n + 1) + A152344 (n + 1)).toNat

end

end A152334.P4845876464530751768

/-!
# A152335: Number of permutations of floor(i*5/2), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152335, there is no canonical definition to state claims against.
-/

/-! ## A152335.P14485387184388857024

`A004277(A152336(n+1))-A152344(n+1)`
-/

namespace A152335.P14485387184388857024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152336 (n + 1)).toNat - A152344 (n + 1)

end

end A152335.P14485387184388857024

/-! ## A152335.P12981863374100585740

`A028310(and(A152344(n+1), A152346(n+1)))`
-/

namespace A152335.P12981863374100585740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land (A152344 (n + 1)) (A152346 (n + 1))).toNat

end

end A152335.P12981863374100585740

/-! ## A152335.P7115726239539720203

`A245092(and(A152344(n+1), A152346(n+1)))`
-/

namespace A152335.P7115726239539720203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (Int.land (A152344 (n + 1)) (A152346 (n + 1))).toNat

end

end A152335.P7115726239539720203

/-!
# A152336: Number of permutations of floor(i*5/3), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152336, there is no canonical definition to state claims against.
-/

/-! ## A152336.P4397757538676243379

`A001281(A152340(n+1)+A152333(n+1))`
-/

namespace A152336.P4397757538676243379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152340 (n + 1) + A152333 (n + 1)).toNat

end

end A152336.P4397757538676243379

/-! ## A152336.P15604832751751122903

`A001281(A152344(n+1)+A152335(n+1))`
-/

namespace A152336.P15604832751751122903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152344 (n + 1) + A152335 (n + 1)).toNat

end

end A152336.P15604832751751122903

/-! ## A152336.P7878870837825613847

`A004525(A152340(n+1)+A152333(n+1))`
-/

namespace A152336.P7878870837825613847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A152340 (n + 1) + A152333 (n + 1)).toNat

end

end A152336.P7878870837825613847

/-!
# A152337: Number of permutations of floor(i*5/4), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152337, there is no canonical definition to state claims against.
-/

/-! ## A152337.P16993406054311975006

`A152338(n+1)%p?[∑[2^n]]`
-/

namespace A152337.P16993406054311975006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152338 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A152337.P16993406054311975006

/-! ## A152337.P15734828402643836739

`A152348(n+1)%p?[∑[2^n]]`
-/

namespace A152337.P15734828402643836739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152348 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A152337.P15734828402643836739

/-! ## A152337.P2380038444387963743

`A152338(∑[A280443(n)])`
-/

namespace A152337.P2380038444387963743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152338 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152337.P2380038444387963743

/-!
# A152339: Number of permutations of floor(i*7/3), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152339, there is no canonical definition to state claims against.
-/

/-! ## A152339.P17516707801881412607

`A004277(A152333(n+1))-A152334(n+1)`
-/

namespace A152339.P17516707801881412607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152333 (n + 1)).toNat - A152334 (n + 1)

end

end A152339.P17516707801881412607

/-!
# A152340: Number of permutations of floor(i*7/4), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152340, there is no canonical definition to state claims against.
-/

/-! ## A152340.P5073858736268923621

`A004277(A152336(n+1))-A152333(n+1)`
-/

namespace A152340.P5073858736268923621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152336 (n + 1)).toNat - A152333 (n + 1)

end

end A152340.P5073858736268923621

/-!
# A152341: Number of permutations of floor(i*7/5), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152341, there is no canonical definition to state claims against.
-/

/-! ## A152341.P8170529730219441658

`A004277(A152346(n+1))-A152343(n+1)`
-/

namespace A152341.P8170529730219441658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152346 (n + 1)).toNat - A152343 (n + 1)

end

end A152341.P8170529730219441658

/-!
# A152343: Number of permutations of floor(i*8/3), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152343, there is no canonical definition to state claims against.
-/

/-! ## A152343.P3736291503666189906

`A004277(A152346(n+1))-A152341(n+1)`
-/

namespace A152343.P3736291503666189906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152346 (n + 1)).toNat - A152341 (n + 1)

end

end A152343.P3736291503666189906

/-! ## A152343.P11813561716601957425

`or(A152339(n+1), A247503(A152336(n+1)))`
-/

namespace A152343.P11813561716601957425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152339 (n + 1)) (A247503 (A152336 (n + 1)).toNat)

end

end A152343.P11813561716601957425

/-!
# A152344: Number of permutations of floor(i*8/5), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152344, there is no canonical definition to state claims against.
-/

/-! ## A152344.P2660973859835277227

`A004277(A152334(n+1))-A152332(n+1)`
-/

namespace A152344.P2660973859835277227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152334 (n + 1)).toNat - A152332 (n + 1)

end

end A152344.P2660973859835277227

/-! ## A152344.P2303737967999092961

`A004277(A152336(n+1))-A152335(n+1)`
-/

namespace A152344.P2303737967999092961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152336 (n + 1)).toNat - A152335 (n + 1)

end

end A152344.P2303737967999092961

/-! ## A152344.P17362790903082709697

`A004277(A152334(n+1))-A152345(n+1)`
-/

namespace A152344.P17362790903082709697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152334 (n + 1)).toNat - A152345 (n + 1)

end

end A152344.P17362790903082709697

/-!
# A152346: Number of permutations of floor(i*9/4), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152346, there is no canonical definition to state claims against.
-/

/-! ## A152346.P5662168276846072929

`A001281(A152343(n+1)+A152341(n+1))`
-/

namespace A152346.P5662168276846072929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152343 (n + 1) + A152341 (n + 1)).toNat

end

end A152346.P5662168276846072929

/-! ## A152346.P845257954413985017

`A004525(A152343(n+1)+A152341(n+1))`
-/

namespace A152346.P845257954413985017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A152343 (n + 1) + A152341 (n + 1)).toNat

end

end A152346.P845257954413985017

/-! ## A152346.P16098071027674894906

`A004526(A152343(n+1)+A152341(n+1))`
-/

namespace A152346.P16098071027674894906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152343 (n + 1) + A152341 (n + 1)).toNat

end

end A152346.P16098071027674894906

/-!
# A152347: Number of permutations of floor(i*9/5), i=0..n-1, with all sums of 4 adjacent terms unique.

The programs for A152347, there is no canonical definition to state claims against.
-/

/-! ## A152347.P16307405354256148538

`A085486(n)+A035930(A353119(n))`
-/

namespace A152347.P16307405354256148538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085486 n + A035930 (A353119 n).toNat

end

end A152347.P16307405354256148538

/-! ## A152347.P15456062531034020486

`A004277(A068200(n))-A152366(n+1)`
-/

namespace A152347.P15456062531034020486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A068200 n).toNat - A152366 (n + 1)

end

end A152347.P15456062531034020486

/-!
# A152350: Number of permutations of 0..n-1 with all sums of 5 adjacent terms unique.

The programs for A152350, there is no canonical definition to state claims against.
-/

/-! ## A152350.P14258022673953148808

`A152368(∑[A361705(n)])`
-/

namespace A152350.P14258022673953148808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152350.P14258022673953148808

/-! ## A152350.P8443249526732736495

`A052410(A152368(n+1))`
-/

namespace A152350.P8443249526732736495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A152368 (n + 1)).toNat

end

end A152350.P8443249526732736495

/-! ## A152350.P3122685554691447570

`A152368(A361705(n)+n)`
-/

namespace A152350.P3122685554691447570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152368 (A361705 n + (n : ℤ)).toNat

end

end A152350.P3122685554691447570

/-! ## A152350.P15665856187301617646

`A152368(∑[A339768(n)²])`
-/

namespace A152350.P15665856187301617646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339768 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152350.P15665856187301617646

/-!
# A152352: Number of permutations of floor(i*4/3), i=0..n-1, with all sums of 5 adjacent terms unique.

The programs for A152352, there is no canonical definition to state claims against.
-/

/-! ## A152352.P2281235827523610600

`A355810((n+1)!)`
-/

namespace A152352.P2281235827523610600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355810 (Nat.factorial (n + 1))

end

end A152352.P2281235827523610600

/-! ## A152352.P14556730579469375293

`A355810((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A152352.P14556730579469375293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355810 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A152352.P14556730579469375293

/-! ## A152352.P1930396401391750268

`A152360(lcm(n+1, ∏{e}[n+1, #]))`
-/

namespace A152352.P1930396401391750268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152360 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A152352.P1930396401391750268

/-!
# A152353: Number of permutations of floor(i*5/2), i=0..n-1, with all sums of 5 adjacent terms unique.

The programs for A152353, there is no canonical definition to state claims against.
-/

/-! ## A152353.P10836679797610580177

`A152357(gcd(11, C(9, n))+n)`
-/

namespace A152353.P10836679797610580177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152357 (Nat.gcd 11 (Nat.choose 9 n) + n)

end

end A152353.P10836679797610580177

/-! ## A152353.P5476937095946262581

`A152357(∑[A128936(n)])`
-/

namespace A152353.P5476937095946262581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152357 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152353.P5476937095946262581

/-! ## A152353.P7694338025554874391

`A152357(∑[A139337(n)])`
-/

namespace A152353.P7694338025554874391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152357 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152353.P7694338025554874391

/-! ## A152353.P6905463158834331570

`A152357(∑[A143573(n)])`
-/

namespace A152353.P6905463158834331570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152357 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152353.P6905463158834331570

/-! ## A152353.P17895991490580570819

`A152357(A128936(n)+n)`
-/

namespace A152353.P17895991490580570819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152357 (A128936 n + (n : ℤ)).toNat

end

end A152353.P17895991490580570819

/-!
# A152354: Number of permutations of floor(i*5/3), i=0..n-1, with all sums of 5 adjacent terms unique.

The programs for A152354, there is no canonical definition to state claims against.
-/

/-! ## A152354.P8473338097923359293

`A152362(∑[A361675(n)])`
-/

namespace A152354.P8473338097923359293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152362 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152354.P8473338097923359293

/-! ## A152354.P5854939030768739344

`A152363(∑[A361675(n)])`
-/

namespace A152354.P5854939030768739344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152363 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152354.P5854939030768739344

/-! ## A152354.P15203038750015017785

`A028310(A152358(n+1))`
-/

namespace A152354.P15203038750015017785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A152358 (n + 1)).toNat

end

end A152354.P15203038750015017785

/-!
# A152355: Number of permutations of floor(i*5/4), i=0..n-1, with all sums of 5 adjacent terms unique.

The programs for A152355, there is no canonical definition to state claims against.
-/

/-! ## A152355.P8555423751229052735

`A028310(A152367(n+1))`
-/

namespace A152355.P8555423751229052735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A152367 (n + 1)).toNat

end

end A152355.P8555423751229052735

/-! ## A152355.P7690372101140029206

`A242603(A152356(n+1))`
-/

namespace A152355.P7690372101140029206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (A152356 (n + 1)).toNat

end

end A152355.P7690372101140029206

/-! ## A152355.P15178351179118792214

`A152356(A264975(n)+1)`
-/

namespace A152355.P15178351179118792214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152356 (A264975 n + 1).toNat

end

end A152355.P15178351179118792214

/-!
# A152359: Number of permutations of floor(i*7/4), i=0..n-1, with all sums of 5 adjacent terms unique.

The programs for A152359, there is no canonical definition to state claims against.
-/

/-! ## A152359.P9141736099149929056

`A014682(A152363(n+1)+A152362(n+1))`
-/

namespace A152359.P9141736099149929056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152363 (n + 1) + A152362 (n + 1)).toNat

end

end A152359.P9141736099149929056

/-!
# A152361: Number of permutations of floor(i*7/6), i=0..n-1, with all sums of 5 adjacent terms unique.

The programs for A152361, there is no canonical definition to state claims against.
-/

/-! ## A152361.P2523829783016966593

`A152352(n+1)-A324803(A000079(n))`
-/

namespace A152361.P2523829783016966593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152352 (n + 1) - A324803 (A000079 n).toNat

end

end A152361.P2523829783016966593

/-! ## A152361.P3038474058891643866

`A152360(n+1)-A324803(A000079(n))`
-/

namespace A152361.P3038474058891643866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152360 (n + 1) - A324803 (A000079 n).toNat

end

end A152361.P3038474058891643866

/-! ## A152361.P11928235565220681193

`A152356(n+1)-A217153(A359683(n))`
-/

namespace A152361.P11928235565220681193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152356 (n + 1) - A217153 (A359683 n).toNat

end

end A152361.P11928235565220681193

/-!
# A152366: Number of permutations of floor(i*9/5), i=0..n-1, with all sums of 5 adjacent terms unique.

The programs for A152366, there is no canonical definition to state claims against.
-/

/-! ## A152366.P5540026652517044675

`n*(A346089(a(n-1))+a(n-1))` with `a(0)=1`
-/

namespace A152366.P5540026652517044675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A346089 (a (n - 1)).toNat + a (n - 1))

end

end A152366.P5540026652517044675

/-!
# A152369: Number of permutations of 0..n-1 with all sums of 6 adjacent terms unique.

The programs for A152369, there is no canonical definition to state claims against.
-/

/-! ## A152369.P12878332576087005749

`A152387(∑[A291700(n)])`
-/

namespace A152369.P12878332576087005749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152387 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152369.P12878332576087005749

/-! ## A152369.P6742588448952073188

`A316437(A152387(n+1))`
-/

namespace A152369.P6742588448952073188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A152387 (n + 1)).toNat

end

end A152369.P6742588448952073188

/-! ## A152369.P13294818445868003271

`A152387(A291700(n)+n)`
-/

namespace A152369.P13294818445868003271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152387 (A291700 n + (n : ℤ)).toNat

end

end A152369.P13294818445868003271

/-!
# A152370: Number of permutations of floor(i*3/2), i=0..n-1, with all sums of 6 adjacent terms unique.

The programs for A152370, there is no canonical definition to state claims against.
-/

/-! ## A152370.P5883078565618779825

`(n+1)*A355810(a(n-1))` with `a(0)=1`
-/

namespace A152370.P5883078565618779825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A355810 (a (n - 1)).toNat

end

end A152370.P5883078565618779825

/-! ## A152370.P6249159502699969183

`A152372(A269355(n+1))`
-/

namespace A152370.P6249159502699969183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152372 (A269355 (n + 1)).toNat

end

end A152370.P6249159502699969183

/-! ## A152370.P7209930120956705392

`A152372(A000005(5^n))`
-/

namespace A152370.P7209930120956705392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152372 (A000005 (5 ^ n)).toNat

end

end A152370.P7209930120956705392

/-! ## A152370.P16433066359253148037

`A152376(A250665(n)+n)`
-/

namespace A152370.P16433066359253148037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152376 (A250665 n + (n : ℤ)).toNat

end

end A152370.P16433066359253148037

/-!
# A152372: Number of permutations of floor(i*5/2), i=0..n-1, with all sums of 6 adjacent terms unique.

The programs for A152372, there is no canonical definition to state claims against.
-/

/-! ## A152372.P4109323008413750012

`A152376((floor(n/10)+1)*(n+1))`
-/

namespace A152372.P4109323008413750012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152376 ((⌊(n : ℚ) / 10⌋ + 1) * (n + 1 : ℤ)).toNat

end

end A152372.P4109323008413750012

/-! ## A152372.P13354597933325299634

`A152376(n+1)^(n-∏{digits}[n, #])!`
-/

namespace A152372.P13354597933325299634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152376 (n + 1) ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)).toNat

end

end A152372.P13354597933325299634

/-! ## A152372.P980444323553706395

`A152376(n+1)%A151803(n+1)`
-/

namespace A152372.P980444323553706395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152376 (n + 1)) (A151803 (n + 1))

end

end A152372.P980444323553706395

/-! ## A152372.P17531191818039822822

`A106547(n+1)!*A152376(n+1)`
-/

namespace A152372.P17531191818039822822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A106547 (n + 1)).toNat : ℤ) * A152376 (n + 1)

end

end A152372.P17531191818039822822

/-!
# A152373: Number of permutations of floor(i*5/3), i=0..n-1, with all sums of 6 adjacent terms unique.

The programs for A152373, there is no canonical definition to state claims against.
-/

/-! ## A152373.P9832510801653155376

`A152381(A000005(5^n))`
-/

namespace A152373.P9832510801653155376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152381 (A000005 (5 ^ n)).toNat

end

end A152373.P9832510801653155376

/-!
# A152374: Number of permutations of floor(i*5/4), i=0..n-1, with all sums of 6 adjacent terms unique.

The programs for A152374, there is no canonical definition to state claims against.
-/

/-! ## A152374.P10796593093196489909

`and((n+1)!, A331173((n+1)!))`
-/

namespace A152374.P10796593093196489909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (n + 1) : ℤ) (A331173 (Nat.factorial (n + 1)))

end

end A152374.P10796593093196489909

/-!
# A152375: Number of permutations of floor(i*6/5), i=0..n-1, with all sums of 6 adjacent terms unique.

The programs for A152375, there is no canonical definition to state claims against.
-/

/-! ## A152375.P259758223005751669

`A014682(A152373(n+1)+A152369(n+1))`
-/

namespace A152375.P259758223005751669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152373 (n + 1) + A152369 (n + 1)).toNat

end

end A152375.P259758223005751669

/-! ## A152375.P9803098699076184430

`A014682(A152374(n+1)+A152370(n+1))`
-/

namespace A152375.P9803098699076184430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152374 (n + 1) + A152370 (n + 1)).toNat

end

end A152375.P9803098699076184430

/-! ## A152375.P6811565228410810213

`A014682(A152374(n+1)+A152372(n+1))`
-/

namespace A152375.P6811565228410810213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152374 (n + 1) + A152372 (n + 1)).toNat

end

end A152375.P6811565228410810213

/-! ## A152375.P12233520372642254986

`A014682(A152376(n+1)+A152374(n+1))`
-/

namespace A152375.P12233520372642254986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152376 (n + 1) + A152374 (n + 1)).toNat

end

end A152375.P12233520372642254986

/-!
# A152377: Number of permutations of floor(i*7/3), i=0..n-1, with all sums of 6 adjacent terms unique.

The programs for A152377, there is no canonical definition to state claims against.
-/

/-! ## A152377.P10067924025636090268

`A152379(∑[A287022(n)])`
-/

namespace A152377.P10067924025636090268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152379 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152377.P10067924025636090268

/-! ## A152377.P10225675605421809300

`A152379(∑[A361705(n)])`
-/

namespace A152377.P10225675605421809300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152379 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152377.P10225675605421809300

/-! ## A152377.P7051785207361609919

`A152379(A287022(n)+n)`
-/

namespace A152377.P7051785207361609919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152379 (A287022 n + (n : ℤ)).toNat

end

end A152377.P7051785207361609919

/-! ## A152377.P3348741926024574558

`A152379(A361705(n)+n)`
-/

namespace A152377.P3348741926024574558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152379 (A361705 n + (n : ℤ)).toNat

end

end A152377.P3348741926024574558

/-!
# A152378: Number of permutations of floor(i*7/4), i=0..n-1, with all sums of 6 adjacent terms unique.

The programs for A152378, there is no canonical definition to state claims against.
-/

/-! ## A152378.P15622201889060678818

`A152382(lcm(n+1, ∏{e}[n+1, floor(#/2)+1]))`
-/

namespace A152378.P15622201889060678818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152382 (Int.lcm (n + 1 : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1)))

end

end A152378.P15622201889060678818

/-! ## A152378.P9457776594718222186

`A152382(∑[A060361(n)])`
-/

namespace A152378.P9457776594718222186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152382 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152378.P9457776594718222186

/-! ## A152378.P2357977388412321500

`A152382(∑[A293724(n)])`
-/

namespace A152378.P2357977388412321500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152382 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152378.P2357977388412321500

/-! ## A152378.P16369896233093401619

`A052410(A152382(n+1))`
-/

namespace A152378.P16369896233093401619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A152382 (n + 1)).toNat

end

end A152378.P16369896233093401619

/-!
# A152383: Number of permutations of floor(i*8/7), i=0..n-1, with all sums of 6 adjacent terms unique.

The programs for A152383, there is no canonical definition to state claims against.
-/

/-! ## A152383.P8974916081036222899

`A254109(a(n-1))+n*a(n-1)` with `a(0)=1`
-/

namespace A152383.P8974916081036222899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254109 (a (n - 1)).toNat + (n : ℤ) * a (n - 1)

end

end A152383.P8974916081036222899

/-! ## A152383.P12041358749135456734

`A254109(a(n-1))+Δ[A000142(n)]` with `a(0)=1`
-/

namespace A152383.P12041358749135456734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254109 (a (n - 1)).toNat + (f1 (n + 1) - f1 n)

end

end A152383.P12041358749135456734

/-! ## A152383.P9163945405710397290

`A254109(A000142(n))+Δ[A000142(n)]`
-/

namespace A152383.P9163945405710397290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (A000142 n).toNat + (f1 (n + 1) - f1 n)

end

end A152383.P9163945405710397290

/-! ## A152383.P3273050809554791504

`A014682(A152370(n+1)+A152369(n+1))`
-/

namespace A152383.P3273050809554791504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152370 (n + 1) + A152369 (n + 1)).toNat

end

end A152383.P3273050809554791504

/-!
# A152389: Number of steps in Conway's Game of Life for a row of n cells to stabilize.

The programs for A152389, there is no canonical definition to state claims against.
-/

/-! ## A152389.P3004003967201272598

`A110910(n)-A177702(A110886(n))`
-/

namespace A152389.P3004003967201272598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110910 n - A177702 (A110886 n).toNat

end

end A152389.P3004003967201272598

/-! ## A152389.P14368482852399484366

`A110910(n)-A177702(A325617(n))`
-/

namespace A152389.P14368482852399484366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110910 n - A177702 (A325617 n).toNat

end

end A152389.P14368482852399484366

/-! ## A152389.P9205142607330651376

`A110910(n)-A087282(A068947(n+1))`
-/

namespace A152389.P9205142607330651376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110910 n - A087282 (A068947 (n + 1)).toNat

end

end A152389.P9205142607330651376

/-!
# A152390: Arises in enumerating non-degenerate colorings in Brook's Theorem.

The programs for A152390, the canonical program `A152390.P17561413026092686883` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152390 has offset 0).

The definition of A152390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152390.P1330047529917371187

`ogf((6+38x-28x^2+8x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A152390.P1330047529917371187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 38, -28, 8] [1, -5, 10, -10, 5, -1] n

end

end A152390.P1330047529917371187

namespace A152390

/-- `ogf((6+38x-28x^2+8x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1330047529917371187.Spec : Prop :=
  ∀ n, P1330047529917371187.a n = A152390 n

end A152390

/-! ## A152390.P17561413026092686883

`(n^3+8*n²+19*n+6)*(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A152390

/-- `(n^3+8*n²+19*n+6)*(n+1)` -/
def P17561413026092686883.Spec : Prop :=
  ∀ n, (P17561413026092686883.a n : ℤ) = A152390 n

theorem P17561413026092686883.correct : P17561413026092686883.Spec := by
  intro n
  simp only [A152390]

end A152390

/-! ## A152390.P9427649521273339837

`A269410(n+1)+A162262(n+1)`
-/

namespace A152390.P9427649521273339837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269410 (n + 1) + A162262 (n + 1)

end

end A152390.P9427649521273339837

namespace A152390

/-- `A269410(n+1)+A162262(n+1)` -/
def P9427649521273339837.Spec : Prop :=
  ∀ n, P9427649521273339837.a n = A152390 n

end A152390

/-! ## A152390.P5725225776484007077

`A269410(n+1)+A162257(n+1)-(n+1)`
-/

namespace A152390.P5725225776484007077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269410 (n + 1) + (A162257 (n + 1) - (n + 1 : ℤ))

end

end A152390.P5725225776484007077

namespace A152390

/-- `A269410(n+1)+A162257(n+1)-(n+1)` -/
def P5725225776484007077.Spec : Prop :=
  ∀ n, P5725225776484007077.a n = A152390 n

end A152390

/-! ## A152390.P18158482000458432928

`A269410(n+1)+A162259(n+1)+2*(n+1)`
-/

namespace A152390.P18158482000458432928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269410 (n + 1) + (A162259 (n + 1) + (2 * (n + 1) : ℤ))

end

end A152390.P18158482000458432928

namespace A152390

/-- `A269410(n+1)+A162259(n+1)+2*(n+1)` -/
def P18158482000458432928.Spec : Prop :=
  ∀ n, P18158482000458432928.a n = A152390 n

end A152390

/-! ## A152390.P15444797027527924816

`A269410(n+1)+A162261(n+1)-3*(n+1)`
-/

namespace A152390.P15444797027527924816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269410 (n + 1) + (A162261 (n + 1) - (3 * (n + 1) : ℤ))

end

end A152390.P15444797027527924816

namespace A152390

/-- `A269410(n+1)+A162261(n+1)-3*(n+1)` -/
def P15444797027527924816.Spec : Prop :=
  ∀ n, P15444797027527924816.a n = A152390 n

end A152390

/-!
# A152392: Column 0 of triangle A152391.

The programs for A152392, there is no canonical definition to state claims against.
-/

/-! ## A152392.P10193219941080855787

`A152391(∑[n])`
-/

namespace A152392.P10193219941080855787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152391 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152392.P10193219941080855787

/-! ## A152392.P200934401357634068

`or(char[1], A152391(A000217(n)))`
-/

namespace A152392.P200934401357634068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A152391 (A000217 n).toNat)

end

end A152392.P200934401357634068

/-! ## A152392.P7339582547376040043

`gcd(A112316(n), A152391(A000217(n)))`
-/

namespace A152392.P7339582547376040043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A152391 (A000217 n).toNat)

end

end A152392.P7339582547376040043

/-! ## A152392.P10665079059688827850

`lcm(A040001(n), A152391(A000217(n)))`
-/

namespace A152392.P10665079059688827850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A152391 (A000217 n).toNat)

end

end A152392.P10665079059688827850

/-! ## A152392.P12040910246082000778

`A152391(A000217(n))^abs(A057428(n))`
-/

namespace A152392.P12040910246082000778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152391 (A000217 n).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A152392.P12040910246082000778

/-!
# A152393: Column 1 of triangle A152391.

The programs for A152393, there is no canonical definition to state claims against.
-/

/-! ## A152393.P4881107175059171699

`A152391(∑[n+1]+1)`
-/

namespace A152393.P4881107175059171699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152393.P4881107175059171699

/-! ## A152393.P3417918053578859031

`record[A152391(A014132(n+1))]`
-/

namespace A152393.P3417918053578859031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152391 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152393.P3417918053578859031

/-! ## A152393.P10496970548458774636

`record[gcd(A152391(n), A238801(n))]`
-/

namespace A152393.P10496970548458774636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152391 n) (A238801 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152393.P10496970548458774636

/-! ## A152393.P7956744630134547249

`record[A152391(A056847(n)+1+n)]`
-/

namespace A152393.P7956744630134547249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152391 (A056847 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152393.P7956744630134547249

/-! ## A152393.P6504434881370042461

`record[A152391(1-A097806(n)+n)]`
-/

namespace A152393.P6504434881370042461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152391 (1 - A097806 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152393.P6504434881370042461

/-!
# A152394: Column 2 of triangle A152391.

The programs for A152394, there is no canonical definition to state claims against.
-/

/-! ## A152394.P17812319674918296619

`A152391(∑[n+2]+3)`
-/

namespace A152394.P17812319674918296619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152391 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A152394.P17812319674918296619

/-! ## A152394.P11556171048501986523

`record[A152391(gcd(n, A059341(n)))]`
-/

namespace A152394.P11556171048501986523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152391 (Int.gcd (n : ℤ) (A059341 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152394.P11556171048501986523

/-! ## A152394.P2652164614582873236

`record[A152391(n+5)%A152391(n+3)]`
-/

namespace A152394.P2652164614582873236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152391 (n + 5)) (A152391 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152394.P2652164614582873236

/-! ## A152394.P9147341196221020166

`A152391(A340266(n+1))-A151933(n)`
-/

namespace A152394.P9147341196221020166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152391 (A340266 (n + 1)).toNat - A151933 n

end

end A152394.P9147341196221020166

/-! ## A152394.P2353500793392884438

`or(A000007(n), A152391(A133263(n+2)))`
-/

namespace A152394.P2353500793392884438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A152391 (A133263 (n + 2)).toNat)

end

end A152394.P2353500793392884438

/-!
# A152395: Column 0 of the matrix square of triangle A152391.

The programs for A152395, there is no canonical definition to state claims against.
-/

/-! ## A152395.P10446333319538891205

`A043096(A314106(a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A152395.P10446333319538891205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A043096 (A314106 (a (n - 1)).toNat).toNat

end

end A152395.P10446333319538891205

/-!
# A152398: The q-exponential of x, e_q(x,q), evaluated at q = -x.

The programs for A152398, there is no canonical definition to state claims against.
-/

/-! ## A152398.P11908069777720363438

`or(A175773(2*n), A288818(A306896(n+3)))`
-/

namespace A152398.P11908069777720363438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175773 (2 * n)) (A288818 (A306896 (n + 3)).toNat)

end

end A152398.P11908069777720363438

/-! ## A152398.P8305959143557348500

`A083375(A148328(n))`
-/

namespace A152398.P8305959143557348500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A148328 n).toNat

end

end A152398.P8305959143557348500

/-! ## A152398.P9059052311762864373

`A083375(A290134(n))`
-/

namespace A152398.P9059052311762864373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A290134 n).toNat

end

end A152398.P9059052311762864373

/-! ## A152398.P4131612229278290821

`A162988(A289450(n))`
-/

namespace A152398.P4131612229278290821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162988 (A289450 n).toNat

end

end A152398.P4131612229278290821

/-! ## A152398.P4874575390937078059

`A162988(A389158(n))`
-/

namespace A152398.P4874575390937078059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162988 (A389158 n).toNat

end

end A152398.P4874575390937078059

