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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

/-!
# A206200: Number of (n+1) X 3 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A206200, there is no canonical definition to state claims against.
-/

/-! ## A206200.P9395419895064779572

`A206206(∑[n+1]+2)`
-/

namespace A206200.P9395419895064779572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206200.P9395419895064779572

/-! ## A206200.P18081990281644400897

`lcm(2, A206206(C(n+2, 2)+2))`
-/

namespace A206200.P18081990281644400897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206206 (Nat.choose (n + 2) 2 + 2))

end

end A206200.P18081990281644400897

/-! ## A206200.P11150080347882827722

`lcm(2, A206206(A000217(n+1)+2))`
-/

namespace A206200.P11150080347882827722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206206 (A000217 (n + 1) + 2).toNat)

end

end A206200.P11150080347882827722

/-! ## A206200.P747965430745537871

`A206206(A000217(n+1)+2)%A206212(n+1)`
-/

namespace A206200.P747965430745537871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206206 (A000217 (n + 1) + 2).toNat) (A206212 (n + 1))

end

end A206200.P747965430745537871

/-! ## A206200.P13743253416493859078

`lcm(2, A206206(A000096(n+1)))`
-/

namespace A206200.P13743253416493859078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206206 (A000096 (n + 1)).toNat)

end

end A206200.P13743253416493859078

/-!
# A206201: Number of (n+1)X4 0..3 arrays with every 2X3 or 3X2 subblock having exactly one clockwise edge increases.

The programs for A206201, there is no canonical definition to state claims against.
-/

/-! ## A206201.P18205455401717346427

`A206206(∑[n+2]+4)`
-/

namespace A206201.P18205455401717346427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206201.P18205455401717346427

/-! ## A206201.P14795757832630522808

`lcm(2, A206206(A167614(n+1)))`
-/

namespace A206201.P14795757832630522808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206206 (A167614 (n + 1)).toNat)

end

end A206201.P14795757832630522808

/-! ## A206201.P2889020389560654941

`A004070(C(2, n))*A206206(A167614(n+1))`
-/

namespace A206201.P2889020389560654941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (Nat.choose 2 n) * A206206 (A167614 (n + 1)).toNat

end

end A206201.P2889020389560654941

/-! ## A206201.P9210240106855773638

`A206206(A167614(n+1))+C(2, A000203(n+2))`
-/

namespace A206201.P9210240106855773638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A167614 (n + 1)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A206201.P9210240106855773638

/-! ## A206201.P7062194978247620553

`A001222(A030665(n+2))*A206206(A167614(n+1))`
-/

namespace A206201.P7062194978247620553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A030665 (n + 2)).toNat * A206206 (A167614 (n + 1)).toNat

end

end A206201.P7062194978247620553

/-!
# A206202: Number of (n+1)X5 0..3 arrays with every 2X3 or 3X2 subblock having exactly one clockwise edge increases.

The programs for A206202, there is no canonical definition to state claims against.
-/

/-! ## A206202.P8425612194748135952

`A206206(∑[n+3]+7)`
-/

namespace A206202.P8425612194748135952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A206202.P8425612194748135952

/-! ## A206202.P13822712327780434888

`A023532(3*n+4)*A206206(A167614(n+2)+1)`
-/

namespace A206202.P13822712327780434888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (3 * n + 4) * A206206 (A167614 (n + 2) + 1).toNat

end

end A206202.P13822712327780434888

/-! ## A206202.P7774073494377974633

`A206206(A055998(n+2))%A206091(n+1)`
-/

namespace A206202.P7774073494377974633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206206 (A055998 (n + 2)).toNat) (A206091 (n + 1))

end

end A206202.P7774073494377974633

/-!
# A206203: Number of (n+1)X6 0..3 arrays with every 2X3 or 3X2 subblock having exactly one clockwise edge increases.

The programs for A206203, there is no canonical definition to state claims against.
-/

/-! ## A206203.P4276074524018149035

`A206206(A374005(n+1))`
-/

namespace A206203.P4276074524018149035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A374005 (n + 1)).toNat

end

end A206203.P4276074524018149035

/-! ## A206203.P8034707940756484953

`A206206(A167499(n+3))`
-/

namespace A206203.P8034707940756484953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A167499 (n + 3)).toNat

end

end A206203.P8034707940756484953

/-! ## A206203.P11160277547968991865

`A206206(A000124(n+5)-(n+1))`
-/

namespace A206203.P11160277547968991865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A206203.P11160277547968991865

/-! ## A206203.P8300197292148431932

`A206206(A161680(n+7)-6-2*n)`
-/

namespace A206203.P8300197292148431932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A161680 (n + 7) - 6 - (2 * n : ℤ)).toNat

end

end A206203.P8300197292148431932

/-! ## A206203.P17520211668196432718

`A206206(Δ[A023545(n+1)])`
-/

namespace A206203.P17520211668196432718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (f1 (n + 1) - f1 n).toNat

end

end A206203.P17520211668196432718

/-!
# A206204: Number of (n+1)X7 0..3 arrays with every 2X3 or 3X2 subblock having exactly one clockwise edge increases.

The programs for A206204, there is no canonical definition to state claims against.
-/

/-! ## A206204.P3084749158265112886

`A206206(A374007(n+1))`
-/

namespace A206204.P3084749158265112886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A374007 (n + 1)).toNat

end

end A206204.P3084749158265112886

/-! ## A206204.P18438544312157730536

`A206206(A166136(n+4))`
-/

namespace A206204.P18438544312157730536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A166136 (n + 4)).toNat

end

end A206204.P18438544312157730536

/-! ## A206204.P10029577078023328781

`A206206(A000124(n+5)+5)`
-/

namespace A206204.P10029577078023328781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A000124 (n + 5) + 5).toNat

end

end A206204.P10029577078023328781

/-! ## A206204.P12232572133196108760

`A206206(A161680(n+6)+6)`
-/

namespace A206204.P12232572133196108760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A161680 (n + 6) + 6).toNat

end

end A206204.P12232572133196108760

/-! ## A206204.P14080976086362110021

`A206206(A034856(n+6)-5-A005843(n))`
-/

namespace A206204.P14080976086362110021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A034856 (n + 6) - 5 - A005843 n).toNat

end

end A206204.P14080976086362110021

/-!
# A206205: Number of (n+1)X8 0..3 arrays with every 2X3 or 3X2 subblock having exactly one clockwise edge increases.

The programs for A206205, there is no canonical definition to state claims against.
-/

/-! ## A206205.P4393622845428604008

`A206206(A374008(n+1))`
-/

namespace A206205.P4393622845428604008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A374008 (n + 1)).toNat

end

end A206205.P4393622845428604008

/-! ## A206205.P3423357135491040220

`A206206(A167614(n+5)+4)`
-/

namespace A206205.P3423357135491040220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A167614 (n + 5) + 4).toNat

end

end A206205.P3423357135491040220

/-! ## A206205.P13908360164465058488

`A206206(A000217(n+6)+7)`
-/

namespace A206205.P13908360164465058488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A000217 (n + 6) + 7).toNat

end

end A206205.P13908360164465058488

/-! ## A206205.P3931900580975697978

`A206206(A161680(n+7)+7)`
-/

namespace A206205.P3931900580975697978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A161680 (n + 7) + 7).toNat

end

end A206205.P3931900580975697978

/-! ## A206205.P10815111944377238869

`A206206(A055999(n+4))`
-/

namespace A206205.P10815111944377238869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A055999 (n + 4)).toNat

end

end A206205.P10815111944377238869

/-!
# A206207: Number of (n+1)X(n+1) 0..2 arrays with every 2X3 or 3X2 subblock having exactly two equal edges, and new values 0..2 introduced in row major order.

The programs for A206207, there is no canonical definition to state claims against.
-/

/-! ## A206207.P5243812013659651244

`ceil(A206086(n+1)/6)`
-/

namespace A206207.P5243812013659651244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A206086 (n + 1) : ℚ) / 6⌉

end

end A206207.P5243812013659651244

/-! ## A206207.P404952021634495459

`A206215((n+1)²+n²)`
-/

namespace A206207.P404952021634495459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 ((n + 1) ^ 2 + n ^ 2)

end

end A206207.P404952021634495459

/-! ## A206207.P7699985192979730351

`lcm(2, A206215(A001844(n)))`
-/

namespace A206207.P7699985192979730351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206215 (A001844 n).toNat)

end

end A206207.P7699985192979730351

/-! ## A206207.P14790969522170275690

`record[gcd(A114327(n), A206215(n+1))]`
-/

namespace A206207.P14790969522170275690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206215 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206207.P14790969522170275690

/-! ## A206207.P11962137665544604349

`A000041(C(2, 2*n))*A206215(A001844(n))`
-/

namespace A206207.P11962137665544604349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A206215 (A001844 n).toNat

end

end A206207.P11962137665544604349

/-!
# A206208: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two equal edges, and new values 0..2 introduced in row major order.

The programs for A206208, there is no canonical definition to state claims against.
-/

/-! ## A206208.P7835171218276735977

`ceil(A206087(n+1)/6)`
-/

namespace A206208.P7835171218276735977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A206087 (n + 1) : ℚ) / 6⌉

end

end A206208.P7835171218276735977

/-! ## A206208.P14241614986998776215

`A206215(∑[n]+1)`
-/

namespace A206208.P14241614986998776215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206208.P14241614986998776215

/-! ## A206208.P10712999109487264276

`record[A010054(n)*A206215(n+1)]`
-/

namespace A206208.P10712999109487264276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206208.P10712999109487264276

/-! ## A206208.P4251892859289499695

`record[A206215(n+1)/A063007(n)]`
-/

namespace A206208.P4251892859289499695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206215 (n + 1) : ℚ) / (A063007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206208.P4251892859289499695

/-! ## A206208.P6305077021463629361

`record[gcd(A002262(n), A206215(n+1))]`
-/

namespace A206208.P6305077021463629361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206215 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206208.P6305077021463629361

/-!
# A206209: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two equal edges, and new values 0..2 introduced in row major order.

The programs for A206209, there is no canonical definition to state claims against.
-/

/-! ## A206209.P13348415445787404745

`A206088(n+1)/6`
-/

namespace A206209.P13348415445787404745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206088 (n + 1) : ℚ) / 6

end

end A206209.P13348415445787404745

/-! ## A206209.P7322802619502607400

`A206215(∑[n+1]+2)`
-/

namespace A206209.P7322802619502607400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206209.P7322802619502607400

/-! ## A206209.P660136750421290441

`A206094(∑[n+1]+2)/6`
-/

namespace A206209.P660136750421290441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206094 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 6

end

end A206209.P660136750421290441

/-! ## A206209.P13117387651839567142

`record[A010054(n)*A206215(n+2)]`
-/

namespace A206209.P13117387651839567142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206215 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206209.P13117387651839567142

/-! ## A206209.P1305003000376242277

`record[gcd(A002262(n), A206215(n+2))]`
-/

namespace A206209.P1305003000376242277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206215 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206209.P1305003000376242277

/-!
# A206210: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two equal edges, and new values 0..2 introduced in row major order.

The programs for A206210, there is no canonical definition to state claims against.
-/

/-! ## A206210.P8287954212126818447

`A206089(n+1)/6`
-/

namespace A206210.P8287954212126818447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206089 (n + 1) : ℚ) / 6

end

end A206210.P8287954212126818447

/-! ## A206210.P7984304748109009570

`A206215(∑[n+2]+4)`
-/

namespace A206210.P7984304748109009570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206210.P7984304748109009570

/-! ## A206210.P17371200438332812296

`A206094(A167614(n+1))/6`
-/

namespace A206210.P17371200438332812296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206094 (A167614 (n + 1)).toNat : ℚ) / 6

end

end A206210.P17371200438332812296

/-! ## A206210.P6789164744634220329

`A033999(2*n)*A206215(A167614(n+1))`
-/

namespace A206210.P6789164744634220329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A206215 (A167614 (n + 1)).toNat

end

end A206210.P6789164744634220329

/-! ## A206210.P1097530246802727633

`A206215(A167614(n+1))%A206090(n+1)`
-/

namespace A206210.P1097530246802727633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206215 (A167614 (n + 1)).toNat) (A206090 (n + 1))

end

end A206210.P1097530246802727633

/-!
# A206211: Number of (n+1)X5 0..2 arrays with every 2X3 or 3X2 subblock having exactly two equal edges, and new values 0..2 introduced in row major order.

The programs for A206211, there is no canonical definition to state claims against.
-/

/-! ## A206211.P6470608465241014580

`A206090(n+1)/6`
-/

namespace A206211.P6470608465241014580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206090 (n + 1) : ℚ) / 6

end

end A206211.P6470608465241014580

/-! ## A206211.P8177704740288861158

`A206215(A374004(n+1))`
-/

namespace A206211.P8177704740288861158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A374004 (n + 1)).toNat

end

end A206211.P8177704740288861158

/-! ## A206211.P10418688476150375871

`A206215(A052905(n)+9)`
-/

namespace A206211.P10418688476150375871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A052905 n + 9).toNat

end

end A206211.P10418688476150375871

/-! ## A206211.P15466505990001317615

`A206215(A055999(n)+10)`
-/

namespace A206211.P15466505990001317615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A055999 n + 10).toNat

end

end A206211.P15466505990001317615

/-! ## A206211.P13691368874664317590

`A206215(A167614(n+2)+1)`
-/

namespace A206211.P13691368874664317590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A167614 (n + 2) + 1).toNat

end

end A206211.P13691368874664317590

/-!
# A206212: Number of (n+1) X 6 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two equal edges, and new values 0..2 introduced in row major order.

The programs for A206212, there is no canonical definition to state claims against.
-/

/-! ## A206212.P2699884610235153338

`A206091(n+1)/6`
-/

namespace A206212.P2699884610235153338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206091 (n + 1) : ℚ) / 6

end

end A206212.P2699884610235153338

/-! ## A206212.P6370129510814963279

`A206215(A374005(n+1))`
-/

namespace A206212.P6370129510814963279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A374005 (n + 1)).toNat

end

end A206212.P6370129510814963279

/-! ## A206212.P16914227074812548057

`A206215(A167499(n+3))`
-/

namespace A206212.P16914227074812548057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A167499 (n + 3)).toNat

end

end A206212.P16914227074812548057

/-! ## A206212.P17968947188714944079

`A206215(A167614(n+3)+2)`
-/

namespace A206212.P17968947188714944079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A167614 (n + 3) + 2).toNat

end

end A206212.P17968947188714944079

/-! ## A206212.P17287619542506123719

`A206215(A000217(n+4)+5)`
-/

namespace A206212.P17287619542506123719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A000217 (n + 4) + 5).toNat

end

end A206212.P17287619542506123719

/-!
# A206213: Number of (n+1)X7 0..2 arrays with every 2X3 or 3X2 subblock having exactly two equal edges, and new values 0..2 introduced in row major order.

The programs for A206213, there is no canonical definition to state claims against.
-/

/-! ## A206213.P4450542643903458798

`A206092(n+1)/6`
-/

namespace A206213.P4450542643903458798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206092 (n + 1) : ℚ) / 6

end

end A206213.P4450542643903458798

/-! ## A206213.P7587531760756345257

`A206215(A374007(n+1))`
-/

namespace A206213.P7587531760756345257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A374007 (n + 1)).toNat

end

end A206213.P7587531760756345257

/-! ## A206213.P3723017930975422429

`A206215(A167487(n+4)-1)`
-/

namespace A206213.P3723017930975422429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A167487 (n + 4) - 1).toNat

end

end A206213.P3723017930975422429

/-! ## A206213.P14046663800925957281

`A206215(A046691(n+3)+10)`
-/

namespace A206213.P14046663800925957281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A046691 (n + 3) + 10).toNat

end

end A206213.P14046663800925957281

/-! ## A206213.P13114640183400372084

`A206094(A000096(n+5)-n+1)/6`
-/

namespace A206213.P13114640183400372084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206094 (A000096 (n + 5) - (n : ℤ) + 1).toNat : ℚ) / 6

end

end A206213.P13114640183400372084

/-!
# A206214: Number of (n+1)X8 0..2 arrays with every 2X3 or 3X2 subblock having exactly two equal edges, and new values 0..2 introduced in row major order.

The programs for A206214, there is no canonical definition to state claims against.
-/

/-! ## A206214.P2330626061367070586

`A206093(n+1)/6`
-/

namespace A206214.P2330626061367070586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206093 (n + 1) : ℚ) / 6

end

end A206214.P2330626061367070586

/-! ## A206214.P2735697338122733373

`A206215(A374008(n+1))`
-/

namespace A206214.P2735697338122733373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A374008 (n + 1)).toNat

end

end A206214.P2735697338122733373

/-! ## A206214.P2764176119616483763

`A206215(A167499(n+5)+2)`
-/

namespace A206214.P2764176119616483763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A167499 (n + 5) + 2).toNat

end

end A206214.P2764176119616483763

/-! ## A206214.P3138048698293206782

`A206215(A052905(n+3)+12)`
-/

namespace A206214.P3138048698293206782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A052905 (n + 3) + 12).toNat

end

end A206214.P3138048698293206782

/-! ## A206214.P10156477417058308535

`A206215(A167614(n+6)-(n+3))`
-/

namespace A206214.P10156477417058308535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206215 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A206214.P10156477417058308535

/-!
# A206215: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X3 or 3X2 subblock having exactly two equal edges, and new values 0..2 introduced in row major order.

The programs for A206215, there is no canonical definition to state claims against.
-/

/-! ## A206215.P17871176753362684464

`ceil(A206094(n+1)/6)`
-/

namespace A206215.P17871176753362684464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A206094 (n + 1) : ℚ) / 6⌉

end

end A206215.P17871176753362684464

/-! ## A206215.P9888204125368854391

`round(A206094(A000027(n+1))/6)`
-/

namespace A206215.P9888204125368854391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A206094 (A000027 (n + 1)).toNat : ℚ) / 6)

end

end A206215.P9888204125368854391

/-! ## A206215.P6333426081268961378

`(A000007(n)+A206094(n+1)/3)/2`
-/

namespace A206215.P6333426081268961378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000007 n : ℚ) + (A206094 (n + 1) : ℚ) / 3) / 2

end

end A206215.P6333426081268961378

/-! ## A206215.P6853270302029161867

`round(A206094(A038722(n+1))/6)`
-/

namespace A206215.P6853270302029161867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A206094 (A038722 (n + 1)).toNat : ℚ) / 6)

end

end A206215.P6853270302029161867

/-! ## A206215.P15437387136500678626

`round(A206094(n+1)/6*A286852(A000040(n+1)))`
-/

namespace A206215.P15437387136500678626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A206094 (n + 1) : ℚ) / 6 * (A286852 (A000040 (n + 1)).toNat : ℚ))

end

end A206215.P15437387136500678626

/-!
# A206216: Number of (n+1)X(n+1) 0..2 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A206216, there is no canonical definition to state claims against.
-/

/-! ## A206216.P9819108483358325878

`A206223((n+1)²+n²)`
-/

namespace A206216.P9819108483358325878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 ((n + 1) ^ 2 + n ^ 2)

end

end A206216.P9819108483358325878

/-!
# A206217: Number of (n+1)X3 0..2 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A206217, there is no canonical definition to state claims against.
-/

/-! ## A206217.P18143240586116240292

`A206223(∑[n+1]+2)`
-/

namespace A206217.P18143240586116240292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206217.P18143240586116240292

/-! ## A206217.P8219168157152381766

`record[A206223(A024163(n+1)+2)]`
-/

namespace A206217.P8219168157152381766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A024163 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206217.P8219168157152381766

/-! ## A206217.P5064817885117211969

`record[A206223(A000096(val(n+1, 2)+1))]`
-/

namespace A206217.P5064817885117211969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206217.P5064817885117211969

/-! ## A206217.P4657702791975917167

`record[A206223(A000096(floor(n/(n%2+2))+1))]`
-/

namespace A206217.P4657702791975917167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A000096 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206217.P4657702791975917167

/-!
# A206218: Number of (n+1) X 4 0..2 arrays with rows and columns of determinants of all 2 X 2 subblocks lexicographically nondecreasing.

The programs for A206218, there is no canonical definition to state claims against.
-/

/-! ## A206218.P17176041967276389218

`A206223(∑[n+2]+4)`
-/

namespace A206218.P17176041967276389218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206218.P17176041967276389218

/-! ## A206218.P5461307242597417737

`A206223(A167614(n+1))+A171765(n)`
-/

namespace A206218.P5461307242597417737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A167614 (n + 1)).toNat + A171765 n

end

end A206218.P5461307242597417737

/-! ## A206218.P1921345528796376501

`A256974(n)+A206223(A167614(n+1))`
-/

namespace A206218.P1921345528796376501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A206223 (A167614 (n + 1)).toNat

end

end A206218.P1921345528796376501

/-! ## A206218.P6079581903831073847

`A206223(A167614(n+1))*A206244(n)`
-/

namespace A206218.P6079581903831073847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A167614 (n + 1)).toNat * A206244 n

end

end A206218.P6079581903831073847

/-! ## A206218.P14647564138206178033

`A206223(A167614(n+1))*A333901(n)`
-/

namespace A206218.P14647564138206178033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A167614 (n + 1)).toNat * A333901 n

end

end A206218.P14647564138206178033

/-!
# A206219: Number of (n+1)X5 0..2 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A206219, there is no canonical definition to state claims against.
-/

/-! ## A206219.P3567484819872967809

`A206223(A374004(n+1))`
-/

namespace A206219.P3567484819872967809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A374004 (n + 1)).toNat

end

end A206219.P3567484819872967809

/-! ## A206219.P2093128523375865384

`A206223(A141214(n)+7)`
-/

namespace A206219.P2093128523375865384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A141214 n + 7).toNat

end

end A206219.P2093128523375865384

/-! ## A206219.P2596799823041125996

`A206223(A052905(n)+9)`
-/

namespace A206219.P2596799823041125996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A052905 n + 9).toNat

end

end A206219.P2596799823041125996

/-! ## A206219.P13313977819956697104

`A206223(A167614(n+2)+1)`
-/

namespace A206219.P13313977819956697104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A167614 (n + 2) + 1).toNat

end

end A206219.P13313977819956697104

/-! ## A206219.P17341298386666872149

`A206223(A155212(n)+5)`
-/

namespace A206219.P17341298386666872149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A155212 n + 5).toNat

end

end A206219.P17341298386666872149

/-!
# A206220: Number of (n+1)X6 0..2 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A206220, there is no canonical definition to state claims against.
-/

/-! ## A206220.P12939042132069054839

`A206223(A374005(n+1))`
-/

namespace A206220.P12939042132069054839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A374005 (n + 1)).toNat

end

end A206220.P12939042132069054839

/-! ## A206220.P6480796382674708585

`A206223(A155212(n)+13)`
-/

namespace A206220.P6480796382674708585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A155212 n + 13).toNat

end

end A206220.P6480796382674708585

/-! ## A206220.P7384062351252164552

`A206223(∑[n+5]+6)`
-/

namespace A206220.P7384062351252164552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A206220.P7384062351252164552

/-!
# A206221: Number of (n+1)X7 0..2 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A206221, there is no canonical definition to state claims against.
-/

/-! ## A206221.P15706583612082959985

`A206223(A374007(n+1))`
-/

namespace A206221.P15706583612082959985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (A374007 (n + 1)).toNat

end

end A206221.P15706583612082959985

/-! ## A206221.P3143990495752969262

`A206223(eq[7, A131818(n+1)])`
-/

namespace A206221.P3143990495752969262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206221.P3143990495752969262

/-! ## A206221.P11638100911928024172

`A206223(eq[5, A193592(n)])`
-/

namespace A206221.P11638100911928024172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206221.P11638100911928024172

/-!
# A206222: 

The programs for A206222, there is no canonical definition to state claims against.
-/

/-! ## A206222.P15943312859847988247

`A206223(eq[6, A193592(n)])`
-/

namespace A206222.P15943312859847988247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206222.P15943312859847988247

/-!
# A206224: Floor(k^2/4) appears 1+floor(k/2) times.

The programs for A206224, the canonical program `A206224.P8657944680629026184` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206224 has offset 0).

The definition of A206224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206224.P8657944680629026184

`floor(1/4*(floor(sqrt(4*n+1))-1)²)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206224

/-- `floor(1/4*(floor(sqrt(4*n+1))-1)²)` -/
def P8657944680629026184.Spec : Prop :=
  ∀ n, P8657944680629026184.a n = A206224 n

theorem P8657944680629026184.correct : P8657944680629026184.Spec := by
  intro n
  simp only [A206224]

end A206224

/-! ## A206224.P16839062087866981680

`A002620(A055086(n))`
-/

namespace A206224.P16839062087866981680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A055086 n).toNat

end

end A206224.P16839062087866981680

namespace A206224

/-- `A002620(A055086(n))` -/
def P16839062087866981680.Spec : Prop :=
  ∀ n, P16839062087866981680.a n = A206224 n

end A206224

/-! ## A206224.P14932503840640457905

`A002620(A000267(n)-1)`
-/

namespace A206224.P14932503840640457905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000267 n - 1).toNat

end

end A206224.P14932503840640457905

namespace A206224

/-- `A002620(A000267(n)-1)` -/
def P14932503840640457905.Spec : Prop :=
  ∀ n, P14932503840640457905.a n = A206224 n

end A206224

/-! ## A206224.P8371553961995090058

`lt[0, floor(sqrt(8*n+1))%2]-n`
-/

namespace A206224.P8371553961995090058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A206224.P8371553961995090058

namespace A206224

/-- `lt[0, floor(sqrt(8*n+1))%2]-n` -/
def P8371553961995090058.Spec : Prop :=
  ∀ n, P8371553961995090058.a n = A206224 n

end A206224

/-! ## A206224.P14364032533005891487

`n-(floor(sqrt(n))+n%floor(sqrt(n+1)))`
-/

namespace A206224.P14364032533005891487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.sqrt n + n % Nat.sqrt (n + 1) : ℕ) : ℤ)

end

end A206224.P14364032533005891487

namespace A206224

/-- `n-(floor(sqrt(n))+n%floor(sqrt(n+1)))` -/
def P14364032533005891487.Spec : Prop :=
  ∀ n, P14364032533005891487.a n = A206224 n

end A206224

/-! ## A206224.P4303440275637671992

`(comp[∑[2*n]]*comp[n²-1])%(n+1)`
-/

namespace A206224.P4303440275637671992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n % (n + 1)

end

end A206224.P4303440275637671992

namespace A206224

/-- `(comp[∑[2*n]]*comp[n²-1])%(n+1)` -/
def P4303440275637671992.Spec : Prop :=
  ∀ n, (P4303440275637671992.a n : ℤ) = A206224 n

end A206224

/-! ## A206224.P15737959625009436625

`n-A322832(n)`
-/

namespace A206224.P15737959625009436625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A322832 n

end

end A206224.P15737959625009436625

namespace A206224

/-- `n-A322832(n)` -/
def P15737959625009436625.Spec : Prop :=
  ∀ n, P15737959625009436625.a n = A206224 n

end A206224

/-! ## A206224.P7484368177414188973

`1-A138099(n+1)+n`
-/

namespace A206224.P7484368177414188973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138099 (n + 1) + (n : ℤ)

end

end A206224.P7484368177414188973

namespace A206224

/-- `1-A138099(n+1)+n` -/
def P7484368177414188973.Spec : Prop :=
  ∀ n, P7484368177414188973.a n = A206224 n

end A206224

/-! ## A206224.P4828085904994083192

`2-A336751(n+1)+n`
-/

namespace A206224.P4828085904994083192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A336751 (n + 1) + (n : ℤ)

end

end A206224.P4828085904994083192

namespace A206224

/-- `2-A336751(n+1)+n` -/
def P4828085904994083192.Spec : Prop :=
  ∀ n, P4828085904994083192.a n = A206224 n

end A206224

/-! ## A206224.P8923363272420107054

`A028391(n-A055087(n))`
-/

namespace A206224.P8923363272420107054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 ((n : ℤ) - A055087 n).toNat

end

end A206224.P8923363272420107054

namespace A206224

/-- `A028391(n-A055087(n))` -/
def P8923363272420107054.Spec : Prop :=
  ∀ n, P8923363272420107054.a n = A206224 n

end A206224

/-! ## A206224.P16768811122674400527

`A000196(n)*A259361(n)`
-/

namespace A206224.P16768811122674400527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n * A259361 n

end

end A206224.P16768811122674400527

namespace A206224

/-- `A000196(n)*A259361(n)` -/
def P16768811122674400527.Spec : Prop :=
  ∀ n, P16768811122674400527.a n = A206224 n

end A206224

/-! ## A206224.P10888086742780896182

`A002620(A027434(n+1)-2)`
-/

namespace A206224.P10888086742780896182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A027434 (n + 1) - 2).toNat

end

end A206224.P10888086742780896182

namespace A206224

/-- `A002620(A027434(n+1)-2)` -/
def P10888086742780896182.Spec : Prop :=
  ∀ n, P10888086742780896182.a n = A206224 n

end A206224

/-! ## A206224.P11275779037061962640

`A002620(n+1-A083479(n+1))`
-/

namespace A206224.P11275779037061962640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((n + 1 : ℤ) - A083479 (n + 1)).toNat

end

end A206224.P11275779037061962640

namespace A206224

/-- `A002620(n+1-A083479(n+1))` -/
def P11275779037061962640.Spec : Prop :=
  ∀ n, P11275779037061962640.a n = A206224 n

end A206224

/-! ## A206224.P11709487017947544253

`A002620(2*n-A123663(n+1))`
-/

namespace A206224.P11709487017947544253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((2 * n : ℤ) - A123663 (n + 1)).toNat

end

end A206224.P11709487017947544253

namespace A206224

/-- `A002620(2*n-A123663(n+1))` -/
def P11709487017947544253.Spec : Prop :=
  ∀ n, P11709487017947544253.a n = A206224 n

end A206224

/-! ## A206224.P1280601736507541141

`A000196(n)*A000196(A028391(n))`
-/

namespace A206224.P1280601736507541141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n * A000196 (A028391 n).toNat

end

end A206224.P1280601736507541141

namespace A206224

/-- `A000196(n)*A000196(A028391(n))` -/
def P1280601736507541141.Spec : Prop :=
  ∀ n, P1280601736507541141.a n = A206224 n

end A206224

/-! ## A206224.P8008239699382632785

`A000196(n)*A000196(A056847(n))`
-/

namespace A206224.P8008239699382632785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n * A000196 (A056847 n).toNat

end

end A206224.P8008239699382632785

namespace A206224

/-- `A000196(n)*A000196(A056847(n))` -/
def P8008239699382632785.Spec : Prop :=
  ∀ n, P8008239699382632785.a n = A206224 n

end A206224

/-! ## A206224.P13211178809667227542

`A002620(A384688(A216607(n+1)+n))`
-/

namespace A206224.P13211178809667227542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A384688 (A216607 (n + 1) + (n : ℤ)).toNat).toNat

end

end A206224.P13211178809667227542

namespace A206224

/-- `A002620(A384688(A216607(n+1)+n))` -/
def P13211178809667227542.Spec : Prop :=
  ∀ n, P13211178809667227542.a n = A206224 n

end A206224

/-! ## A206224.P10233984832576131355

`A259361(A232091(n+1))*A259361(n)`
-/

namespace A206224.P10233984832576131355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A232091 (n + 1)).toNat * A259361 n

end

end A206224.P10233984832576131355

namespace A206224

/-- `A259361(A232091(n+1))*A259361(n)` -/
def P10233984832576131355.Spec : Prop :=
  ∀ n, P10233984832576131355.a n = A206224 n

end A206224

/-! ## A206224.P5634417373879738566

`A000196(n-A000196(n))*A000196(n)`
-/

namespace A206224.P5634417373879738566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) - A000196 n).toNat * A000196 n

end

end A206224.P5634417373879738566

namespace A206224

/-- `A000196(n-A000196(n))*A000196(n)` -/
def P5634417373879738566.Spec : Prop :=
  ∀ n, P5634417373879738566.a n = A206224 n

end A206224

/-! ## A206224.P8901756685773330427

`record[A116942(n)]-n`
-/

namespace A206224.P8901756685773330427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A206224.P8901756685773330427

namespace A206224

/-- `record[A116942(n)]-n` -/
def P8901756685773330427.Spec : Prop :=
  ∀ n, P8901756685773330427.a n = A206224 n

end A206224

/-!
# A206225: Numbers j such that the numbers Phi(j, m) are in sorted order for any integer m >= 2, where Phi(k, x) is the k-th cyclotomic polynomial.

The programs for A206225, there is no canonical definition to state claims against.
-/

/-! ## A206225.P11762578089698008078

`∑{e}[2^A208507(n+1), #]`
-/

namespace A206225.P11762578089698008078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A208507 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A206225.P11762578089698008078

/-! ## A206225.P16295839250314733123

`A208507(A043318(n+1))`
-/

namespace A206225.P16295839250314733123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208507 (A043318 (n + 1)).toNat

end

end A206225.P16295839250314733123

/-! ## A206225.P11068397568435974328

`A208507(A044915(n+1))`
-/

namespace A206225.P11068397568435974328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208507 (A044915 (n + 1)).toNat

end

end A206225.P11068397568435974328

/-! ## A206225.P4755362795746128340

`A208507(A055647(n+1))`
-/

namespace A206225.P4755362795746128340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208507 (A055647 (n + 1)).toNat

end

end A206225.P4755362795746128340

/-! ## A206225.P17345492093801200595

`A208507(A055648(n)+1)`
-/

namespace A206225.P17345492093801200595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208507 (A055648 n + 1).toNat

end

end A206225.P17345492093801200595

/-!
# A206226: Number of partitions of n^2 into parts not greater than n.

The programs for A206226, there is no canonical definition to state claims against.
-/

/-! ## A206226.P9648194887520321505

`A097356(n²)`
-/

namespace A206226.P9648194887520321505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097356 (n ^ 2)

end

end A206226.P9648194887520321505

/-! ## A206226.P1312370995607912987

`gcd(A000038(n), A097356(A000290(n)))`
-/

namespace A206226.P1312370995607912987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A097356 (A000290 n).toNat)

end

end A206226.P1312370995607912987

/-! ## A206226.P16456024327191819147

`A097356(A000290(n))+A035363(2*n+1)`
-/

namespace A206226.P16456024327191819147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097356 (A000290 n).toNat + A035363 (2 * n + 1)

end

end A206226.P16456024327191819147

/-! ## A206226.P16330886360932793626

`A026820(A000124(n))*A097356(A000290(n))`
-/

namespace A206226.P16330886360932793626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A000124 n).toNat * A097356 (A000290 n).toNat

end

end A206226.P16330886360932793626

/-! ## A206226.P15494808541721219810

`A072213(n)+A206240(n)-A347585(n)`
-/

namespace A206226.P15494808541721219810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072213 n + (A206240 n - A347585 n)

end

end A206226.P15494808541721219810

/-!
# A206227: Number of partitions of n^2+n into parts not greater than n.

The programs for A206227, there is no canonical definition to state claims against.
-/

/-! ## A206227.P10790254174835776554

`A097356(∑[2*n])`
-/

namespace A206227.P10790254174835776554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097356 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206227.P10790254174835776554

/-! ## A206227.P3605532940198922323

`A316353(A060798(n+1))`
-/

namespace A206227.P3605532940198922323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A060798 (n + 1)).toNat

end

end A206227.P3605532940198922323

/-! ## A206227.P10781131393459758373

`A316353(2*A179865(n+1))`
-/

namespace A206227.P10781131393459758373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (2 * A179865 (n + 1)).toNat

end

end A206227.P10781131393459758373

/-! ## A206227.P8212776476883209969

`A316353(A082562(n)+1+n)`
-/

namespace A206227.P8212776476883209969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A082562 n + 1 + (n : ℤ)).toNat

end

end A206227.P8212776476883209969

/-! ## A206227.P17935489781127009403

`A316353(A233583(n+1)+n²)`
-/

namespace A206227.P17935489781127009403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A233583 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A206227.P17935489781127009403

/-! ## A206227.P9626416702900316399

`A316353(A000038(n)+n²+n)`
-/

namespace A206227.P9626416702900316399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A000038 n + (n ^ 2 + n : ℤ)).toNat

end

end A206227.P9626416702900316399

/-! ## A206227.P7954240950153419615

`gcd(A000038(n), A097356(n²+n))`
-/

namespace A206227.P7954240950153419615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A097356 (n ^ 2 + n))

end

end A206227.P7954240950153419615

/-! ## A206227.P13777468494222316221

`A316353((n+1)*A233583(n+1))`
-/

namespace A206227.P13777468494222316221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 ((n + 1 : ℤ) * A233583 (n + 1)).toNat

end

end A206227.P13777468494222316221

/-! ## A206227.P12273532502849708146

`A316353(A014206(n)-2%(n+1))`
-/

namespace A206227.P12273532502849708146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A014206 n - ((2 % (n + 1) : ℕ) : ℤ)).toNat

end

end A206227.P12273532502849708146

/-! ## A206227.P963548827298676409

`A316353(A253909(n)+A028310(n))`
-/

namespace A206227.P963548827298676409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A253909 n + A028310 n).toNat

end

end A206227.P963548827298676409

/-! ## A206227.P14334228292719594345

`A316353(A028310(n)+A028310(n)²)`
-/

namespace A206227.P14334228292719594345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A028310 n + A028310 n ^ 2).toNat

end

end A206227.P14334228292719594345

/-! ## A206227.P7121930193603887317

`A316353((A028310(n)+1)*A028310(n))`
-/

namespace A206227.P7121930193603887317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 ((A028310 n + 1) * A028310 n).toNat

end

end A206227.P7121930193603887317

/-! ## A206227.P8817516503728406695

`A316353(eq[0, A267683(n)])`
-/

namespace A206227.P8817516503728406695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206227.P8817516503728406695

/-!
# A206228: a(n) = [x^n] Product_{k=1..n} 1/(1 - x^k)^(n-k+1).

The programs for A206228, there is no canonical definition to state claims against.
-/

/-! ## A206228.P16800359580661839983

`A004526(A279013(n)+A156906(n))`
-/

namespace A206228.P16800359580661839983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A279013 n + A156906 n).toNat

end

end A206228.P16800359580661839983

/-! ## A206228.P17111115460429811984

`A065033(A279013(n)-A063865(n))`
-/

namespace A206228.P17111115460429811984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A279013 n - A063865 n).toNat

end

end A206228.P17111115460429811984

/-! ## A206228.P775442657574458230

`A065033(A279013(n)-A276950(n))`
-/

namespace A206228.P775442657574458230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A279013 n - A276950 n).toNat

end

end A206228.P775442657574458230

/-!
# A206229: a(n) = [x^n] Product_{k=1..n} (1 + x^k)^(n-k+1).

The programs for A206229, there is no canonical definition to state claims against.
-/

/-! ## A206229.P7952885978094661308

`A256502(2*A198957(n))`
-/

namespace A206229.P7952885978094661308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (2 * A198957 n).toNat

end

end A206229.P7952885978094661308

/-! ## A206229.P8696141004782620246

`A276798(A122450(n)-n)`
-/

namespace A206229.P8696141004782620246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A122450 n - (n : ℤ)).toNat

end

end A206229.P8696141004782620246

/-! ## A206229.P3960393139990973273

`A226190(or(n, A228770(n+1)))`
-/

namespace A206229.P3960393139990973273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (Int.lor (n : ℤ) (A228770 (n + 1))).toNat

end

end A206229.P3960393139990973273

/-!
# A206230: Number of (n+1)X(n+1) 0..3 arrays with every 2X3 or 3X2 subblock having exactly two equal edges, and new values 0..3 introduced in row major order.

The programs for A206230, there is no canonical definition to state claims against.
-/

/-! ## A206230.P10470767856173459776

`A206238((n+1)²+n²)`
-/

namespace A206230.P10470767856173459776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 ((n + 1) ^ 2 + n ^ 2)

end

end A206230.P10470767856173459776

/-! ## A206230.P10425314697057691600

`record[A206238(A330613(n+1))]`
-/

namespace A206230.P10425314697057691600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206230.P10425314697057691600

/-! ## A206230.P2309879445674090853

`record[A003982(n)*A206238(n+1)]`
-/

namespace A206230.P2309879445674090853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206230.P2309879445674090853

/-! ## A206230.P8506472891552435788

`record[gcd(A206238(n+1), A285721(n+1))]`
-/

namespace A206230.P8506472891552435788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206238 (n + 1)) (A285721 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206230.P8506472891552435788

/-! ## A206230.P3434179364135174048

`A000041(C(2, n+2))*A206238(A001844(n))`
-/

namespace A206230.P3434179364135174048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A206238 (A001844 n).toNat

end

end A206230.P3434179364135174048

/-!
# A206231: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two equal edges, and new values 0..3 introduced in row major order.

The programs for A206231, there is no canonical definition to state claims against.
-/

/-! ## A206231.P3307542314522747490

`A206238(∑[n]+1)`
-/

namespace A206231.P3307542314522747490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206231.P3307542314522747490

/-! ## A206231.P11210242169222637124

`record[A010054(n)*A206238(n+1)]`
-/

namespace A206231.P11210242169222637124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206231.P11210242169222637124

/-! ## A206231.P5196477706402571347

`record[gcd(A002262(n), A206238(n+1))]`
-/

namespace A206231.P5196477706402571347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206238 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206231.P5196477706402571347

/-! ## A206231.P6861062714169776549

`record[(A035214(n)-1)*A206238(n+1)]`
-/

namespace A206231.P6861062714169776549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035214 n - 1) * A206238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206231.P6861062714169776549

/-! ## A206231.P5540196334587111547

`record[A206238(n+1)/A169654(n+1)]`
-/

namespace A206231.P5540196334587111547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206238 (n + 1) : ℚ) / (A169654 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206231.P5540196334587111547

/-!
# A206232: Number of (n+1)X3 0..3 arrays with every 2X3 or 3X2 subblock having exactly two equal edges, and new values 0..3 introduced in row major order.

The programs for A206232, there is no canonical definition to state claims against.
-/

/-! ## A206232.P5062053342654508496

`A206238(∑[n+1]+2)`
-/

namespace A206232.P5062053342654508496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206232.P5062053342654508496

/-! ## A206232.P10116062656958549428

`record[A010054(n)*A206238(n+2)]`
-/

namespace A206232.P10116062656958549428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206238 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206232.P10116062656958549428

/-! ## A206232.P14436724610204628238

`record[gcd(A002262(n), A206238(n+2))]`
-/

namespace A206232.P14436724610204628238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206238 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206232.P14436724610204628238

/-! ## A206232.P2654789275674612546

`lcm(2, A206238(A000217(n+1)+2))`
-/

namespace A206232.P2654789275674612546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206238 (A000217 (n + 1) + 2).toNat)

end

end A206232.P2654789275674612546

/-! ## A206232.P14851942397788315393

`A206238(A000096(n)+3)+A000038(n+1)`
-/

namespace A206232.P14851942397788315393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A000096 n + 3).toNat + A000038 (n + 1)

end

end A206232.P14851942397788315393

/-!
# A206233: Number of (n+1) X 4 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two equal edges, and new values 0..3 introduced in row major order.

The programs for A206233, there is no canonical definition to state claims against.
-/

/-! ## A206233.P3943920480475580728

`A206238(∑[n+2]+4)`
-/

namespace A206233.P3943920480475580728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206233.P3943920480475580728

/-! ## A206233.P5173470906642993317

`lcm(2, A206238(A167614(n+1)))`
-/

namespace A206233.P5173470906642993317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206238 (A167614 (n + 1)).toNat)

end

end A206233.P5173470906642993317

/-! ## A206233.P885678846906559478

`A206238(A167499(n)+n)+A066035(n)`
-/

namespace A206233.P885678846906559478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A167499 n + (n : ℤ)).toNat + A066035 n

end

end A206233.P885678846906559478

/-! ## A206233.P3621798377520006665

`or(A000038(n), A206238(A167499(n)+n))`
-/

namespace A206233.P3621798377520006665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A206238 (A167499 n + (n : ℤ)).toNat)

end

end A206233.P3621798377520006665

/-! ## A206233.P15232316571979287371

`A206238(A167614(n+1))+A034502(n+1)`
-/

namespace A206233.P15232316571979287371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A167614 (n + 1)).toNat + A034502 (n + 1)

end

end A206233.P15232316571979287371

/-!
# A206234: Number of (n+1) X 5 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two equal edges, and new values 0..3 introduced in row major order.

The programs for A206234, there is no canonical definition to state claims against.
-/

/-! ## A206234.P7273441508864490829

`A206238(A374004(n+1))`
-/

namespace A206234.P7273441508864490829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A374004 (n + 1)).toNat

end

end A206234.P7273441508864490829

/-! ## A206234.P6180518108155757975

`A206238(A141214(n)+7)`
-/

namespace A206234.P6180518108155757975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A141214 n + 7).toNat

end

end A206234.P6180518108155757975

/-! ## A206234.P10442393936095606532

`A206238(A167614(n+2)+1)`
-/

namespace A206234.P10442393936095606532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A167614 (n + 2) + 1).toNat

end

end A206234.P10442393936095606532

/-! ## A206234.P2129556071996597911

`A206238(A166136(n+2)-2)`
-/

namespace A206234.P2129556071996597911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A166136 (n + 2) - 2).toNat

end

end A206234.P2129556071996597911

/-! ## A206234.P12775528956724304531

`A206238(A167487(n+2)-3)`
-/

namespace A206234.P12775528956724304531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A167487 (n + 2) - 3).toNat

end

end A206234.P12775528956724304531

/-!
# A206235: Number of (n+1)X6 0..3 arrays with every 2X3 or 3X2 subblock having exactly two equal edges, and new values 0..3 introduced in row major order.

The programs for A206235, there is no canonical definition to state claims against.
-/

/-! ## A206235.P17353255011998151979

`A206238(A374005(n+1))`
-/

namespace A206235.P17353255011998151979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A374005 (n + 1)).toNat

end

end A206235.P17353255011998151979

/-! ## A206235.P281797366700358962

`A206238(A167499(n+3))`
-/

namespace A206235.P281797366700358962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A167499 (n + 3)).toNat

end

end A206235.P281797366700358962

/-! ## A206235.P9724929539016954496

`A206238(A056000(n)+15)`
-/

namespace A206235.P9724929539016954496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A056000 n + 15).toNat

end

end A206235.P9724929539016954496

/-! ## A206235.P6795782321232449415

`A206238(A051936(n+4)+14)`
-/

namespace A206235.P6795782321232449415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A051936 (n + 4) + 14).toNat

end

end A206235.P6795782321232449415

/-! ## A206235.P8219996901080362689

`A206238(eq[6, A131818(n+1)])`
-/

namespace A206235.P8219996901080362689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206235.P8219996901080362689

/-!
# A206236: Number of (n+1)X7 0..3 arrays with every 2X3 or 3X2 subblock having exactly two equal edges, and new values 0..3 introduced in row major order.

The programs for A206236, there is no canonical definition to state claims against.
-/

/-! ## A206236.P8181507451072589870

`A206238(A374007(n+1))`
-/

namespace A206236.P8181507451072589870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A374007 (n + 1)).toNat

end

end A206236.P8181507451072589870

/-! ## A206236.P8077207286006697389

`A206238(A166136(n+4))`
-/

namespace A206236.P8077207286006697389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A166136 (n + 4)).toNat

end

end A206236.P8077207286006697389

/-! ## A206236.P2234180225891812134

`A206238(A167487(n+4)-1)`
-/

namespace A206236.P2234180225891812134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A167487 (n + 4) - 1).toNat

end

end A206236.P2234180225891812134

/-! ## A206236.P3064757954356972774

`A206238(A246172(n+1)+20)`
-/

namespace A206236.P3064757954356972774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A246172 (n + 1) + 20).toNat

end

end A206236.P3064757954356972774

/-! ## A206236.P2643658591987580660

`A206238(eq[7, A131818(n+1)])`
-/

namespace A206236.P2643658591987580660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206236.P2643658591987580660

/-!
# A206237: Number of (n+1) X 8 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two equal edges, and new values 0..3 introduced in row major order.

The programs for A206237, there is no canonical definition to state claims against.
-/

/-! ## A206237.P11651240768741202942

`A206238(A374008(n+1))`
-/

namespace A206237.P11651240768741202942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A374008 (n + 1)).toNat

end

end A206237.P11651240768741202942

/-! ## A206237.P8191913134331350685

`A206238(A167614(n+5)+4)`
-/

namespace A206237.P8191913134331350685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A167614 (n + 5) + 4).toNat

end

end A206237.P8191913134331350685

/-! ## A206237.P14316418737629032171

`A206238(eq[8, A131818(n+1)])`
-/

namespace A206237.P14316418737629032171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206237.P14316418737629032171

/-! ## A206237.P17101516287004797222

`A206238(A055999(n+4))`
-/

namespace A206237.P17101516287004797222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (A055999 (n + 4)).toNat

end

end A206237.P17101516287004797222

/-! ## A206237.P10988849121978842271

`A206238(eq[4, A219347(n)])`
-/

namespace A206237.P10988849121978842271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206237.P10988849121978842271

/-!
# A206239: Subsequence A005318(t_n), where t_n is the n-th triangular number (A000217).

The programs for A206239, there is no canonical definition to state claims against.
-/

/-! ## A206239.P12679846643009619466

`A005318(∑[n])`
-/

namespace A206239.P12679846643009619466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206239.P12679846643009619466

/-! ## A206239.P13025801284923544601

`∑[A066777(∑[n])]`
-/

namespace A206239.P13025801284923544601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066777 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206239.P13025801284923544601

/-! ## A206239.P9637011231068096922

`∑[A005230(A000124(n))]-1`
-/

namespace A206239.P9637011231068096922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A206239.P9637011231068096922

/-! ## A206239.P1279168999226667779

`∑[A005230(∑[A028310(n)])]-1`
-/

namespace A206239.P1279168999226667779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A206239.P1279168999226667779

/-! ## A206239.P317557528539660679

`record[A005318(A161680(A008611(n)))]`
-/

namespace A206239.P317557528539660679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A161680 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206239.P317557528539660679

/-!
# A206240: Number of partitions of n^2-n into parts not greater than n.

The programs for A206240, there is no canonical definition to state claims against.
-/

/-! ## A206240.P16643925320756464822

`A206226(n)-A316353(A253909(n))`
-/

namespace A206240.P16643925320756464822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206226 n - A316353 (A253909 n).toNat

end

end A206240.P16643925320756464822

/-! ## A206240.P14358110794714439418

`A206226(n)-A161407(n)*A178334(n)`
-/

namespace A206240.P14358110794714439418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206226 n - A161407 n * A178334 n

end

end A206240.P14358110794714439418

/-! ## A206240.P1215362582705968069

`A347585(n)+1-A238640(n)`
-/

namespace A206240.P1215362582705968069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347585 n + (1 - A238640 n)

end

end A206240.P1215362582705968069

/-! ## A206240.P18243380243454195342

`A206226(n)+A347585(n)-A072213(n)`
-/

namespace A206240.P18243380243454195342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206226 n + (A347585 n - A072213 n)

end

end A206240.P18243380243454195342

/-! ## A206240.P83715352162898068

`A206226(n)-A161407(n)%A072213(n)`
-/

namespace A206240.P83715352162898068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206226 n - Int.tmod (A161407 n) (A072213 n)

end

end A206240.P83715352162898068

/-!
# A206241: a(n) is the smallest number of the form k*a(n-1)+a(n-2) for k>0 that is relatively prime to n, with a(0) = 0 and a(1) = 1.

The programs for A206241, there is no canonical definition to state claims against.
-/

/-! ## A206241.P11243221512248801614

`A306201(n)+A237769(A003094(n))`
-/

namespace A206241.P11243221512248801614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306201 n + A237769 (A003094 n).toNat

end

end A206241.P11243221512248801614

/-! ## A206241.P17381829217787171850

`A000360(A251140(3*n+1)+A000341(n+1))`
-/

namespace A206241.P17381829217787171850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A251140 (3 * n + 1) + A000341 (n + 1)).toNat

end

end A206241.P17381829217787171850

/-!
# A206243: In base n, you must write the first A206242(n) positive multiples of a(n) in order to write every base-n digit.

The programs for A206243, there is no canonical definition to state claims against.
-/

/-! ## A206243.P10813507763753120292

`gcd(∑[A037952(n)], A213918(n+1))`
-/

namespace A206243.P10813507763753120292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A213918 (n + 1))

end

end A206243.P10813507763753120292

/-! ## A206243.P10622860282500414807

`A333381(A013646(n))^A008302(n+1)`
-/

namespace A206243.P10622860282500414807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333381 (A013646 n).toNat : ℚ) ^ (A008302 (n + 1) : ℤ)

end

end A206243.P10622860282500414807

/-! ## A206243.P4353096691740485968

`A361725(n+2)^A345374(A001250(n))`
-/

namespace A206243.P4353096691740485968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361725 (n + 2) : ℚ) ^ (A345374 (A001250 n).toNat : ℤ)

end

end A206243.P4353096691740485968

/-! ## A206243.P3581644409304570030

`A056609(n+1)^A193929(A056603(n+1))`
-/

namespace A206243.P3581644409304570030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056609 (n + 1) : ℚ) ^ (A193929 (A056603 (n + 1)).toNat : ℤ)

end

end A206243.P3581644409304570030

/-! ## A206243.P6876803665223619566

`A056609(n+1)^A225224(A225191(n+1))`
-/

namespace A206243.P6876803665223619566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056609 (n + 1) : ℚ) ^ (A225224 (A225191 (n + 1)).toNat : ℤ)

end

end A206243.P6876803665223619566

/-!
# A206245: Number of partitions of n into repunit powers, cf. A083278.

The programs for A206245, the canonical program `A206245.P3707207278545082165` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206245 has offset 0).

The definition of A206245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206245.P8121251743902308440

`A060775(A042966(n+1)*A206244(n))`
-/

namespace A206245.P8121251743902308440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A042966 (n + 1) * A206244 n).toNat

end

end A206245.P8121251743902308440

namespace A206245

/-- `A060775(A042966(n+1)*A206244(n))` -/
def P8121251743902308440.Spec : Prop :=
  ∀ n, P8121251743902308440.a n = A206245 n

end A206245

/-! ## A206245.P2304443022216896920

`A206244(n)+A000007(A266535(n+3))`
-/

namespace A206245.P2304443022216896920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206244 n + A000007 (A266535 (n + 3)).toNat

end

end A206245.P2304443022216896920

namespace A206245

/-- `A206244(n)+A000007(A266535(n+3))` -/
def P2304443022216896920.Spec : Prop :=
  ∀ n, P2304443022216896920.a n = A206245 n

end A206245

/-! ## A206245.P14005642746085986284

`A209229(A000096(3*n))+A206244(n)`
-/

namespace A206245.P14005642746085986284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A000096 (3 * n)).toNat + A206244 n

end

end A206245.P14005642746085986284

namespace A206245

/-- `A209229(A000096(3*n))+A206244(n)` -/
def P14005642746085986284.Spec : Prop :=
  ∀ n, P14005642746085986284.a n = A206245 n

end A206245

/-! ## A206245.P17217702586968250288

`∑[A013989(A321801(n))%2]`
-/

namespace A206245.P17217702586968250288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013989 (A321801 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206245.P17217702586968250288

namespace A206245

/-- `∑[A013989(A321801(n))%2]` -/
def P17217702586968250288.Spec : Prop :=
  ∀ n, P17217702586968250288.a n = A206245 n

end A206245

/-! ## A206245.P10514260396893622679

`∑[A036987(A039915(n+1)*A321801(n))]`
-/

namespace A206245.P10514260396893622679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A039915 (n + 1) * A321801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206245.P10514260396893622679

namespace A206245

/-- `∑[A036987(A039915(n+1)*A321801(n))]` -/
def P10514260396893622679.Spec : Prop :=
  ∀ n, P10514260396893622679.a n = A206245 n

end A206245

/-! ## A206245.P17375376003358836861

`A206244(n)+A048050(A018800(n+1))`
-/

namespace A206245.P17375376003358836861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206244 n + A048050 (A018800 (n + 1)).toNat

end

end A206245.P17375376003358836861

namespace A206245

/-- `A206244(n)+A048050(A018800(n+1))` -/
def P17375376003358836861.Spec : Prop :=
  ∀ n, P17375376003358836861.a n = A206245 n

end A206245

/-! ## A206245.P7906066103553218090

`∑[and(1, A169400(3*n+1))]`
-/

namespace A206245.P7906066103553218090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A169400 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206245.P7906066103553218090

namespace A206245

/-- `∑[and(1, A169400(3*n+1))]` -/
def P7906066103553218090.Spec : Prop :=
  ∀ n, P7906066103553218090.a n = A206245 n

end A206245

/-! ## A206245.P9721996627473082670

`∑[A015582(n)^A083329(A001281(n))]`
-/

namespace A206245.P9721996627473082670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015582 n : ℚ) ^ (A083329 (A001281 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206245.P9721996627473082670

namespace A206245

/-- `∑[A015582(n)^A083329(A001281(n))]` -/
def P9721996627473082670.Spec : Prop :=
  ∀ n, P9721996627473082670.a n = (A206245 n : ℚ)

end A206245

/-! ## A206245.P11199853129381182954

`∑[A321538(n)^(n-A321538(n))]`
-/

namespace A206245.P11199853129381182954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321538 n : ℚ) ^ ((n : ℤ) - A321538 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206245.P11199853129381182954

namespace A206245

/-- `∑[A321538(n)^(n-A321538(n))]` -/
def P11199853129381182954.Spec : Prop :=
  ∀ n, P11199853129381182954.a n = (A206245 n : ℚ)

end A206245

/-! ## A206245.P14122854024929378364

`A062399(A062399(∑[A015582(n)]))`
-/

namespace A206245.P14122854024929378364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062399 (A062399 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A206245.P14122854024929378364

namespace A206245

/-- `A062399(A062399(∑[A015582(n)]))` -/
def P14122854024929378364.Spec : Prop :=
  ∀ n, P14122854024929378364.a n = A206245 n

end A206245

/-! ## A206245.P3707207278545082165

`∑[1-A011582(n²)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206245

/-- `∑[1-A011582(n²)]` -/
def P3707207278545082165.Spec : Prop :=
  ∀ n, P3707207278545082165.a n = A206245 n

theorem P3707207278545082165.correct : P3707207278545082165.Spec := by
  intro n
  simp only [A206245]

end A206245

/-! ## A206245.P638267403474682637

`∑[1-A070596(n²)]`
-/

namespace A206245.P638267403474682637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070596 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206245.P638267403474682637

namespace A206245

/-- `∑[1-A070596(n²)]` -/
def P638267403474682637.Spec : Prop :=
  ∀ n, P638267403474682637.a n = A206245 n

end A206245

/-!
# A206246: Numbers k such that the greatest prime divisor p of k^2+1 has the property that (p - k)^2 + 1 = p.

The programs for A206246, there is no canonical definition to state claims against.
-/

/-! ## A206246.P12778244775194331999

`A002061(∑[∏{e}[A317222(3*n+1), #]])`
-/

namespace A206246.P12778244775194331999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206246.P12778244775194331999

/-! ## A206246.P16076643220464966829

`A002061(lt[A252284(n), A268448(2*n+1)])`
-/

namespace A206246.P16076643220464966829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A206246.P16076643220464966829

/-! ## A206246.P1095943948267043040

`A002061(lt[A277103(n), n+1])`
-/

namespace A206246.P1095943948267043040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277103 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A206246.P1095943948267043040

/-! ## A206246.P648053294315679819

`A002061(eq[A088152(n), A326595(n)])`
-/

namespace A206246.P648053294315679819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A206246.P648053294315679819

/-! ## A206246.P12154998840398584052

`A002061(lt[A086420(2*n+1), A257250(2*n+1)])`
-/

namespace A206246.P12154998840398584052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086420 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257250 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A206246.P12154998840398584052

/-!
# A206247: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having zero permanent.

The programs for A206247, there is no canonical definition to state claims against.
-/

/-! ## A206247.P12179904016852251689

`A206255(∑[4*n]+1)`
-/

namespace A206247.P12179904016852251689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206247.P12179904016852251689

/-!
# A206248: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having zero permanent.

The programs for A206248, the canonical program `A206248.P13373067693265073131` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206248 has offset 1).

The definition of A206248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206248.P13373067693265073131

`record[a(n-1)+3*a(n-2)]²` with `a(0)=7, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206248

/-- `record[a(n-1)+3*a(n-2)]²` -/
def P13373067693265073131.Spec : Prop :=
  ∀ n, (P13373067693265073131.a n : ℤ) = A206248 (n + 1)

theorem P13373067693265073131.correct : P13373067693265073131.Spec := by
  intro n
  simp only [A206248, Nat.add_sub_cancel]

end A206248

/-! ## A206248.P4774719185725640986

`A006130(n+3)²`
-/

namespace A206248.P4774719185725640986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 3) ^ 2

end

end A206248.P4774719185725640986

namespace A206248

/-- `A006130(n+3)²` -/
def P4774719185725640986.Spec : Prop :=
  ∀ n, P4774719185725640986.a n = A206248 (n + 1)

end A206248

/-! ## A206248.P6224936212740800430

`A140167(n+4)²`
-/

namespace A206248.P6224936212740800430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140167 (n + 4) ^ 2

end

end A206248.P6224936212740800430

namespace A206248

/-- `A140167(n+4)²` -/
def P6224936212740800430.Spec : Prop :=
  ∀ n, P6224936212740800430.a n = A206248 (n + 1)

end A206248

/-! ## A206248.P15220204487546627396

`A182228(n+4)²`
-/

namespace A206248.P15220204487546627396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 (n + 4) ^ 2

end

end A206248.P15220204487546627396

namespace A206248

/-- `A182228(n+4)²` -/
def P15220204487546627396.Spec : Prop :=
  ∀ n, P15220204487546627396.a n = A206248 (n + 1)

end A206248

/-! ## A206248.P2527115356565443743

`Δ[A099232(n+3)]²`
-/

namespace A206248.P2527115356565443743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099232 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206248.P2527115356565443743

namespace A206248

/-- `Δ[A099232(n+3)]²` -/
def P2527115356565443743.Spec : Prop :=
  ∀ n, P2527115356565443743.a n = A206248 (n + 1)

end A206248

/-! ## A206248.P9467561608587597964

`Δ[A140165(n+4)]²`
-/

namespace A206248.P9467561608587597964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206248.P9467561608587597964

namespace A206248

/-- `Δ[A140165(n+4)]²` -/
def P9467561608587597964.Spec : Prop :=
  ∀ n, P9467561608587597964.a n = A206248 (n + 1)

end A206248

/-! ## A206248.P13995237841264572968

`(A176737(n+2)+A176737(n+3))²`
-/

namespace A206248.P13995237841264572968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176737 (n + 2) + A176737 (n + 3)) ^ 2

end

end A206248.P13995237841264572968

namespace A206248

/-- `(A176737(n+2)+A176737(n+3))²` -/
def P13995237841264572968.Spec : Prop :=
  ∀ n, P13995237841264572968.a n = A206248 (n + 1)

end A206248

/-!
# A206249: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having zero permanent.

The programs for A206249, there is no canonical definition to state claims against.
-/

/-! ## A206249.P4974947733176816503

`A206255(∑[n+1]+2)`
-/

namespace A206249.P4974947733176816503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206249.P4974947733176816503

/-! ## A206249.P12547170247877092792

`record[A010054(n)*A206255(n+2)]`
-/

namespace A206249.P12547170247877092792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206249.P12547170247877092792

/-! ## A206249.P13049944375173315075

`record[A206255(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A206249.P13049944375173315075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206249.P13049944375173315075

/-! ## A206249.P18223030482272724957

`record[A206255(Δ[A003453(n+5)])]`
-/

namespace A206249.P18223030482272724957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206249.P18223030482272724957

/-! ## A206249.P14574963329195216121

`record[A206255(A003453(n+6)-A003453(n+5))]`
-/

namespace A206249.P14574963329195216121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A003453 (n + 6) - A003453 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206249.P14574963329195216121

/-!
# A206250: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock having zero permanent.

The programs for A206250, there is no canonical definition to state claims against.
-/

/-! ## A206250.P2931469474703903096

`A206255(∑[n+2]+4)`
-/

namespace A206250.P2931469474703903096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206250.P2931469474703903096

/-! ## A206250.P5379790587408699458

`lcm(2, A206255(A167614(n+1)))`
-/

namespace A206250.P5379790587408699458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206255 (A167614 (n + 1)).toNat)

end

end A206250.P5379790587408699458

/-! ## A206250.P7030869263101768976

`A206255(A167614(n+1))+A025469(n)`
-/

namespace A206250.P7030869263101768976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A167614 (n + 1)).toNat + A025469 n

end

end A206250.P7030869263101768976

/-! ## A206250.P15262522551571100809

`A206255(A167614(n+1))+A034512(n+1)`
-/

namespace A206250.P15262522551571100809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A167614 (n + 1)).toNat + A034512 (n + 1)

end

end A206250.P15262522551571100809

/-! ## A206250.P2647143229138928287

`A206255(A167614(n+1))%A224971(n+1)`
-/

namespace A206250.P2647143229138928287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206255 (A167614 (n + 1)).toNat) (A224971 (n + 1))

end

end A206250.P2647143229138928287

/-!
# A206251: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having zero permanent.

The programs for A206251, there is no canonical definition to state claims against.
-/

/-! ## A206251.P16276321960324846253

`A206255(A052905(n)+9)`
-/

namespace A206251.P16276321960324846253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A052905 n + 9).toNat

end

end A206251.P16276321960324846253

/-! ## A206251.P16085169998322848270

`A206255(A055999(n)+10)`
-/

namespace A206251.P16085169998322848270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A055999 n + 10).toNat

end

end A206251.P16085169998322848270

/-! ## A206251.P17369099577786343480

`A206255(A167614(n+2)+1)`
-/

namespace A206251.P17369099577786343480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A167614 (n + 2) + 1).toNat

end

end A206251.P17369099577786343480

/-! ## A206251.P4962261772828766883

`A206255(A141214(n+1))`
-/

namespace A206251.P4962261772828766883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A141214 (n + 1)).toNat

end

end A206251.P4962261772828766883

/-! ## A206251.P4700526873694976592

`A206255(A374004(n+1))`
-/

namespace A206251.P4700526873694976592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A374004 (n + 1)).toNat

end

end A206251.P4700526873694976592

/-!
# A206252: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having zero permanent.

The programs for A206252, there is no canonical definition to state claims against.
-/

/-! ## A206252.P6232865512366123154

`A206255(A167499(n+3))`
-/

namespace A206252.P6232865512366123154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A167499 (n + 3)).toNat

end

end A206252.P6232865512366123154

/-! ## A206252.P9807209093801724221

`A206255(A374005(n+1))`
-/

namespace A206252.P9807209093801724221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A374005 (n + 1)).toNat

end

end A206252.P9807209093801724221

/-!
# A206253: Number of (n+1)X7 0..3 arrays with every 2X2 subblock having zero permanent.

The programs for A206253, there is no canonical definition to state claims against.
-/

/-! ## A206253.P16814135242832909949

`A206255(A374007(n+1))`
-/

namespace A206253.P16814135242832909949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A374007 (n + 1)).toNat

end

end A206253.P16814135242832909949

/-! ## A206253.P14282523911482410414

`A206255(A052905(n+3))`
-/

namespace A206253.P14282523911482410414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (A052905 (n + 3)).toNat

end

end A206253.P14282523911482410414

/-!
# A206255: T(n,k) = Number of (n+1) X (k+1) 0..3 arrays with every 2 X 2 subblock having zero permanent.

The programs for A206255, there is no canonical definition to state claims against.
-/

/-! ## A206255.P13644758411842965406

`A224975(n+1)-A204876(n+1)`
-/

namespace A206255.P13644758411842965406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (n + 1) - A204876 (n + 1)

end

end A206255.P13644758411842965406

/-!
# A206257: Values of S(1) such that any Mersenne prime with an odd exponent p divides S(p-2), where S(n) == S(n-1)^2 - 2 (mod M(p)).

The programs for A206257, there is no canonical definition to state claims against.
-/

/-! ## A206257.P13417306897854610439

`A018844(n+1)²-2`
-/

namespace A206257.P13417306897854610439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018844 (n + 1) ^ 2 - 2

end

end A206257.P13417306897854610439

/-!
# A206258: 1/8 the number of 2 X 2 -n..n arrays with a 2 X 2 -n..n inverse, i.e., with determinant +-1.

The programs for A206258, the canonical program `A206258.P13828075839344405108` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206258 has offset 1).

The definition of A206258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206258.P13828075839344405108

`8*A002088(n+1)-3`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A206258

/-- `8*A002088(n+1)-3` -/
def P13828075839344405108.Spec : Prop :=
  ∀ n, P13828075839344405108.a n = A206258 (n + 1)

theorem P13828075839344405108.correct : P13828075839344405108.Spec := by
  intro n
  simp only [A206258, Nat.add_sub_cancel]

end A206258

/-! ## A206258.P4612424702901432466

`a(n-1)+8*A000010(n+1)` with `a(0)=5`
-/

namespace A206258.P4612424702901432466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 8 * A000010 (n + 1)

end

end A206258.P4612424702901432466

namespace A206258

/-- `a(n-1)+8*A000010(n+1)` -/
def P4612424702901432466.Spec : Prop :=
  ∀ n, P4612424702901432466.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P5974540273063517471

`A137243(n+1)-3`
-/

namespace A206258.P5974540273063517471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137243 (n + 1) - 3

end

end A206258.P5974540273063517471

namespace A206258

/-- `A137243(n+1)-3` -/
def P5974540273063517471.Spec : Prop :=
  ∀ n, P5974540273063517471.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P3173111976143621974

`Δ[8*A103116(n)]-3`
-/

namespace A206258.P3173111976143621974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A206258.P3173111976143621974

namespace A206258

/-- `Δ[8*A103116(n)]-3` -/
def P3173111976143621974.Spec : Prop :=
  ∀ n, P3173111976143621974.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P7487328365816627189

`4*A018805(n+1)+1`
-/

namespace A206258.P7487328365816627189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A018805 (n + 1) + 1

end

end A206258.P7487328365816627189

namespace A206258

/-- `4*A018805(n+1)+1` -/
def P7487328365816627189.Spec : Prop :=
  ∀ n, P7487328365816627189.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P15541726860561894477

`2*A140466(n+1)-3`
-/

namespace A206258.P15541726860561894477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140466 (n + 1) - 3

end

end A206258.P15541726860561894477

namespace A206258

/-- `2*A140466(n+1)-3` -/
def P15541726860561894477.Spec : Prop :=
  ∀ n, P15541726860561894477.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P8540179661574528283

`∑[2*A002246(n+1)]-1`
-/

namespace A206258.P8540179661574528283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A206258.P8540179661574528283

namespace A206258

/-- `∑[2*A002246(n+1)]-1` -/
def P8540179661574528283.Spec : Prop :=
  ∀ n, P8540179661574528283.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P18417572546255986747

`4*∑[A140434(n+1)]+1`
-/

namespace A206258.P18417572546255986747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A206258.P18417572546255986747

namespace A206258

/-- `4*∑[A140434(n+1)]+1` -/
def P18417572546255986747.Spec : Prop :=
  ∀ n, P18417572546255986747.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P5850395659540455113

`∑[8*A000010(n+1)]-3`
-/

namespace A206258.P5850395659540455113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A206258.P5850395659540455113

namespace A206258

/-- `∑[8*A000010(n+1)]-3` -/
def P5850395659540455113.Spec : Prop :=
  ∀ n, P5850395659540455113.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P14860530165949419271

`2*(A100449(n+1)-3)+1`
-/

namespace A206258.P14860530165949419271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100449 (n + 1) - 3) + 1

end

end A206258.P14860530165949419271

namespace A206258

/-- `2*(A100449(n+1)-3)+1` -/
def P14860530165949419271.Spec : Prop :=
  ∀ n, P14860530165949419271.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P1301891151937487580

`∑[8*(A109606(n+1)+1)]-3`
-/

namespace A206258.P1301891151937487580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A206258.P1301891151937487580

namespace A206258

/-- `∑[8*(A109606(n+1)+1)]-3` -/
def P1301891151937487580.Spec : Prop :=
  ∀ n, P1301891151937487580.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P16819108875751716469

`A018805(n+1)+A278049(n+1)+A278049(n+1)`
-/

namespace A206258.P16819108875751716469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (A278049 (n + 1) + A278049 (n + 1))

end

end A206258.P16819108875751716469

namespace A206258

/-- `A018805(n+1)+A278049(n+1)+A278049(n+1)` -/
def P16819108875751716469.Spec : Prop :=
  ∀ n, P16819108875751716469.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P2369602017300053179

`A209982(n+1)/4`
-/

namespace A206258.P2369602017300053179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209982 (n + 1) : ℚ) / 4

end

end A206258.P2369602017300053179

namespace A206258

/-- `A209982(n+1)/4` -/
def P2369602017300053179.Spec : Prop :=
  ∀ n, P2369602017300053179.a n = (A206258 (n + 1) : ℚ)

end A206258

/-! ## A206258.P8860069445968423938

`2*A171503(n+1)-1`
-/

namespace A206258.P8860069445968423938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171503 (n + 1) - 1

end

end A206258.P8860069445968423938

namespace A206258

/-- `2*A171503(n+1)-1` -/
def P8860069445968423938.Spec : Prop :=
  ∀ n, P8860069445968423938.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P18367908290839684953

`4*(n+1)+A209979(n+1)+1`
-/

namespace A206258.P18367908290839684953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + (A209979 (n + 1) + 1)

end

end A206258.P18367908290839684953

namespace A206258

/-- `4*(n+1)+A209979(n+1)+1` -/
def P18367908290839684953.Spec : Prop :=
  ∀ n, P18367908290839684953.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P4286770262089733001

`A057428(n+1)+2*A171503(n+1)`
-/

namespace A206258.P4286770262089733001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + 2 * A171503 (n + 1)

end

end A206258.P4286770262089733001

namespace A206258

/-- `A057428(n+1)+2*A171503(n+1)` -/
def P4286770262089733001.Spec : Prop :=
  ∀ n, P4286770262089733001.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P8623560028839651162

`A018805(n+1)+A171503(n+1)+A018805(n+1)`
-/

namespace A206258.P8623560028839651162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (A171503 (n + 1) + A018805 (n + 1))

end

end A206258.P8623560028839651162

namespace A206258

/-- `A018805(n+1)+A171503(n+1)+A018805(n+1)` -/
def P8623560028839651162.Spec : Prop :=
  ∀ n, P8623560028839651162.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P9836417743057708934

`A171503(n+1)+A171503(n+1)-A057427(n+1)`
-/

namespace A206258.P9836417743057708934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 (n + 1) + (A171503 (n + 1) - A057427 (n + 1))

end

end A206258.P9836417743057708934

namespace A206258

/-- `A171503(n+1)+A171503(n+1)-A057427(n+1)` -/
def P9836417743057708934.Spec : Prop :=
  ∀ n, P9836417743057708934.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P10848648259247232774

`2*A326354(n+1)-1`
-/

namespace A206258.P10848648259247232774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326354 (n + 1) - 1

end

end A206258.P10848648259247232774

namespace A206258

/-- `2*A326354(n+1)-1` -/
def P10848648259247232774.Spec : Prop :=
  ∀ n, P10848648259247232774.a n = A206258 (n + 1)

end A206258

/-! ## A206258.P10738360619535406528

`A018805(n+1)+A326354(n+1)+A018805(n+1)`
-/

namespace A206258.P10738360619535406528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (A326354 (n + 1) + A018805 (n + 1))

end

end A206258.P10738360619535406528

namespace A206258

/-- `A018805(n+1)+A326354(n+1)+A018805(n+1)` -/
def P10738360619535406528.Spec : Prop :=
  ∀ n, P10738360619535406528.a n = A206258 (n + 1)

end A206258

/-!
# A206259: Number of (n+1) X (n+1) 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A206259, there is no canonical definition to state claims against.
-/

/-! ## A206259.P1365431670348162883

`A206267(∑[4*n]+1)`
-/

namespace A206259.P1365431670348162883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206259.P1365431670348162883

/-! ## A206259.P295567474482338307

`lcm(2, A206267(A001844(n)))`
-/

namespace A206259.P295567474482338307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206267 (A001844 n).toNat)

end

end A206259.P295567474482338307

/-! ## A206259.P9202185083240072343

`record[gcd(A049581(n), A206267(n+1))]`
-/

namespace A206259.P9202185083240072343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A206267 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206259.P9202185083240072343

/-! ## A206259.P6048248411621984104

`record[A203994(n+1)*A206267(n+1)]`
-/

namespace A206259.P6048248411621984104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A206267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206259.P6048248411621984104

/-! ## A206259.P15477946582157131833

`record[A206267(n+1)/A253146(n+1)]`
-/

namespace A206259.P15477946582157131833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206267 (n + 1) : ℚ) / (A253146 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206259.P15477946582157131833

/-! ## A206259.P4278958659978467939

`A206267(∑[A008574(n)])%A204090(n+2)²`
-/

namespace A206259.P4278958659978467939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A204090 (n + 2) ^ 2)

end

end A206259.P4278958659978467939

/-!
# A206260: Number of (n+1) X 2 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A206260, the canonical program `A206260.P352157472783298041` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206260 has offset 1).

The definition of A206260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206260.P352157472783298041

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=16, a(1)=24, a(2)=34, a(3)=50, a(4)=72, a(5)=105`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206260

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P352157472783298041.Spec : Prop :=
  ∀ n, P352157472783298041.a n = A206260 (n + 1)

theorem P352157472783298041.correct : P352157472783298041.Spec := by
  intro n
  simp only [A206260, Nat.add_sub_cancel]

end A206260

/-! ## A206260.P2767855803990289006

`A206267(∑[n]+1)`
-/

namespace A206260.P2767855803990289006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206260.P2767855803990289006

namespace A206260

/-- `A206267(∑[n]+1)` -/
def P2767855803990289006.Spec : Prop :=
  ∀ n, P2767855803990289006.a n = A206260 (n + 1)

end A206260

/-! ## A206260.P12389212897122473869

`record[A206267(A246276(n+1))]`
-/

namespace A206260.P12389212897122473869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206260.P12389212897122473869

namespace A206260

/-- `record[A206267(A246276(n+1))]` -/
def P12389212897122473869.Spec : Prop :=
  ∀ n, P12389212897122473869.a n = A206260 (n + 1)

end A206260

/-! ## A206260.P8550385653535771650

`record[A206267(n+1)/A204026(n+1)]`
-/

namespace A206260.P8550385653535771650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206267 (n + 1) : ℚ) / (A204026 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206260.P8550385653535771650

namespace A206260

/-- `record[A206267(n+1)/A204026(n+1)]` -/
def P8550385653535771650.Spec : Prop :=
  ∀ n, P8550385653535771650.a n = (A206260 (n + 1) : ℚ)

end A206260

/-! ## A206260.P12227533692632756918

`A000034(2*n)*A206267(A000124(n))`
-/

namespace A206260.P12227533692632756918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A206267 (A000124 n).toNat

end

end A206260.P12227533692632756918

namespace A206260

/-- `A000034(2*n)*A206267(A000124(n))` -/
def P12227533692632756918.Spec : Prop :=
  ∀ n, P12227533692632756918.a n = A206260 (n + 1)

end A206260

/-! ## A206260.P3118801954739078145

`A206267(A000124(n))%A253153(n+1)`
-/

namespace A206260.P3118801954739078145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206267 (A000124 n).toNat) (A253153 (n + 1))

end

end A206260.P3118801954739078145

namespace A206260

/-- `A206267(A000124(n))%A253153(n+1)` -/
def P3118801954739078145.Spec : Prop :=
  ∀ n, P3118801954739078145.a n = A206260 (n + 1)

end A206260

/-! ## A206260.P16752975338090208393

`A087049(n*n)*A206267(A000217(n)+1)`
-/

namespace A206260.P16752975338090208393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (n * n) * A206267 (A000217 n + 1).toNat

end

end A206260.P16752975338090208393

namespace A206260

/-- `A087049(n*n)*A206267(A000217(n)+1)` -/
def P16752975338090208393.Spec : Prop :=
  ∀ n, P16752975338090208393.a n = A206260 (n + 1)

end A206260

/-! ## A206260.P10902769404169139663

`record[A206267(n+1)/A113187(n)]`
-/

namespace A206260.P10902769404169139663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206267 (n + 1) : ℚ) / (A113187 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206260.P10902769404169139663

namespace A206260

/-- `record[A206267(n+1)/A113187(n)]` -/
def P10902769404169139663.Spec : Prop :=
  ∀ n, P10902769404169139663.a n = (A206260 (n + 1) : ℚ)

end A206260

/-! ## A206260.P13069035626505258710

`xor(1, xor(1, A206267(A000217(n+1))))`
-/

namespace A206260.P13069035626505258710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A206267 (A000217 (n + 1)).toNat))

end

end A206260.P13069035626505258710

namespace A206260

/-- `xor(1, xor(1, A206267(A000217(n+1))))` -/
def P13069035626505258710.Spec : Prop :=
  ∀ n, P13069035626505258710.a n = A206260 (n + 1)

end A206260

/-! ## A206260.P10760307446028016746

`lcm(A033999(n), A206267(A000096(n)+1))`
-/

namespace A206260.P10760307446028016746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206267 (A000096 n + 1).toNat)

end

end A206260.P10760307446028016746

namespace A206260

/-- `lcm(A033999(n), A206267(A000096(n)+1))` -/
def P10760307446028016746.Spec : Prop :=
  ∀ n, (P10760307446028016746.a n : ℤ) = A206260 (n + 1)

end A206260

/-!
# A206261: Number of (n+1) X 3 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A206261, the canonical program `A206261.P9524807714565081881` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206261 has offset 1).

The definition of A206261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206261.P9524807714565081881

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=24, a(1)=28, a(2)=44, a(3)=64, a(4)=93, a(5)=128`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206261

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P9524807714565081881.Spec : Prop :=
  ∀ n, P9524807714565081881.a n = A206261 (n + 1)

theorem P9524807714565081881.correct : P9524807714565081881.Spec := by
  intro n
  simp only [A206261, Nat.add_sub_cancel]

end A206261

/-! ## A206261.P6663010478729995945

`A206267(∑[n+1]+2)`
-/

namespace A206261.P6663010478729995945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206261.P6663010478729995945

namespace A206261

/-- `A206267(∑[n+1]+2)` -/
def P6663010478729995945.Spec : Prop :=
  ∀ n, P6663010478729995945.a n = A206261 (n + 1)

end A206261

/-! ## A206261.P2771328631968807671

`A206267(C(n+2, 2)+2)%A270698(n+1)`
-/

namespace A206261.P2771328631968807671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206267 (Nat.choose (n + 2) 2 + 2)) (A270698 (n + 1))

end

end A206261.P2771328631968807671

namespace A206261

/-- `A206267(C(n+2, 2)+2)%A270698(n+1)` -/
def P2771328631968807671.Spec : Prop :=
  ∀ n, P2771328631968807671.a n = A206261 (n + 1)

end A206261

/-! ## A206261.P2230510373297495932

`A206267(A133263(n+1))%A138334(n)`
-/

namespace A206261.P2230510373297495932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206267 (A133263 (n + 1)).toNat) (A138334 n)

end

end A206261.P2230510373297495932

namespace A206261

/-- `A206267(A133263(n+1))%A138334(n)` -/
def P2230510373297495932.Spec : Prop :=
  ∀ n, P2230510373297495932.a n = A206261 (n + 1)

end A206261

/-! ## A206261.P12930339685619185026

`lcm(A033999(n), A206267(A000096(n)+3))`
-/

namespace A206261.P12930339685619185026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206267 (A000096 n + 3).toNat)

end

end A206261.P12930339685619185026

namespace A206261

/-- `lcm(A033999(n), A206267(A000096(n)+3))` -/
def P12930339685619185026.Spec : Prop :=
  ∀ n, (P12930339685619185026.a n : ℤ) = A206261 (n + 1)

end A206261

/-! ## A206261.P1359181446259468245

`A206267(A133263(n+1))+A000038(n+1)`
-/

namespace A206261.P1359181446259468245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A133263 (n + 1)).toNat + A000038 (n + 1)

end

end A206261.P1359181446259468245

namespace A206261

/-- `A206267(A133263(n+1))+A000038(n+1)` -/
def P1359181446259468245.Spec : Prop :=
  ∀ n, P1359181446259468245.a n = A206261 (n + 1)

end A206261

/-! ## A206261.P5634927014751228883

`A206267(A000096(n)+3)%A063991(n+1)`
-/

namespace A206261.P5634927014751228883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206267 (A000096 n + 3).toNat) (A063991 (n + 1))

end

end A206261.P5634927014751228883

namespace A206261

/-- `A206267(A000096(n)+3)%A063991(n+1)` -/
def P5634927014751228883.Spec : Prop :=
  ∀ n, P5634927014751228883.a n = A206261 (n + 1)

end A206261

/-! ## A206261.P1144524800751364920

`A007318(C(2, n))*A206267(A133263(n+1))`
-/

namespace A206261.P1144524800751364920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A206267 (A133263 (n + 1)).toNat

end

end A206261.P1144524800751364920

namespace A206261

/-- `A007318(C(2, n))*A206267(A133263(n+1))` -/
def P1144524800751364920.Spec : Prop :=
  ∀ n, P1144524800751364920.a n = A206261 (n + 1)

end A206261

/-! ## A206261.P11100834986311940751

`A000027(A206267(∑[n+2]))`
-/

namespace A206261.P11100834986311940751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A206267 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206261.P11100834986311940751

namespace A206261

/-- `A000027(A206267(∑[n+2]))` -/
def P11100834986311940751.Spec : Prop :=
  ∀ n, P11100834986311940751.a n = A206261 (n + 1)

end A206261

/-! ## A206261.P2163021050880757651

`A033999(2*n)*A206267(A000096(n+1))`
-/

namespace A206261.P2163021050880757651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A206267 (A000096 (n + 1)).toNat

end

end A206261.P2163021050880757651

namespace A206261

/-- `A033999(2*n)*A206267(A000096(n+1))` -/
def P2163021050880757651.Spec : Prop :=
  ∀ n, P2163021050880757651.a n = A206261 (n + 1)

end A206261

/-! ## A206261.P2423697474725062957

`A206267(A000096(n+1))/A033999(n+1)²`
-/

namespace A206261.P2423697474725062957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206267 (A000096 (n + 1)).toNat : ℚ) / (A033999 (n + 1) ^ 2 : ℚ)

end

end A206261.P2423697474725062957

namespace A206261

/-- `A206267(A000096(n+1))/A033999(n+1)²` -/
def P2423697474725062957.Spec : Prop :=
  ∀ n, P2423697474725062957.a n = (A206261 (n + 1) : ℚ)

end A206261

/-!
# A206262: Number of (n+1) X 4 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A206262, the canonical program `A206262.P2148055122179130306` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206262 has offset 1).

The definition of A206262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206262.P2148055122179130306

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=34, a(1)=44, a(2)=78, a(3)=135, a(4)=218, a(5)=339, a(6)=503`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206262

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P2148055122179130306.Spec : Prop :=
  ∀ n, P2148055122179130306.a n = A206262 (n + 1)

theorem P2148055122179130306.correct : P2148055122179130306.Spec := by
  intro n
  simp only [A206262, Nat.add_sub_cancel]

end A206262

/-! ## A206262.P8379828037593199727

`A206267(∑[n+2]+4)`
-/

namespace A206262.P8379828037593199727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206262.P8379828037593199727

namespace A206262

/-- `A206267(∑[n+2]+4)` -/
def P8379828037593199727.Spec : Prop :=
  ∀ n, P8379828037593199727.a n = A206262 (n + 1)

end A206262

/-! ## A206262.P5541877502137627217

`record[A206267(6-∑[2-n])]`
-/

namespace A206262.P5541877502137627217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (6 - ∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206262.P5541877502137627217

namespace A206262

/-- `record[A206267(6-∑[2-n])]` -/
def P5541877502137627217.Spec : Prop :=
  ∀ n, P5541877502137627217.a n = A206262 (n + 1)

end A206262

/-! ## A206262.P3005866489240912539

`(A206267(A167614(n+1))^(1/2))²`
-/

namespace A206262.P3005866489240912539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A206267 (A167614 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A206262.P3005866489240912539

namespace A206262

/-- `(A206267(A167614(n+1))^(1/2))²` -/
def P3005866489240912539.Spec : Prop :=
  ∀ n, P3005866489240912539.a n = (A206262 (n + 1) : ℝ)

end A206262

/-! ## A206262.P8157312817124690316

`or(A000038(n), A206267(A167614(n+1)))`
-/

namespace A206262.P8157312817124690316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A206267 (A167614 (n + 1)).toNat)

end

end A206262.P8157312817124690316

namespace A206262

/-- `or(A000038(n), A206267(A167614(n+1)))` -/
def P8157312817124690316.Spec : Prop :=
  ∀ n, P8157312817124690316.a n = A206262 (n + 1)

end A206262

/-! ## A206262.P2861973463972962879

`A206267(A167614(n+1))+A000038(n+1)`
-/

namespace A206262.P2861973463972962879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A206262.P2861973463972962879

namespace A206262

/-- `A206267(A167614(n+1))+A000038(n+1)` -/
def P2861973463972962879.Spec : Prop :=
  ∀ n, P2861973463972962879.a n = A206262 (n + 1)

end A206262

/-! ## A206262.P1003008359358078071

`A206267(A167614(n+1))+A000035(2*n)`
-/

namespace A206262.P1003008359358078071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A206262.P1003008359358078071

namespace A206262

/-- `A206267(A167614(n+1))+A000035(2*n)` -/
def P1003008359358078071.Spec : Prop :=
  ∀ n, P1003008359358078071.a n = A206262 (n + 1)

end A206262

/-! ## A206262.P1088233322061562143

`A001511(2*n+1)*A206267(A167614(n+1))`
-/

namespace A206262.P1088233322061562143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A206267 (A167614 (n + 1)).toNat

end

end A206262.P1088233322061562143

namespace A206262

/-- `A001511(2*n+1)*A206267(A167614(n+1))` -/
def P1088233322061562143.Spec : Prop :=
  ∀ n, P1088233322061562143.a n = A206262 (n + 1)

end A206262

/-! ## A206262.P6836498302144508309

`A001222(A077800(n+1))*A206267(A167614(n+1))`
-/

namespace A206262.P6836498302144508309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077800 (n + 1)).toNat * A206267 (A167614 (n + 1)).toNat

end

end A206262.P6836498302144508309

namespace A206262

/-- `A001222(A077800(n+1))*A206267(A167614(n+1))` -/
def P6836498302144508309.Spec : Prop :=
  ∀ n, P6836498302144508309.a n = A206262 (n + 1)

end A206262

/-! ## A206262.P6162712856308491648

`lcm(A033999(n), A206267(A034856(n+2)))`
-/

namespace A206262.P6162712856308491648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206267 (A034856 (n + 2)).toNat)

end

end A206262.P6162712856308491648

namespace A206262

/-- `lcm(A033999(n), A206267(A034856(n+2)))` -/
def P6162712856308491648.Spec : Prop :=
  ∀ n, (P6162712856308491648.a n : ℤ) = A206262 (n + 1)

end A206262

/-! ## A206262.P13300128051835737074

`or(A000038(n), A206267(A034856(n+2)))`
-/

namespace A206262.P13300128051835737074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A206267 (A034856 (n + 2)).toNat)

end

end A206262.P13300128051835737074

namespace A206262

/-- `or(A000038(n), A206267(A034856(n+2)))` -/
def P13300128051835737074.Spec : Prop :=
  ∀ n, P13300128051835737074.a n = A206262 (n + 1)

end A206262

/-!
# A206263: Number of (n+1) X 5 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A206263, there is no canonical definition to state claims against.
-/

/-! ## A206263.P17697077608517669282

`A206267(A052905(n)+9)`
-/

namespace A206263.P17697077608517669282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A052905 n + 9).toNat

end

end A206263.P17697077608517669282

/-! ## A206263.P1957288978619966686

`A206267(A055999(n)+10)`
-/

namespace A206263.P1957288978619966686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A055999 n + 10).toNat

end

end A206263.P1957288978619966686

/-! ## A206263.P12339543430515382145

`A206267(A167614(n+2)+1)`
-/

namespace A206263.P12339543430515382145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A167614 (n + 2) + 1).toNat

end

end A206263.P12339543430515382145

/-! ## A206263.P14528423599258079174

`A206267(A166136(n+2)-2)`
-/

namespace A206263.P14528423599258079174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A166136 (n + 2) - 2).toNat

end

end A206263.P14528423599258079174

/-! ## A206263.P414981083449500844

`A206267(A046691(n+1)+8)`
-/

namespace A206263.P414981083449500844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A046691 (n + 1) + 8).toNat

end

end A206263.P414981083449500844

/-! ## A206263.P9610434860593347788

`A206267(A166136(n+1)+1+n)`
-/

namespace A206263.P9610434860593347788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A206263.P9610434860593347788

/-! ## A206263.P15297888795668879977

`A206267(∑[n+4]+3)`
-/

namespace A206263.P15297888795668879977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A206263.P15297888795668879977

/-!
# A206264: Number of (n+1) X 6 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A206264, there is no canonical definition to state claims against.
-/

/-! ## A206264.P3851974356479585779

`A206267(A167499(n+3))`
-/

namespace A206264.P3851974356479585779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A167499 (n + 3)).toNat

end

end A206264.P3851974356479585779

/-! ## A206264.P9195709148868662699

`A206267(A166136(n+3)-1)`
-/

namespace A206264.P9195709148868662699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A166136 (n + 3) - 1).toNat

end

end A206264.P9195709148868662699

/-! ## A206264.P15090321960282891435

`A206267(A167614(n+3)+2)`
-/

namespace A206264.P15090321960282891435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A167614 (n + 3) + 2).toNat

end

end A206264.P15090321960282891435

/-! ## A206264.P7481642699523339431

`A206267(A046691(n+2)+9)`
-/

namespace A206264.P7481642699523339431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A046691 (n + 2) + 9).toNat

end

end A206264.P7481642699523339431

/-! ## A206264.P7202225658210124584

`A206267(A052905(n+1)+10)`
-/

namespace A206264.P7202225658210124584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A052905 (n + 1) + 10).toNat

end

end A206264.P7202225658210124584

/-! ## A206264.P2690912260345491945

`A206267(A055999(n+1)+11)`
-/

namespace A206264.P2690912260345491945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A055999 (n + 1) + 11).toNat

end

end A206264.P2690912260345491945

/-! ## A206264.P17504628505844416936

`A206267(∑[n+5]+6)`
-/

namespace A206264.P17504628505844416936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A206264.P17504628505844416936

/-!
# A206265: Number of (n+1) X 7 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A206265, there is no canonical definition to state claims against.
-/

/-! ## A206265.P2304495738966792974

`A206267(∑[n+5]+16)`
-/

namespace A206265.P2304495738966792974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A206265.P2304495738966792974

/-! ## A206265.P3520979699039666481

`lcm(A133186(n), A206267(A056115(n)+21))`
-/

namespace A206265.P3520979699039666481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A133186 n) (A206267 (A056115 n + 21).toNat)

end

end A206265.P3520979699039666481

/-! ## A206265.P17832345308890236175

`lcm(A033999(n), A206267(A167499(n+4)+1))`
-/

namespace A206265.P17832345308890236175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206267 (A167499 (n + 4) + 1).toNat)

end

end A206265.P17832345308890236175

/-! ## A206265.P13008223826186348939

`lcm(A000034(n), A206267(A000124(n+5)+5))`
-/

namespace A206265.P13008223826186348939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A206267 (A000124 (n + 5) + 5).toNat)

end

end A206265.P13008223826186348939

/-! ## A206265.P10749029641034485081

`A206267(A052905(n+3))%A016900(n)`
-/

namespace A206265.P10749029641034485081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206267 (A052905 (n + 3)).toNat) (A016900 n)

end

end A206265.P10749029641034485081

/-!
# A206266: Number of (n+1) X 8 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A206266, there is no canonical definition to state claims against.
-/

/-! ## A206266.P14934433630987792065

`A206267(A167499(n+5)+2)`
-/

namespace A206266.P14934433630987792065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A167499 (n + 5) + 2).toNat

end

end A206266.P14934433630987792065

/-! ## A206266.P17534875807114868353

`A206267(A167614(n+5)+4)`
-/

namespace A206266.P17534875807114868353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A167614 (n + 5) + 4).toNat

end

end A206266.P17534875807114868353

/-! ## A206266.P6481946548536535042

`A206267(A000217(n+6)+7)`
-/

namespace A206266.P6481946548536535042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A000217 (n + 6) + 7).toNat

end

end A206266.P6481946548536535042

/-! ## A206266.P1763258508331063759

`A206267(A000124(n+7)-(n+1))`
-/

namespace A206266.P1763258508331063759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A206266.P1763258508331063759

/-! ## A206266.P18239400874048237052

`A206267(A374008(n+1))`
-/

namespace A206266.P18239400874048237052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A374008 (n + 1)).toNat

end

end A206266.P18239400874048237052

/-! ## A206266.P11312476661563138498

`A206267(A055999(n+4))`
-/

namespace A206266.P11312476661563138498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A055999 (n + 4)).toNat

end

end A206266.P11312476661563138498

/-! ## A206266.P8461105193992902248

`A206267(A056121(n)+22)`
-/

namespace A206266.P8461105193992902248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206267 (A056121 n + 22).toNat

end

end A206266.P8461105193992902248

/-!
# A206268: Number of compositions of n with at most one 1.

The programs for A206268, the canonical program `A206268.P9393558027782757496` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206268 has offset 0).

The definition of A206268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206268.P13186779691378850607

`ogf((1-x-2x^2+2x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A206268.P13186779691378850607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, 2] [1, -2, -1, 2, 1] n

end

end A206268.P13186779691378850607

namespace A206268

/-- `ogf((1-x-2x^2+2x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P13186779691378850607.Spec : Prop :=
  ∀ n, P13186779691378850607.a n = A206268 n

end A206268

/-! ## A206268.P9393558027782757496

`A191830(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206268

/-- `A191830(n-1)+a(n-1)` -/
def P9393558027782757496.Spec : Prop :=
  ∀ n, P9393558027782757496.a n = A206268 n

theorem P9393558027782757496.correct : P9393558027782757496.Spec := by
  intro n
  simp only [A206268]

end A206268

/-! ## A206268.P2792279870713457714

`A000045(n+1)-A240847(n)`
-/

namespace A206268.P2792279870713457714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A240847 n

end

end A206268.P2792279870713457714

namespace A206268

/-- `A000045(n+1)-A240847(n)` -/
def P2792279870713457714.Spec : Prop :=
  ∀ n, P2792279870713457714.a n = A206268 n

end A206268

/-! ## A206268.P12460697339021224874

`∑[A191830(n)]+1-A191830(n)`
-/

namespace A206268.P12460697339021224874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A191830 n)

end

end A206268.P12460697339021224874

namespace A206268

/-- `∑[A191830(n)]+1-A191830(n)` -/
def P12460697339021224874.Spec : Prop :=
  ∀ n, P12460697339021224874.a n = A206268 n

end A206268

/-! ## A206268.P16517201660035980947

`Δ[A006367(n)+Δ[A212804(n)]]`
-/

namespace A206268.P16517201660035980947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206268.P16517201660035980947

namespace A206268

/-- `Δ[A006367(n)+Δ[A212804(n)]]` -/
def P16517201660035980947.Spec : Prop :=
  ∀ n, P16517201660035980947.a n = A206268 n

end A206268

/-! ## A206268.P13407141968052580816

`A240847(n+1)+A152163(n)+A010049(n)`
-/

namespace A206268.P13407141968052580816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 (n + 1) + (A152163 n + A010049 n)

end

end A206268.P13407141968052580816

namespace A206268

/-- `A240847(n+1)+A152163(n)+A010049(n)` -/
def P13407141968052580816.Spec : Prop :=
  ∀ n, P13407141968052580816.a n = A206268 n

end A206268

/-! ## A206268.P8822059294581690766

`A010049(n+1)-(A240847(n)+A001629(n))`
-/

namespace A206268.P8822059294581690766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - (A240847 n + A001629 n)

end

end A206268.P8822059294581690766

namespace A206268

/-- `A010049(n+1)-(A240847(n)+A001629(n))` -/
def P8822059294581690766.Spec : Prop :=
  ∀ n, P8822059294581690766.a n = A206268 n

end A206268

/-! ## A206268.P17351601892812316492

`A208354(n)+A208354(n)-A010049(n+1)`
-/

namespace A206268.P17351601892812316492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n + (A208354 n - A010049 (n + 1))

end

end A206268.P17351601892812316492

namespace A206268

/-- `A208354(n)+A208354(n)-A010049(n+1)` -/
def P17351601892812316492.Spec : Prop :=
  ∀ n, P17351601892812316492.a n = A206268 n

end A206268

/-! ## A206268.P5077285469114913510

`A208354(n+1)-(A240847(n)+A029907(n))`
-/

namespace A206268.P5077285469114913510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) - (A240847 n + A029907 n)

end

end A206268.P5077285469114913510

namespace A206268

/-- `A208354(n+1)-(A240847(n)+A029907(n))` -/
def P5077285469114913510.Spec : Prop :=
  ∀ n, P5077285469114913510.a n = A206268 n

end A206268

/-! ## A206268.P12595910661820297184

`Δ[Δ[A208354(n)]]`
-/

namespace A206268.P12595910661820297184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206268.P12595910661820297184

namespace A206268

/-- `Δ[Δ[A208354(n)]]` -/
def P12595910661820297184.Spec : Prop :=
  ∀ n, P12595910661820297184.a n = A206268 n

end A206268

/-! ## A206268.P2450564082042119718

`Δ[Δ[A212804(n)+A010049(n)]]`
-/

namespace A206268.P2450564082042119718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A010049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206268.P2450564082042119718

namespace A206268

/-- `Δ[Δ[A212804(n)+A010049(n)]]` -/
def P2450564082042119718.Spec : Prop :=
  ∀ n, P2450564082042119718.a n = A206268 n

end A206268

/-! ## A206268.P10592284238576632727

`A010049(n)+Δ[A029907(n)]-A029907(n)`
-/

namespace A206268.P10592284238576632727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + (f1 (n + 1) - f1 n - A029907 n)

end

end A206268.P10592284238576632727

namespace A206268

/-- `A010049(n)+Δ[A029907(n)]-A029907(n)` -/
def P10592284238576632727.Spec : Prop :=
  ∀ n, P10592284238576632727.a n = A206268 n

end A206268

/-! ## A206268.P18203871253220733438

`A000045(n+1)+A001629(n+1)-A094588(n)`
-/

namespace A206268.P18203871253220733438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A001629 (n + 1) - A094588 n)

end

end A206268.P18203871253220733438

namespace A206268

/-- `A000045(n+1)+A001629(n+1)-A094588(n)` -/
def P18203871253220733438.Spec : Prop :=
  ∀ n, P18203871253220733438.a n = A206268 n

end A206268

/-! ## A206268.P12466747870194173045

`A029907(n+1)-(A240847(n)+A001629(n+1))`
-/

namespace A206268.P12466747870194173045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) - (A240847 n + A001629 (n + 1))

end

end A206268.P12466747870194173045

namespace A206268

/-- `A029907(n+1)-(A240847(n)+A001629(n+1))` -/
def P12466747870194173045.Spec : Prop :=
  ∀ n, P12466747870194173045.a n = A206268 n

end A206268

/-! ## A206268.P8781592118267448181

`Δ[A094588(n)-A001629(n)]`
-/

namespace A206268.P8781592118267448181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n - A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206268.P8781592118267448181

namespace A206268

/-- `Δ[A094588(n)-A001629(n)]` -/
def P8781592118267448181.Spec : Prop :=
  ∀ n, P8781592118267448181.a n = A206268 n

end A206268

/-! ## A206268.P14118168031631534642

`Δ[Δ[Δ[A029907(n)]]]`
-/

namespace A206268.P14118168031631534642
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206268.P14118168031631534642

namespace A206268

/-- `Δ[Δ[Δ[A029907(n)]]]` -/
def P14118168031631534642.Spec : Prop :=
  ∀ n, P14118168031631534642.a n = A206268 n

end A206268

/-! ## A206268.P14002694083807540164

`Δ[Δ[A055244(n)-A001629(n)]]`
-/

namespace A206268.P14002694083807540164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - A001629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206268.P14002694083807540164

namespace A206268

/-- `Δ[Δ[A055244(n)-A001629(n)]]` -/
def P14002694083807540164.Spec : Prop :=
  ∀ n, P14002694083807540164.a n = A206268 n

end A206268

/-! ## A206268.P5173963620412218019

`A007502(n+1)+A007502(n+1)-A023610(n)`
-/

namespace A206268.P5173963620412218019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 1) + (A007502 (n + 1) - A023610 n)

end

end A206268.P5173963620412218019

namespace A206268

/-- `A007502(n+1)+A007502(n+1)-A023610(n)` -/
def P5173963620412218019.Spec : Prop :=
  ∀ n, P5173963620412218019.a n = A206268 n

end A206268

/-! ## A206268.P13461485417216069143

`2*A007502(n+1)-A023610(n)`
-/

namespace A206268.P13461485417216069143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007502 (n + 1) - A023610 n

end

end A206268.P13461485417216069143

namespace A206268

/-- `2*A007502(n+1)-A023610(n)` -/
def P13461485417216069143.Spec : Prop :=
  ∀ n, P13461485417216069143.a n = A206268 n

end A206268

/-! ## A206268.P11957365865026145348

`A136376(n+1)-(A146005(n)+A010049(n))`
-/

namespace A206268.P11957365865026145348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 1) - (A146005 n + A010049 n)

end

end A206268.P11957365865026145348

namespace A206268

/-- `A136376(n+1)-(A146005(n)+A010049(n))` -/
def P11957365865026145348.Spec : Prop :=
  ∀ n, P11957365865026145348.a n = A206268 n

end A206268

/-!
# A206269: Number of (n+1) X (n+1) 0..2 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A206269, there is no canonical definition to state claims against.
-/

/-! ## A206269.P473173759200000279

`A206277(∑[4*n]+1)`
-/

namespace A206269.P473173759200000279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206269.P473173759200000279

/-! ## A206269.P17575302555589383839

`lcm(3, A206277(A001844(n)))`
-/

namespace A206269.P17575302555589383839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206277 (A001844 n).toNat)

end

end A206269.P17575302555589383839

/-! ## A206269.P16630882060598810520

`record[A003982(n)*A206277(n+1)]`
-/

namespace A206269.P16630882060598810520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206269.P16630882060598810520

/-! ## A206269.P10501861079958426744

`record[gcd(A003987(n), A206277(n+1))]`
-/

namespace A206269.P10501861079958426744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A206277 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206269.P10501861079958426744

/-! ## A206269.P15744164451745855955

`record[root(A206277(n+1), A007913(2*n+1))]`
-/

namespace A206269.P15744164451745855955
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206277 (n + 1) : ℝ) ^ (1 / (A007913 (2 * n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206269.P15744164451745855955

/-!
# A206270: Number of (n+1) X 2 0..2 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A206270, there is no canonical definition to state claims against.
-/

/-! ## A206270.P2967340885830402088

`A206277(∑[n]+1)`
-/

namespace A206270.P2967340885830402088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206270.P2967340885830402088

/-! ## A206270.P5130857422841763664

`lcm(3, A206277(A000124(n)))`
-/

namespace A206270.P5130857422841763664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206277 (A000124 n).toNat)

end

end A206270.P5130857422841763664

/-! ## A206270.P5912446418433157892

`record[A206277(n+1)/A007318(n)]`
-/

namespace A206270.P5912446418433157892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206277 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206270.P5912446418433157892

/-! ## A206270.P7223048528683922302

`record[A206277(n+1)/A074909(n)]`
-/

namespace A206270.P7223048528683922302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206277 (n + 1) : ℚ) / (A074909 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206270.P7223048528683922302

/-! ## A206270.P17840690384725529382

`record[A206277(n+1)/A208101(n)]`
-/

namespace A206270.P17840690384725529382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206277 (n + 1) : ℚ) / (A208101 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206270.P17840690384725529382

/-!
# A206271: Number of (n+1) X 3 0..2 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A206271, there is no canonical definition to state claims against.
-/

/-! ## A206271.P8943566007492379284

`A206277(∑[n+1]+2)`
-/

namespace A206271.P8943566007492379284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206271.P8943566007492379284

/-! ## A206271.P11896322797281132229

`lcm(3, A206277(A000096(n)+3))`
-/

namespace A206271.P11896322797281132229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206277 (A000096 n + 3).toNat)

end

end A206271.P11896322797281132229

/-! ## A206271.P1747064233099650043

`record[A206277(A133263(A263275(n)))]`
-/

namespace A206271.P1747064233099650043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A133263 (A263275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206271.P1747064233099650043

/-! ## A206271.P7188240945584152210

`A206277(A000096(n)+3)%A206272(n+1)`
-/

namespace A206271.P7188240945584152210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206277 (A000096 n + 3).toNat) (A206272 (n + 1))

end

end A206271.P7188240945584152210

/-! ## A206271.P8849984408194041139

`A206277(A000096(n)+3)+A008683(12*n+8)`
-/

namespace A206271.P8849984408194041139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A000096 n + 3).toNat + A008683 (12 * n + 8)

end

end A206271.P8849984408194041139

/-!
# A206272: Number of (n+1) X 4 0..2 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A206272, there is no canonical definition to state claims against.
-/

/-! ## A206272.P697956021151723734

`A206277(∑[n+2]+4)`
-/

namespace A206272.P697956021151723734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206272.P697956021151723734

/-! ## A206272.P452625332629530093

`lcm(3, A206277(A167614(n+1)))`
-/

namespace A206272.P452625332629530093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206277 (A167614 (n + 1)).toNat)

end

end A206272.P452625332629530093

/-! ## A206272.P16937172092488021593

`A206277(A167614(n+1))%A017481(n)`
-/

namespace A206272.P16937172092488021593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206277 (A167614 (n + 1)).toNat) (A017481 n)

end

end A206272.P16937172092488021593

/-! ## A206272.P8446975455365800934

`or(A000007(n), A206277(A167614(n+1)))`
-/

namespace A206272.P8446975455365800934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206277 (A167614 (n + 1)).toNat)

end

end A206272.P8446975455365800934

/-! ## A206272.P9077523729725520171

`A206277(A167614(n+1))+A034501(n+1)`
-/

namespace A206272.P9077523729725520171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A167614 (n + 1)).toNat + A034501 (n + 1)

end

end A206272.P9077523729725520171

/-!
# A206273: Number of (n+1) X 5 0..2 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A206273, there is no canonical definition to state claims against.
-/

/-! ## A206273.P2517869648219010619

`A206277(∑[n+3]+7)`
-/

namespace A206273.P2517869648219010619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A206273.P2517869648219010619

/-! ## A206273.P1670424760156625251

`lcm(3, A206277(A141214(n)+7))`
-/

namespace A206273.P1670424760156625251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206277 (A141214 n + 7).toNat)

end

end A206273.P1670424760156625251

/-! ## A206273.P12542642184483777977

`char[A004247(n)]*A206277(A141214(n)+7)`
-/

namespace A206273.P12542642184483777977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A206277 (A141214 n + 7).toNat

end

end A206273.P12542642184483777977

/-! ## A206273.P15412025644829932685

`A007318(C(2, n))*A206277(A141214(n)+7)`
-/

namespace A206273.P15412025644829932685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A206277 (A141214 n + 7).toNat

end

end A206273.P15412025644829932685

/-! ## A206273.P11748626179832847678

`A000041(gcd(n, n+1))*A206277(A141214(n)+7)`
-/

namespace A206273.P11748626179832847678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A206277 (A141214 n + 7).toNat

end

end A206273.P11748626179832847678

/-!
# A206274: Number of (n+1) X 6 0..2 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A206274, there is no canonical definition to state claims against.
-/

/-! ## A206274.P8559134421246369859

`A206277(A374005(n+1))`
-/

namespace A206274.P8559134421246369859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A374005 (n + 1)).toNat

end

end A206274.P8559134421246369859

/-! ## A206274.P5785482402583483790

`A206277(A155212(n)+13)`
-/

namespace A206274.P5785482402583483790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A155212 n + 13).toNat

end

end A206274.P5785482402583483790

/-! ## A206274.P16972778013765698131

`A206277(A000096(n+3)+6)`
-/

namespace A206274.P16972778013765698131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A000096 (n + 3) + 6).toNat

end

end A206274.P16972778013765698131

/-! ## A206274.P14225874052410489402

`A206277(A000217(n+4)+5)`
-/

namespace A206274.P14225874052410489402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A000217 (n + 4) + 5).toNat

end

end A206274.P14225874052410489402

/-! ## A206274.P9189324050662506626

`A206277(A000124(n+5)-(n+1))`
-/

namespace A206274.P9189324050662506626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A206274.P9189324050662506626

/-!
# A206275: Number of (n+1) X 7 0..2 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A206275, there is no canonical definition to state claims against.
-/

/-! ## A206275.P7650547763026357463

`A206277(A374007(n+1))`
-/

namespace A206275.P7650547763026357463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A374007 (n + 1)).toNat

end

end A206275.P7650547763026357463

/-! ## A206275.P15261690986988275899

`A206277(A166136(n+4))`
-/

namespace A206275.P15261690986988275899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A166136 (n + 4)).toNat

end

end A206275.P15261690986988275899

/-! ## A206275.P7387454582839411673

`A206277(A000124(n+5)+5)`
-/

namespace A206275.P7387454582839411673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A000124 (n + 5) + 5).toNat

end

end A206275.P7387454582839411673

/-! ## A206275.P7403314659171824880

`A206277(A000217(n+5)+6)`
-/

namespace A206275.P7403314659171824880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A000217 (n + 5) + 6).toNat

end

end A206275.P7403314659171824880

/-! ## A206275.P13698415269385233310

`A206277(A046691(n+3)+10)`
-/

namespace A206275.P13698415269385233310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A046691 (n + 3) + 10).toNat

end

end A206275.P13698415269385233310

/-!
# A206276: Number of (n+1) X 8 0..2 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A206276, there is no canonical definition to state claims against.
-/

/-! ## A206276.P6901194791749628090

`A206277(A374008(n+1))`
-/

namespace A206276.P6901194791749628090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A374008 (n + 1)).toNat

end

end A206276.P6901194791749628090

/-! ## A206276.P8922716497627986480

`A206277(A166136(n+5)+1)`
-/

namespace A206276.P8922716497627986480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A166136 (n + 5) + 1).toNat

end

end A206276.P8922716497627986480

/-! ## A206276.P8130501346810366061

`A206277(A000124(n+6)+6)`
-/

namespace A206276.P8130501346810366061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A000124 (n + 6) + 6).toNat

end

end A206276.P8130501346810366061

/-! ## A206276.P5954106462607176168

`A206277(A000217(n+6)+7)`
-/

namespace A206276.P5954106462607176168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A000217 (n + 6) + 7).toNat

end

end A206276.P5954106462607176168

/-! ## A206276.P11408842576734812424

`A206277(A161680(n+7)+7)`
-/

namespace A206276.P11408842576734812424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206277 (A161680 (n + 7) + 7).toNat

end

end A206276.P11408842576734812424

/-!
# A206278: Total number of triangles in Cayley graph Cay(Z_{2^n}, QR*(2^n)).

The programs for A206278, there is no canonical definition to state claims against.
-/

/-! ## A206278.P14465330703509849557

`A352729(or(5^n, ∑[4*6^n]))`
-/

namespace A206278.P14465330703509849557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (Nat.lor (5 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A206278.P14465330703509849557

/-!
# A206279: Smallest of three consecutive primes whose sum is a square.

The programs for A206279, there is no canonical definition to state claims against.
-/

/-! ## A206279.P3738119660004733254

`A000040(A076305(n+1))`
-/

namespace A206279.P3738119660004733254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076305 (n + 1)).toNat

end

end A206279.P3738119660004733254

/-! ## A206279.P14245930688282897672

`A008578(A076305(n+1)+1)`
-/

namespace A206279.P14245930688282897672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A076305 (n + 1) + 1).toNat

end

end A206279.P14245930688282897672

/-! ## A206279.P4390260537903348248

`A116974(A076305(n+1)+1)`
-/

namespace A206279.P4390260537903348248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (A076305 (n + 1) + 1).toNat

end

end A206279.P4390260537903348248

/-! ## A206279.P6872062923182892418

`A175787(A076305(n+1)+1)`
-/

namespace A206279.P6872062923182892418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A076305 (n + 1) + 1).toNat

end

end A206279.P6872062923182892418

/-!
# A206280: Smallest of four consecutive primes whose sum is a square.

The programs for A206280, there is no canonical definition to state claims against.
-/

/-! ## A206280.P10560248569258451382

`A000040(A072849(n+1))`
-/

namespace A206280.P10560248569258451382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072849 (n + 1)).toNat

end

end A206280.P10560248569258451382

/-! ## A206280.P18047024881976794445

`A008578(A072849(n+1)+1)`
-/

namespace A206280.P18047024881976794445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A072849 (n + 1) + 1).toNat

end

end A206280.P18047024881976794445

/-! ## A206280.P4438610242524915490

`A045344(A072849(n+1)-1)`
-/

namespace A206280.P4438610242524915490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A072849 (n + 1) - 1).toNat

end

end A206280.P4438610242524915490

/-! ## A206280.P9968851331040019456

`A065091(A072849(n+1)-1)`
-/

namespace A206280.P9968851331040019456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A072849 (n + 1) - 1).toNat

end

end A206280.P9968851331040019456

/-!
# A206282: a(n) = ( a(n-1) * a(n-3) + a(n-2) ) / a(n-4), a(1) = a(2) = 1, a(3) = -1, a(4) = -4.

The programs for A206282, the canonical program `A206282.P9815500237998866273` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206282 has offset 1).

The definition of A206282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206282.P9815500237998866273

`(a(n-1)*a(n-3)+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206282

/-- `(a(n-1)*a(n-3)+a(n-2))/a(n-4)` -/
def P9815500237998866273.Spec : Prop :=
  ∀ n, P9815500237998866273.a n = (A206282 (n + 1) : ℚ)

end A206282

/-!
# A206283: Triangle read by rows: T(n,k) = sum of the k-th parts of all partitions of n with their parts written in nondecreasing order.

The programs for A206283, there is no canonical definition to state claims against.
-/

/-! ## A206283.P10926881262975004891

`A210952(∑[char[∑[n]]]²-n)`
-/

namespace A206283.P10926881262975004891
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210952 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A206283.P10926881262975004891

/-! ## A206283.P10725087309534831326

`tan(acot(1))*A210952(A061579(n)+1)`
-/

namespace A206283.P10725087309534831326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (1 : ℝ)) * (A210952 (A061579 n + 1).toNat : ℝ)

end

end A206283.P10725087309534831326

/-! ## A206283.P9493333759897138799

`abs(1-A210952(A038722(n+1)))+1`
-/

namespace A206283.P9493333759897138799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A210952 (A038722 (n + 1)).toNat| + 1

end

end A206283.P9493333759897138799

/-! ## A206283.P12700020399083621242

`A210952(A038722(n+1))%A016901(n)`
-/

namespace A206283.P12700020399083621242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210952 (A038722 (n + 1)).toNat) (A016901 n)

end

end A206283.P12700020399083621242

/-! ## A206283.P3424186075078638274

`lcm(A033999(n), A210952(A038722(n+1)))`
-/

namespace A206283.P3424186075078638274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A210952 (A038722 (n + 1)).toNat)

end

end A206283.P3424186075078638274

/-! ## A206283.P14939558662817277432

`abs(A097807(n))*A210952(A038722(n+1))`
-/

namespace A206283.P14939558662817277432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097807 n| * A210952 (A038722 (n + 1)).toNat

end

end A206283.P14939558662817277432

/-! ## A206283.P9224801438518056245

`A210952(A061579(n)+1)%A000040(n+2)`
-/

namespace A206283.P9224801438518056245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210952 (A061579 n + 1).toNat) (A000040 (n + 2))

end

end A206283.P9224801438518056245

/-! ## A206283.P11063385752401559192

`2-(A020639(2*(n+1))-A210952(A061579(n)+1))`
-/

namespace A206283.P11063385752401559192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A020639 (2 * (n + 1)) - A210952 (A061579 n + 1).toNat)

end

end A206283.P11063385752401559192

/-! ## A206283.P17627291646180449184

`A210952(A038722(n+1))+char[A000040(22*(n+1)²)-1]`
-/

namespace A206283.P17627291646180449184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (22 * (n + 1) ^ 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210952 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A206283.P17627291646180449184

/-!
# A206284: Numbers that match irreducible polynomials over the nonnegative integers.

The programs for A206284, there is no canonical definition to state claims against.
-/

/-! ## A206284.P2801850793604264307

`eq[1, A277322(n+1)]+1`
-/

namespace A206284.P2801850793604264307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206284.P2801850793604264307

/-! ## A206284.P8643287688600688761

`eq[2, A000931(a(A277322(n)))]` with `a(0)=1, a(1)=9`
-/

namespace A206284.P8643287688600688761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f2 =>
  A000931 (f2 (A277322 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206284.P8643287688600688761

/-! ## A206284.P6321567547779583639

`filter[A047229(n+2), A389911(#)]`
-/

namespace A206284.P6321567547779583639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P6321567547779583639

/-! ## A206284.P18043530697770537812

`filter[A389634(n+1), A389911(#)]`
-/

namespace A206284.P18043530697770537812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P18043530697770537812

/-! ## A206284.P18434544750297108526

`filter[A391342(n+1), A389911(#)]`
-/

namespace A206284.P18434544750297108526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P18434544750297108526

/-! ## A206284.P2740450055502811341

`filter[A080671(n+1), A389911(#)]`
-/

namespace A206284.P2740450055502811341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P2740450055502811341

/-! ## A206284.P4679627741738714536

`filter[A276347(n+1), A389911(#)]`
-/

namespace A206284.P4679627741738714536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P4679627741738714536

/-! ## A206284.P11117421317864247950

`filter[A047420(n+2), A389911(#)]`
-/

namespace A206284.P11117421317864247950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P11117421317864247950

/-! ## A206284.P12594161355291941799

`filter[A080672(n+1), A389911(#)]`
-/

namespace A206284.P12594161355291941799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P12594161355291941799

/-! ## A206284.P10675507838185989187

`filter[A136002(n+1), A389911(#)]`
-/

namespace A206284.P10675507838185989187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P10675507838185989187

/-! ## A206284.P14208618400438980845

`filter[A276568(n+1), A389911(#)]`
-/

namespace A206284.P14208618400438980845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P14208618400438980845

/-! ## A206284.P12080968531727381574

`filter[A070331(n+1), A389911(#)]`
-/

namespace A206284.P12080968531727381574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P12080968531727381574

/-! ## A206284.P8635034394161482019

`filter[A151988(n+1), A389911(#)]`
-/

namespace A206284.P8635034394161482019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P8635034394161482019

/-! ## A206284.P16828342109742872955

`filter[A047226(n+2), A389911(#)]`
-/

namespace A206284.P16828342109742872955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P16828342109742872955

/-! ## A206284.P9629360958156532924

`filter[A047248(n+2), A389911(#)]`
-/

namespace A206284.P9629360958156532924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P9629360958156532924

/-! ## A206284.P7752731357128781004

`filter[A153276(n+2), A389911(#)]`
-/

namespace A206284.P7752731357128781004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153276 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P7752731357128781004

/-! ## A206284.P9798279216051127005

`filter[A176423(n+1), A389911(#)]`
-/

namespace A206284.P9798279216051127005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P9798279216051127005

/-! ## A206284.P12825451180010767553

`filter[A171581(n+1), A389911(#)]`
-/

namespace A206284.P12825451180010767553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P12825451180010767553

/-! ## A206284.P8838077751647049728

`filter[A173905(n+2), A389911(#)]`
-/

namespace A206284.P8838077751647049728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P8838077751647049728

/-! ## A206284.P12629377737926809040

`filter[A171085(n+1), A389911(#)]`
-/

namespace A206284.P12629377737926809040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A206284.P12629377737926809040

/-!
# A206285: Numbers that match polynomials not irreducible over the nonnegative integers.

The programs for A206285, there is no canonical definition to state claims against.
-/

/-! ## A206285.P5782058959299683265

`eq[0, A389911(n+1)]+1`
-/

namespace A206285.P5782058959299683265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206285.P5782058959299683265

/-! ## A206285.P7932593386507951572

`comp[A206284(n+1)-1]+1`
-/

namespace A206285.P7932593386507951572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206285.P7932593386507951572

/-! ## A206285.P11090717147682202613

`comp[eq[1, A277322(n+1)]]+1`
-/

namespace A206285.P11090717147682202613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A206285.P11090717147682202613

/-! ## A206285.P12125020593123436691

`comp[eq[2, A284010(n+1)]]+1`
-/

namespace A206285.P12125020593123436691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A206285.P12125020593123436691

/-! ## A206285.P4548258388774290898

`comp[A023443(A206284(n+1))]+1`
-/

namespace A206285.P4548258388774290898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A206284 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206285.P4548258388774290898

/-! ## A206285.P3288800856150272599

`eq[char[A206284(n+1)], A000007(n)]`
-/

namespace A206285.P3288800856150272599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206285.P3288800856150272599

/-! ## A206285.P1119571186184740653

`eq[char[A206284(n+1)], A000038(n)]`
-/

namespace A206285.P1119571186184740653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206285.P1119571186184740653

/-! ## A206285.P6498367189481630940

`eq[char[A206284(n+1)], A063667(n)]`
-/

namespace A206285.P6498367189481630940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206285.P6498367189481630940

/-! ## A206285.P4262514682559431465

`eq[char[A206284(n+1)], A209229(n²+2)]`
-/

namespace A206285.P4262514682559431465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206285.P4262514682559431465

/-! ## A206285.P179351130931092764

`eq[char[A206284(n+1)], A255308(n²+8)]`
-/

namespace A206285.P179351130931092764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (n ^ 2 + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206285.P179351130931092764

/-!
# A206286: Nonprime numbers starting with a digit 1.

The programs for A206286, the canonical program `A206286.P5854580810556654288` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206286 has offset 1).

The definition of A206286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206286.P5854580810556654288

`record[A018252(n+2)/A077649(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206286

/-- `record[A018252(n+2)/A077649(n+1)]` -/
def P5854580810556654288.Spec : Prop :=
  ∀ n, P5854580810556654288.a n = (A206286 (n + 1) : ℚ)

end A206286

/-! ## A206286.P4334778577147879980

`record[A014684(A248024(n+1))]`
-/

namespace A206286.P4334778577147879980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A248024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206286.P4334778577147879980

namespace A206286

/-- `record[A014684(A248024(n+1))]` -/
def P4334778577147879980.Spec : Prop :=
  ∀ n, P4334778577147879980.a n = A206286 (n + 1)

end A206286

/-! ## A206286.P18324973421404393684

`record[A191558(A131835(n+1))]`
-/

namespace A206286.P18324973421404393684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A131835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206286.P18324973421404393684

namespace A206286

/-- `record[A191558(A131835(n+1))]` -/
def P18324973421404393684.Spec : Prop :=
  ∀ n, P18324973421404393684.a n = A206286 (n + 1)

end A206286

/-! ## A206286.P11829299791246464798

`eq[cos(A055671(n)), A000030(n)]`
-/

namespace A206286.P11829299791246464798
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A055671 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A206286.P11829299791246464798

namespace A206286

/-- `eq[cos(A055671(n)), A000030(n)]` -/
def P11829299791246464798.Spec : Prop :=
  ∀ n, (P11829299791246464798.a n : ℤ) = A206286 (n + 1)

end A206286

/-! ## A206286.P11886288390463156357

`eq[1, A055672(n)+A000030(n)]`
-/

namespace A206286.P11886288390463156357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206286.P11886288390463156357

namespace A206286

/-- `eq[1, A055672(n)+A000030(n)]` -/
def P11886288390463156357.Spec : Prop :=
  ∀ n, (P11886288390463156357.a n : ℤ) = A206286 (n + 1)

end A206286

/-! ## A206286.P6160000804601828196

`lt[2*A282462(n), A222220(n)]`
-/

namespace A206286.P6160000804601828196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206286.P6160000804601828196

namespace A206286

/-- `lt[2*A282462(n), A222220(n)]` -/
def P6160000804601828196.Spec : Prop :=
  ∀ n, (P6160000804601828196.a n : ℤ) = A206286 (n + 1)

end A206286

/-! ## A206286.P15601920691848627331

`lt[2*A282462(n), A222221(n)]`
-/

namespace A206286.P15601920691848627331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206286.P15601920691848627331

namespace A206286

/-- `lt[2*A282462(n), A222221(n)]` -/
def P15601920691848627331.Spec : Prop :=
  ∀ n, (P15601920691848627331.a n : ℤ) = A206286 (n + 1)

end A206286

/-! ## A206286.P14127121296206209677

`lt[2*A282462(n), A222223(n)]`
-/

namespace A206286.P14127121296206209677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206286.P14127121296206209677

namespace A206286

/-- `lt[2*A282462(n), A222223(n)]` -/
def P14127121296206209677.Spec : Prop :=
  ∀ n, (P14127121296206209677.a n : ℤ) = A206286 (n + 1)

end A206286

/-! ## A206286.P16196811720920148753

`eq[A000030(n), A008683(A030664(n))]`
-/

namespace A206286.P16196811720920148753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A030664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206286.P16196811720920148753

namespace A206286

/-- `eq[A000030(n), A008683(A030664(n))]` -/
def P16196811720920148753.Spec : Prop :=
  ∀ n, (P16196811720920148753.a n : ℤ) = A206286 (n + 1)

end A206286

/-!
# A206287: Numbers with all divisors starting with digit 1.

The programs for A206287, there is no canonical definition to state claims against.
-/

/-! ## A206287.P16760100234261741255

`∪[A045707(n+1), A206288(n+1)]`
-/

namespace A206287.P16760100234261741255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206287.P16760100234261741255

/-! ## A206287.P6263769516667407521

`eq[A122425(n+1), A187285(n+1)]+1`
-/

namespace A206287.P6263769516667407521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A206287.P6263769516667407521

/-! ## A206287.P10507635648384114929

`eq[A000005(n+1), A357299(n+1)]+1`
-/

namespace A206287.P10507635648384114929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A206287.P10507635648384114929

/-! ## A206287.P2545718270954908911

`∩[A250040(n+1), A109860(n)]`
-/

namespace A206287.P2545718270954908911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206287.P2545718270954908911

/-! ## A206287.P10614235146289892886

`∩[A250040(n+1), A325395(n+1)]`
-/

namespace A206287.P10614235146289892886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206287.P10614235146289892886

/-!
# A206288: Nonprime numbers with all divisors starting with digit 1.

The programs for A206288, there is no canonical definition to state claims against.
-/

/-! ## A206288.P17086043892393792546

`filter[A206287(n+1), A005171(#)]`
-/

namespace A206288.P17086043892393792546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A206288.P17086043892393792546

/-! ## A206288.P15622605286407671090

`∩[A018252(n+1), A206287(n+1)]`
-/

namespace A206288.P15622605286407671090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206288.P15622605286407671090

/-! ## A206288.P11415594725202641457

`∩[A060976(n+1), A206287(n+1)]`
-/

namespace A206288.P11415594725202641457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206288.P11415594725202641457

/-! ## A206288.P12601240059649992962

`∩[A067793(n+1), A206287(n+1)]`
-/

namespace A206288.P12601240059649992962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206288.P12601240059649992962

/-! ## A206288.P12332407917087661155

`∩[A067794(n+1), A206287(n+1)]`
-/

namespace A206288.P12332407917087661155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206288.P12332407917087661155

/-! ## A206288.P14405694136170885269

`∩[A206286(n+1), A206287(n+1)]`
-/

namespace A206288.P14405694136170885269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206288.P14405694136170885269

/-!
# A206289: G.f.: Sum_{n>=0} Product_{k=1..n} Series_Reversion( x*(1 - x^k) ).

The programs for A206289, there is no canonical definition to state claims against.
-/

/-! ## A206289.P9976384237389653711

`A325363(A211180(n+2))`
-/

namespace A206289.P9976384237389653711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A211180 (n + 2)).toNat

end

end A206289.P9976384237389653711

/-! ## A206289.P10642838608920366007

`A245898(n+1)-A239116(n)`
-/

namespace A206289.P10642838608920366007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - A239116 n

end

end A206289.P10642838608920366007

/-! ## A206289.P10683501097167480643

`A245898(n+1)-∑[A022897(n+1)]`
-/

namespace A206289.P10683501097167480643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206289.P10683501097167480643

/-! ## A206289.P12991650814322241685

`A245898(n+1)-∑[A060689(n+1)]`
-/

namespace A206289.P12991650814322241685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206289.P12991650814322241685

/-!
# A206290: G.f.: Sum_{n>=0} Product_{k=1..n} Series_Reversion( x/(1 + x^k) ).

The programs for A206290, there is no canonical definition to state claims against.
-/

/-! ## A206290.P5515784872270708782

`A000029(n)-A105700(A077851(n))`
-/

namespace A206290.P5515784872270708782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n - A105700 (A077851 n).toNat

end

end A206290.P5515784872270708782

/-! ## A206290.P11807223802714764955

`A000029(n)-A230093(A038308(n))`
-/

namespace A206290.P11807223802714764955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n - A230093 (A038308 n).toNat

end

end A206290.P11807223802714764955

/-! ## A206290.P10563070254410460615

`A118759(A000029(n)-A309025(n))`
-/

namespace A206290.P10563070254410460615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A000029 n - A309025 n).toNat

end

end A206290.P10563070254410460615

/-! ## A206290.P6919383325263816751

`A000029(n)-A327407(A270831(n+1))`
-/

namespace A206290.P6919383325263816751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n - A327407 (A270831 (n + 1)).toNat

end

end A206290.P6919383325263816751

/-! ## A206290.P8547493845823499817

`A080528(A062399(n))+A026830(A000041(n))`
-/

namespace A206290.P8547493845823499817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080528 (A062399 n).toNat + A026830 (A000041 n).toNat

end

end A206290.P8547493845823499817

/-!
# A206292: Numbers k such that cyclotomic polynomial Phi(k,-m) < Phi(j,-m) for any j > k and m >= 2.

The programs for A206292, there is no canonical definition to state claims against.
-/

/-! ## A206292.P750744800861307424

`record[A206710(n+1)]`
-/

namespace A206292.P750744800861307424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206292.P750744800861307424

/-! ## A206292.P8432512376609822087

`eq[A276836(n+1), A293434(n+1)]`
-/

namespace A206292.P8432512376609822087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206292.P8432512376609822087

/-! ## A206292.P14066369350181874157

`lt[A321452(n), A000002(2*(n+1))]+1`
-/

namespace A206292.P14066369350181874157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206292.P14066369350181874157

/-! ## A206292.P13892526920701415700

`lt[A297845(4*C(n, 2)+2), ∑[2*n]]`
-/

namespace A206292.P13892526920701415700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297845 (4 * Nat.choose n 2 + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A206292.P13892526920701415700

/-! ## A206292.P2153960486537429869

`A370809(A108585(n+1))`
-/

namespace A206292.P2153960486537429869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370809 (A108585 (n + 1)).toNat

end

end A206292.P2153960486537429869

/-!
# A206293: G.f. satisfies: A(x) = Sum_{n>=0} Product_{k=1..n} Series_Reversion( x/A(x^k) ).

The programs for A206293, there is no canonical definition to state claims against.
-/

/-! ## A206293.P12242234814609172662

`A088004(A330046(n)+2)`
-/

namespace A206293.P12242234814609172662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A330046 n + 2).toNat

end

end A206293.P12242234814609172662

/-! ## A206293.P5406975700803656869

`A100196(∑[n^A055400(n)])`
-/

namespace A206293.P5406975700803656869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A055400 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206293.P5406975700803656869

/-! ## A206293.P7320552162401787392

`A100196(∑[n^A064524(n)])`
-/

namespace A206293.P7320552162401787392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A064524 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206293.P7320552162401787392

/-!
# A206294: Riordan array (1, x/(1-x)^3).

The programs for A206294, there is no canonical definition to state claims against.
-/

/-! ## A206294.P8547482966482426028

`A398366(A061579(n))`
-/

namespace A206294.P8547482966482426028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398366 (A061579 n).toNat

end

end A206294.P8547482966482426028

/-! ## A206294.P4994193315311419117

`A338037(n)/A088218(A002262(n))`
-/

namespace A206294.P4994193315311419117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338037 n : ℚ) / (A088218 (A002262 n).toNat : ℚ)

end

end A206294.P4994193315311419117

/-! ## A206294.P10311961525751784231

`A398366(A038722(n+2))`
-/

namespace A206294.P10311961525751784231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398366 (A038722 (n + 2)).toNat

end

end A206294.P10311961525751784231

/-! ## A206294.P1484039050563903924

`A088925(n)-A129407(A269948(n))`
-/

namespace A206294.P1484039050563903924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088925 n - A129407 (A269948 n).toNat

end

end A206294.P1484039050563903924

/-! ## A206294.P10253349222403224879

`A098568(n)-A129407(A269948(n))`
-/

namespace A206294.P10253349222403224879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098568 n - A129407 (A269948 n).toNat

end

end A206294.P10253349222403224879

/-!
# A206295: 

The programs for A206295, there is no canonical definition to state claims against.
-/

/-! ## A206295.P9529600362671705495

`A007188(n+1)/6`
-/

namespace A206295.P9529600362671705495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007188 (n + 1) : ℚ) / 6

end

end A206295.P9529600362671705495

/-!
# A206296: Prime factorization representation of Fibonacci polynomials: a(0) = 1, a(1) = 2, and for n > 1, a(n) = A003961(a(n-1)) * a(n-2).

The programs for A206296, the canonical program `A206296.P17129788449905308235` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206296 has offset 0).

The definition of A206296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206296.P17129788449905308235

`A003961(a(n-1))*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A206296

/-- `A003961(a(n-1))*a(n-2)` -/
def P17129788449905308235.Spec : Prop :=
  ∀ n, P17129788449905308235.a n = A206296 n

theorem P17129788449905308235.correct : P17129788449905308235.Spec := by
  intro n
  simp only [A206296]

end A206296

/-! ## A206296.P14864735095248907437

`a(n-2)*A045965(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A206296.P14864735095248907437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A045965 (a (n - 1)).toNat

end

end A206296.P14864735095248907437

namespace A206296

/-- `a(n-2)*A045965(a(n-1))` -/
def P14864735095248907437.Spec : Prop :=
  ∀ n, P14864735095248907437.a n = A206296 n

end A206296

/-! ## A206296.P17450677369890020892

`(A243501(a(n-1))-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A206296.P17450677369890020892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A243501 (a (n - 1)).toNat - 1) * a (n - 2)

end

end A206296.P17450677369890020892

namespace A206296

/-- `(A243501(a(n-1))-1)*a(n-2)` -/
def P17450677369890020892.Spec : Prop :=
  ∀ n, P17450677369890020892.a n = A206296 n

end A206296

/-!
# A206297: Position of n in the canonical bijection from the positive integers to the positive rational numbers.

The programs for A206297, the canonical program `A206297.P14886430242369453730` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206297 has offset 1).

The definition of A206297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206297.P13459521572355991375

`A049696(n)+1`
-/

namespace A206297.P13459521572355991375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + 1

end

end A206297.P13459521572355991375

namespace A206297

/-- `A049696(n)+1` -/
def P13459521572355991375.Spec : Prop :=
  ∀ n, P13459521572355991375.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P9265823824372577364

`or(1, A049691(n))`
-/

namespace A206297.P9265823824372577364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049691 n)

end

end A206297.P9265823824372577364

namespace A206297

/-- `or(1, A049691(n))` -/
def P9265823824372577364.Spec : Prop :=
  ∀ n, P9265823824372577364.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P16166097672019114560

`ceil(A100449(n)/2)`
-/

namespace A206297.P16166097672019114560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100449 n : ℚ) / 2⌉

end

end A206297.P16166097672019114560

namespace A206297

/-- `ceil(A100449(n)/2)` -/
def P16166097672019114560.Spec : Prop :=
  ∀ n, P16166097672019114560.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P15056978831571765862

`1+2*A002088(n)`
-/

namespace A206297.P15056978831571765862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A002088 n

end

end A206297.P15056978831571765862

namespace A206297

/-- `1+2*A002088(n)` -/
def P15056978831571765862.Spec : Prop :=
  ∀ n, P15056978831571765862.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P3282536421612178317

`2*A005728(n)-1`
-/

namespace A206297.P3282536421612178317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005728 n - 1

end

end A206297.P3282536421612178317

namespace A206297

/-- `2*A005728(n)-1` -/
def P3282536421612178317.Spec : Prop :=
  ∀ n, P3282536421612178317.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P5260245492164951677

`A140466(n)/2+1`
-/

namespace A206297.P5260245492164951677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140466 n : ℚ) / 2 + 1

end

end A206297.P5260245492164951677

namespace A206297

/-- `A140466(n)/2+1` -/
def P5260245492164951677.Spec : Prop :=
  ∀ n, P5260245492164951677.a n = (A206297 (n + 1) : ℚ)

end A206297

/-! ## A206297.P12203290773990648315

`lcm(2, A049632(n))-1`
-/

namespace A206297.P12203290773990648315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A049632 n) : ℤ) - 1

end

end A206297.P12203290773990648315

namespace A206297

/-- `lcm(2, A049632(n))-1` -/
def P12203290773990648315.Spec : Prop :=
  ∀ n, P12203290773990648315.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P9936972966810551029

`or(1, A206350(n+1))`
-/

namespace A206297.P9936972966810551029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A206350 (n + 1))

end

end A206297.P9936972966810551029

namespace A206297

/-- `or(1, A206350(n+1))` -/
def P9936972966810551029.Spec : Prop :=
  ∀ n, P9936972966810551029.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P9063195749783574725

`abs(1-2*A049643(n))`
-/

namespace A206297.P9063195749783574725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A049643 n|

end

end A206297.P9063195749783574725

namespace A206297

/-- `abs(1-2*A049643(n))` -/
def P9063195749783574725.Spec : Prop :=
  ∀ n, P9063195749783574725.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P5470331175424923720

`round(A171503(n)/2)+1`
-/

namespace A206297.P5470331175424923720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A171503 n : ℚ) / 2) + 1

end

end A206297.P5470331175424923720

namespace A206297

/-- `round(A171503(n)/2)+1` -/
def P5470331175424923720.Spec : Prop :=
  ∀ n, P5470331175424923720.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P14886430242369453730

`A140434(n)+a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A206297

/-- `A140434(n)+a(n-1)` -/
def P14886430242369453730.Spec : Prop :=
  ∀ n, P14886430242369453730.a n = A206297 (n + 1)

theorem P14886430242369453730.correct : P14886430242369453730.Spec := by
  intro n
  simp only [A206297, Nat.add_sub_cancel]

end A206297

/-! ## A206297.P14070257061217077354

`a(n-1)+2*A000010(n)` with `a(0)=1`
-/

namespace A206297.P14070257061217077354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A000010 n

end

end A206297.P14070257061217077354

namespace A206297

/-- `a(n-1)+2*A000010(n)` -/
def P14070257061217077354.Spec : Prop :=
  ∀ n, P14070257061217077354.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P17345045700389435817

`a(n-1)+A083254(n)+n` with `a(0)=1`
-/

namespace A206297.P17345045700389435817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A083254 n + (n : ℤ))

end

end A206297.P17345045700389435817

namespace A206297

/-- `a(n-1)+A083254(n)+n` -/
def P17345045700389435817.Spec : Prop :=
  ∀ n, P17345045700389435817.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P9524382153455217014

`∑[2*A000010(abs(1-n)+1)]-1`
-/

namespace A206297.P9524382153455217014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A206297.P9524382153455217014

namespace A206297

/-- `∑[2*A000010(abs(1-n)+1)]-1` -/
def P9524382153455217014.Spec : Prop :=
  ∀ n, P9524382153455217014.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P14739915941738433350

`A005728(n)+A002088(n)`
-/

namespace A206297.P14739915941738433350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n + A002088 n

end

end A206297.P14739915941738433350

namespace A206297

/-- `A005728(n)+A002088(n)` -/
def P14739915941738433350.Spec : Prop :=
  ∀ n, P14739915941738433350.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P11397786814095474628

`A049691(n)+A000007(n)`
-/

namespace A206297.P11397786814095474628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + A000007 n

end

end A206297.P11397786814095474628

namespace A206297

/-- `A049691(n)+A000007(n)` -/
def P11397786814095474628.Spec : Prop :=
  ∀ n, P11397786814095474628.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P10832566240396287279

`A057428(n)+A049632(n)`
-/

namespace A206297.P10832566240396287279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A049632 n

end

end A206297.P10832566240396287279

namespace A206297

/-- `A057428(n)+A049632(n)` -/
def P10832566240396287279.Spec : Prop :=
  ∀ n, P10832566240396287279.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P3259089765986607696

`A049632(n)-A057427(n)`
-/

namespace A206297.P3259089765986607696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A057427 n

end

end A206297.P3259089765986607696

namespace A206297

/-- `A049632(n)-A057427(n)` -/
def P3259089765986607696.Spec : Prop :=
  ∀ n, P3259089765986607696.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P8754992052860657577

`A100449(n)-A049696(n)`
-/

namespace A206297.P8754992052860657577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n - A049696 n

end

end A206297.P8754992052860657577

namespace A206297

/-- `A100449(n)-A049696(n)` -/
def P8754992052860657577.Spec : Prop :=
  ∀ n, P8754992052860657577.a n = A206297 (n + 1)

end A206297

/-! ## A206297.P11569865017091728588

`xor(A057427(n), A206350(n+1))`
-/

namespace A206297.P11569865017091728588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A206350 (n + 1))

end

end A206297.P11569865017091728588

namespace A206297

/-- `xor(A057427(n), A206350(n+1))` -/
def P11569865017091728588.Spec : Prop :=
  ∀ n, P11569865017091728588.a n = A206297 (n + 1)

end A206297

