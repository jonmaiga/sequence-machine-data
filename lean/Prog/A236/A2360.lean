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
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B011.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A236000: Triangle read by rows in which row n lists the overpartitions of n in colexicographic order.

The programs for A236000, there is no canonical definition to state claims against.
-/

/-! ## A236000.P1771595117476562003

`ceil(A098069(n+1)^A098082(n)/4)`
-/

namespace A236000.P1771595117476562003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098069 (n + 1) : ℚ) ^ (A098082 n : ℤ) / 4⌉

end

end A236000.P1771595117476562003

/-! ## A236000.P7447127680216250784

`A278043(A098069(n+1)^A098082(n))`
-/

namespace A236000.P7447127680216250784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 (SequenceMachineLib.roundAway ((A098069 (n + 1) : ℚ) ^ (A098082 n : ℤ))).toNat

end

end A236000.P7447127680216250784

/-! ## A236000.P12882537885735772802

`A000161(A318683(n)²)`
-/

namespace A236000.P12882537885735772802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A318683 n ^ 2).toNat

end

end A236000.P12882537885735772802

/-! ## A236000.P12261369203556790054

`A088530(2*A088573(3*n+1))`
-/

namespace A236000.P12261369203556790054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (2 * A088573 (3 * n + 1)).toNat

end

end A236000.P12261369203556790054

/-! ## A236000.P10139127707666629653

`A043283(2*(A000045(n+1)+2*n))`
-/

namespace A236000.P10139127707666629653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (2 * (A000045 (n + 1) + (2 * n : ℤ))).toNat

end

end A236000.P10139127707666629653

/-!
# A236001: Sum of positive ranks of all overpartitions of n.

The programs for A236001, there is no canonical definition to state claims against.
-/

/-! ## A236001.P7832138980654336668

`record[gcd(A127391(n), A326016(n+1))]`
-/

namespace A236001.P7832138980654336668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127391 n) (A326016 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236001.P7832138980654336668

/-! ## A236001.P18343132559364013772

`A056926(record[A127391(n)²])`
-/

namespace A236001.P18343132559364013772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236001.P18343132559364013772

/-! ## A236001.P3441945478667982858

`A284827(A219209(3*n+1))-A092339(A064707(n))`
-/

namespace A236001.P3441945478667982858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284827 (A219209 (3 * n + 1)).toNat - A092339 (A064707 n).toNat

end

end A236001.P3441945478667982858

/-! ## A236001.P2807776471728741769

`A227762(A118026(n+1))`
-/

namespace A236001.P2807776471728741769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227762 (A118026 (n + 1)).toNat

end

end A236001.P2807776471728741769

/-!
# A236002: Number of overcompositions of n.

The programs for A236002, there is no canonical definition to state claims against.
-/

/-! ## A236002.P3523141426223342270

`A236633(n)+ceil(2^(n-1))`
-/

namespace A236002.P3523141426223342270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236633 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A236002.P3523141426223342270

/-! ## A236002.P2856771437750027017

`A237044(n)+A000041(n)`
-/

namespace A236002.P2856771437750027017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237044 n + A000041 n

end

end A236002.P2856771437750027017

/-! ## A236002.P8181031984356399224

`A237045(n)+A015128(n)`
-/

namespace A236002.P8181031984356399224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237045 n + A015128 n

end

end A236002.P8181031984356399224

/-! ## A236002.P6853941518642625858

`A237044(n)+A213598(n)`
-/

namespace A236002.P6853941518642625858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237044 n + A213598 n

end

end A236002.P6853941518642625858

/-! ## A236002.P17075018443984210199

`A330643(n)+A237044(n)`
-/

namespace A236002.P17075018443984210199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n + A237044 n

end

end A236002.P17075018443984210199

/-!
# A236003: Number of (n+1) X (1+1) 0..3 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2 X 2 subblock.

The programs for A236003, there is no canonical definition to state claims against.
-/

/-! ## A236003.P3497395637904014343

`A236009(∑[n]+1)`
-/

namespace A236003.P3497395637904014343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236003.P3497395637904014343

/-! ## A236003.P14871389576370314726

`lcm(2, A236009(A000124(n)))`
-/

namespace A236003.P14871389576370314726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236009 (A000124 n).toNat)

end

end A236003.P14871389576370314726

/-! ## A236003.P8472445072616701601

`record[root(A236009(n+1), A008288(n))]`
-/

namespace A236003.P8472445072616701601
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236009 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236003.P8472445072616701601

/-! ## A236003.P10097133188353427354

`record[root(A236009(n+1), A026769(n))]`
-/

namespace A236003.P10097133188353427354
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236009 (n + 1) : ℝ) ^ (1 / (A026769 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236003.P10097133188353427354

/-! ## A236003.P8231703295124532747

`record[root(A236009(n+1), A059268(n))]`
-/

namespace A236003.P8231703295124532747
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236009 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236003.P8231703295124532747

/-!
# A236004: Number of (n+1)X(2+1) 0..3 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A236004, there is no canonical definition to state claims against.
-/

/-! ## A236004.P12383577482070177111

`A236009(∑[n+1]+2)`
-/

namespace A236004.P12383577482070177111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236004.P12383577482070177111

/-! ## A236004.P13002272218787329281

`record[root(A236009(n+2), A059268(n))]`
-/

namespace A236004.P13002272218787329281
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236009 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236004.P13002272218787329281

/-! ## A236004.P13928096827589203190

`A236009(A252460(2*(n+2)))+A000038(n+1)`
-/

namespace A236004.P13928096827589203190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (A252460 (2 * (n + 2))).toNat + A000038 (n + 1)

end

end A236004.P13928096827589203190

/-! ## A236004.P11703660802232159083

`A236009(A252460(2*(n+2)))+A034576(n+1)`
-/

namespace A236004.P11703660802232159083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (A252460 (2 * (n + 2))).toNat + A034576 (n + 1)

end

end A236004.P11703660802232159083

/-! ## A236004.P12461708832140955447

`A243823(n+1)!*A236009(A252460(2*(n+2)))`
-/

namespace A236004.P12461708832140955447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A243823 (n + 1)).toNat : ℤ) * A236009 (A252460 (2 * (n + 2))).toNat

end

end A236004.P12461708832140955447

/-!
# A236005: Number of (n+1)X(3+1) 0..3 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A236005, there is no canonical definition to state claims against.
-/

/-! ## A236005.P14014344300524254577

`A236009(∑[n+2]+4)`
-/

namespace A236005.P14014344300524254577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236005.P14014344300524254577

/-! ## A236005.P601296972264262976

`lcm(2, A236009(A167614(n+1)))`
-/

namespace A236005.P601296972264262976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236009 (A167614 (n + 1)).toNat)

end

end A236005.P601296972264262976

/-! ## A236005.P2809367950213025944

`A236009(Δ[A008778(n)])+A034554(n+1)`
-/

namespace A236005.P2809367950213025944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (f1 (n + 1) - f1 n).toNat + A034554 (n + 1)

end

end A236005.P2809367950213025944

/-! ## A236005.P1779762497341896612

`A147494(n+1)*A236009(Δ[A008778(n)])`
-/

namespace A236005.P1779762497341896612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147494 (n + 1) * A236009 (f1 (n + 1) - f1 n).toNat

end

end A236005.P1779762497341896612

/-! ## A236005.P5308088192048834913

`A236009(Δ[A008778(n)])%A236006(n+1)`
-/

namespace A236005.P5308088192048834913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236009 (f1 (n + 1) - f1 n).toNat) (A236006 (n + 1))

end

end A236005.P5308088192048834913

/-!
# A236006: Number of (n+1)X(4+1) 0..3 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A236006, there is no canonical definition to state claims against.
-/

/-! ## A236006.P5583432170291311679

`A236009(A055999(n)+10)`
-/

namespace A236006.P5583432170291311679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (A055999 n + 10).toNat

end

end A236006.P5583432170291311679

/-! ## A236006.P2465534660442621884

`A236009(A167614(n+2)+1)`
-/

namespace A236006.P2465534660442621884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (A167614 (n + 2) + 1).toNat

end

end A236006.P2465534660442621884

/-! ## A236006.P10328323964302428126

`A236009(eq[5, A131818(n+1)])`
-/

namespace A236006.P10328323964302428126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236006.P10328323964302428126

/-! ## A236006.P15862891781916736656

`A236009(Δ[A023545(n+1)-n²])`
-/

namespace A236006.P15862891781916736656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (f1 (n + 1) - f1 n).toNat

end

end A236006.P15862891781916736656

/-! ## A236006.P14514238191109994988

`A236009(A141214(n+1))`
-/

namespace A236006.P14514238191109994988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (A141214 (n + 1)).toNat

end

end A236006.P14514238191109994988

/-!
# A236007: Number of (n+1)X(5+1) 0..3 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A236007, there is no canonical definition to state claims against.
-/

/-! ## A236007.P11300464768372162958

`A236009(A056000(n)+15)`
-/

namespace A236007.P11300464768372162958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (A056000 n + 15).toNat

end

end A236007.P11300464768372162958

/-! ## A236007.P17191132868733002456

`A236009(eq[6, A131818(n+1)])`
-/

namespace A236007.P17191132868733002456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236007.P17191132868733002456

/-! ## A236007.P9643437943583468273

`A236009(A374005(n+1))`
-/

namespace A236007.P9643437943583468273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (A374005 (n + 1)).toNat

end

end A236007.P9643437943583468273

/-! ## A236007.P15032028432504243100

`A236009(Δ[A023545(n+1)])`
-/

namespace A236007.P15032028432504243100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (f1 (n + 1) - f1 n).toNat

end

end A236007.P15032028432504243100

/-! ## A236007.P16408116307740950262

`A236009(eq[5, A194921(n+1)])`
-/

namespace A236007.P16408116307740950262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236007.P16408116307740950262

/-!
# A236008: Number of (n+1)X(6+1) 0..3 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A236008, there is no canonical definition to state claims against.
-/

/-! ## A236008.P9792063303254299468

`A236009(eq[7, A131818(n+1)])`
-/

namespace A236008.P9792063303254299468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236008.P9792063303254299468

/-! ## A236008.P8359926297606632556

`A236009(A374007(n+1))`
-/

namespace A236008.P8359926297606632556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (A374007 (n + 1)).toNat

end

end A236008.P8359926297606632556

/-! ## A236008.P7255048557594713307

`A236009(Δ[Δ[A006504(n+1)]])`
-/

namespace A236008.P7255048557594713307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (f1 (n + 1) - f1 n).toNat

end

end A236008.P7255048557594713307

/-! ## A236008.P18412841032993341972

`A236009(Δ[A023545(n+2)]-1)`
-/

namespace A236008.P18412841032993341972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236009 (f1 (n + 1) - f1 n - 1).toNat

end

end A236008.P18412841032993341972

/-!
# A236010: Number of (n+1)X(n+1) 0..2 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236010, there is no canonical definition to state claims against.
-/

/-! ## A236010.P10291472550632538252

`A236018((n+1)²+n²)`
-/

namespace A236010.P10291472550632538252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 ((n + 1) ^ 2 + n ^ 2)

end

end A236010.P10291472550632538252

/-! ## A236010.P16381224736171677374

`record[A003982(n)*A236018(n+1)]`
-/

namespace A236010.P16381224736171677374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236010.P16381224736171677374

/-! ## A236010.P14621231407320148122

`record[root(A236018(n+1), A027420(n))]`
-/

namespace A236010.P14621231407320148122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236018 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236010.P14621231407320148122

/-! ## A236010.P6309824148224292577

`record[gcd(A166040(n), A236018(n+1))]`
-/

namespace A236010.P6309824148224292577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 n) (A236018 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236010.P6309824148224292577

/-! ## A236010.P1007795718398683787

`lcm(A000034(n), A236018(A001844(n)))`
-/

namespace A236010.P1007795718398683787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A236018 (A001844 n).toNat)

end

end A236010.P1007795718398683787

/-!
# A236011: Number of (n+1) X (1+1) 0..2 arrays colored with the sum of the maximum and minimum values of each 2 X 2 subblock.

The programs for A236011, there is no canonical definition to state claims against.
-/

/-! ## A236011.P1992212802757378580

`A236018(∑[n]+1)`
-/

namespace A236011.P1992212802757378580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236011.P1992212802757378580

/-! ## A236011.P8301364844124143856

`record[A236018(n+1)]`
-/

namespace A236011.P8301364844124143856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236011.P8301364844124143856

/-! ## A236011.P10624247486211331269

`lcm(A000034(n), A236018(A000124(n)))`
-/

namespace A236011.P10624247486211331269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A236018 (A000124 n).toNat)

end

end A236011.P10624247486211331269

/-! ## A236011.P15374505048274858090

`or(A000007(n), A236018(A000124(n)))`
-/

namespace A236011.P15374505048274858090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A236018 (A000124 n).toNat)

end

end A236011.P15374505048274858090

/-! ## A236011.P18128384452688525902

`A236018(A000124(n))+A000007(n+1)`
-/

namespace A236011.P18128384452688525902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A000124 n).toNat + A000007 (n + 1)

end

end A236011.P18128384452688525902

/-!
# A236012: Number of (n+1)X(2+1) 0..2 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236012, there is no canonical definition to state claims against.
-/

/-! ## A236012.P9744985428335276244

`A236018(∑[n+1]+2)`
-/

namespace A236012.P9744985428335276244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236012.P9744985428335276244

/-! ## A236012.P8701963400968370445

`lcm(2, A236018(A133263(n+1)))`
-/

namespace A236012.P8701963400968370445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236018 (A133263 (n + 1)).toNat)

end

end A236012.P8701963400968370445

/-! ## A236012.P5013585858964510523

`record[A236018(abs(A201163(n)))]`
-/

namespace A236012.P5013585858964510523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236012.P5013585858964510523

/-! ## A236012.P11846677544262577029

`A236018(A117142(2*(n+1)))%A112141(n+4)`
-/

namespace A236012.P11846677544262577029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236018 (A117142 (2 * (n + 1))).toNat) (A112141 (n + 4))

end

end A236012.P11846677544262577029

/-! ## A236012.P15990199732650258060

`record[A236018(A198455(n+1))]`
-/

namespace A236012.P15990199732650258060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236012.P15990199732650258060

/-!
# A236013: Number of (n+1)X(3+1) 0..2 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236013, there is no canonical definition to state claims against.
-/

/-! ## A236013.P12699370477847760007

`A236018(A167614(n+1))`
-/

namespace A236013.P12699370477847760007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A167614 (n + 1)).toNat

end

end A236013.P12699370477847760007

/-! ## A236013.P14725891218430876915

`A236018(A373663(n+1))`
-/

namespace A236013.P14725891218430876915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A373663 (n + 1)).toNat

end

end A236013.P14725891218430876915

/-! ## A236013.P11953663042884294045

`A236018(A055998(n)+6)`
-/

namespace A236013.P11953663042884294045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A055998 n + 6).toNat

end

end A236013.P11953663042884294045

/-! ## A236013.P16218821185543205337

`A236018(A046691(n)+7)`
-/

namespace A236013.P16218821185543205337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A046691 n + 7).toNat

end

end A236013.P16218821185543205337

/-! ## A236013.P17240908586652152601

`A236018(A167499(n)+n)`
-/

namespace A236013.P17240908586652152601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A167499 n + (n : ℤ)).toNat

end

end A236013.P17240908586652152601

/-!
# A236014: Number of (n+1)X(4+1) 0..2 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236014, there is no canonical definition to state claims against.
-/

/-! ## A236014.P12739178282472952431

`A236018(A374004(n+1))`
-/

namespace A236014.P12739178282472952431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A374004 (n + 1)).toNat

end

end A236014.P12739178282472952431

/-! ## A236014.P8181729023816609468

`A236018(A141214(n)+7)`
-/

namespace A236014.P8181729023816609468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A141214 n + 7).toNat

end

end A236014.P8181729023816609468

/-! ## A236014.P3342565195506850371

`A236018(A052905(n)+9)`
-/

namespace A236014.P3342565195506850371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A052905 n + 9).toNat

end

end A236014.P3342565195506850371

/-! ## A236014.P7214588470565181939

`A236018(A167614(n+2)+1)`
-/

namespace A236014.P7214588470565181939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A167614 (n + 2) + 1).toNat

end

end A236014.P7214588470565181939

/-! ## A236014.P3227215582144208512

`A236018(A000124(n+3)+3)`
-/

namespace A236014.P3227215582144208512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A000124 (n + 3) + 3).toNat

end

end A236014.P3227215582144208512

/-!
# A236015: Number of (n+1)X(5+1) 0..2 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236015, there is no canonical definition to state claims against.
-/

/-! ## A236015.P9986955300706915143

`A236018(A374005(n+1))`
-/

namespace A236015.P9986955300706915143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A374005 (n + 1)).toNat

end

end A236015.P9986955300706915143

/-! ## A236015.P13388748185885213309

`A236018(A167499(n+3))`
-/

namespace A236015.P13388748185885213309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A167499 (n + 3)).toNat

end

end A236015.P13388748185885213309

/-! ## A236015.P7043073052513819084

`A236018(A000124(n+4)+4)`
-/

namespace A236015.P7043073052513819084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A000124 (n + 4) + 4).toNat

end

end A236015.P7043073052513819084

/-! ## A236015.P5438559558495836700

`A236018(A141214(n+1)+8)`
-/

namespace A236015.P5438559558495836700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A141214 (n + 1) + 8).toNat

end

end A236015.P5438559558495836700

/-! ## A236015.P13026526476587801379

`A236018(A027379(n+2)+8)`
-/

namespace A236015.P13026526476587801379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A027379 (n + 2) + 8).toNat

end

end A236015.P13026526476587801379

/-!
# A236016: Number of (n+1) X (6+1) 0..2 arrays colored with the sum of the maximum and minimum values of each 2 X 2 subblock.

The programs for A236016, there is no canonical definition to state claims against.
-/

/-! ## A236016.P1749595835812772319

`A236018(A374007(n+1))`
-/

namespace A236016.P1749595835812772319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A374007 (n + 1)).toNat

end

end A236016.P1749595835812772319

/-! ## A236016.P9848822243799304664

`A236018(A167614(n+4)+3)`
-/

namespace A236016.P9848822243799304664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A167614 (n + 4) + 3).toNat

end

end A236016.P9848822243799304664

/-! ## A236016.P3246982218262416391

`A236018(A000124(n+5)+5)`
-/

namespace A236016.P3246982218262416391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A000124 (n + 5) + 5).toNat

end

end A236016.P3246982218262416391

/-! ## A236016.P890002265715689488

`A236018(A000217(n+5)+6)`
-/

namespace A236016.P890002265715689488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A000217 (n + 5) + 6).toNat

end

end A236016.P890002265715689488

/-! ## A236016.P11145561742037950377

`A236018(A055999(n+4)-(2*n+1))`
-/

namespace A236016.P11145561742037950377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A236016.P11145561742037950377

/-!
# A236017: Number of (n+1)X(7+1) 0..2 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236017, there is no canonical definition to state claims against.
-/

/-! ## A236017.P16298607924080078204

`A236018(A374008(n+1))`
-/

namespace A236017.P16298607924080078204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A374008 (n + 1)).toNat

end

end A236017.P16298607924080078204

/-! ## A236017.P16378685013797213177

`A236018(A000217(n+6)+7)`
-/

namespace A236017.P16378685013797213177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A000217 (n + 6) + 7).toNat

end

end A236017.P16378685013797213177

/-! ## A236017.P11575846246381360145

`A236018(A055998(n+4)+10)`
-/

namespace A236017.P11575846246381360145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A055998 (n + 4) + 10).toNat

end

end A236017.P11575846246381360145

/-! ## A236017.P14740046105611718714

`A236018(A133263(n+9)-A016777(n+6))`
-/

namespace A236017.P14740046105611718714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A133263 (n + 9) - A016777 (n + 6)).toNat

end

end A236017.P14740046105611718714

/-! ## A236017.P2804994714258655905

`A236018(A055999(n+4))`
-/

namespace A236017.P2804994714258655905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236018 (A055999 (n + 4)).toNat

end

end A236017.P2804994714258655905

/-!
# A236019: Smallest number having at least n partitions that contain at least n primes.

The programs for A236019, there is no canonical definition to state claims against.
-/

/-! ## A236019.P15423441740662649251

`A019590(2*n+3)+comp[A236444(n+1)]`
-/

namespace A236019.P15423441740662649251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236444 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A236019.P15423441740662649251

/-! ## A236019.P6927276994111572482

`eq[0, char[A236444(n+1)]]`
-/

namespace A236019.P6927276994111572482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236444 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236019.P6927276994111572482

/-! ## A236019.P4740550032671592571

`comp[∑[A070939(A092969(n+1))]]+n`
-/

namespace A236019.P4740550032671592571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A092969 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A236019.P4740550032671592571

/-! ## A236019.P4640160131430007092

`comp[∑[A241726(A062943(n+1))+1]]+n`
-/

namespace A236019.P4640160131430007092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241726 ((A062943 (n + 1)).toNat + 36) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A236019.P4640160131430007092

/-! ## A236019.P14297453889154345424

`comp[∑[A002993(A003724(n+4))+n]]+n`
-/

namespace A236019.P14297453889154345424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A003724 (n + 4)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A236019.P14297453889154345424

/-!
# A236021: Record values in A236020.

The programs for A236021, there is no canonical definition to state claims against.
-/

/-! ## A236021.P9483701151223307419

`record[A236020(n+1)]`
-/

namespace A236021.P9483701151223307419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236021.P9483701151223307419

/-! ## A236021.P13117191151922771064

`A094348(∑[A349082(2*n²+1)])`
-/

namespace A236021.P13117191151922771064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (2 * n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236021.P13117191151922771064

/-! ## A236021.P16001252384564646737

`A094348(A138302(n+1)%A335557(2*n+1))`
-/

namespace A236021.P16001252384564646737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (Int.tmod (A138302 (n + 1)) (A335557 (2 * n + 1))).toNat

end

end A236021.P16001252384564646737

/-! ## A236021.P3125608306332156723

`record[A225650(A094348(n+1))]`
-/

namespace A236021.P3125608306332156723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 (A094348 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236021.P3125608306332156723

/-! ## A236021.P6769605899216844546

`A094348(lcm(A270428(n+1), A293630(n+1)))`
-/

namespace A236021.P6769605899216844546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (Int.lcm (A270428 (n + 1)) (A293630 (n + 1)))

end

end A236021.P6769605899216844546

/-!
# A236024: Record values in A236022.

The programs for A236024, there is no canonical definition to state claims against.
-/

/-! ## A236024.P5776140610112681429

`record[A236022(n+1)]`
-/

namespace A236024.P5776140610112681429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236024.P5776140610112681429

/-! ## A236024.P8755915211138712325

`record[A077584(n+2)]`
-/

namespace A236024.P8755915211138712325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077584 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236024.P8755915211138712325

/-! ## A236024.P537299515160758338

`record[A093896(n+2)]`
-/

namespace A236024.P537299515160758338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093896 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236024.P537299515160758338

/-! ## A236024.P10960300778459839431

`A280076(ceil(sqrt(n²+4)))+char[2]`
-/

namespace A236024.P10960300778459839431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236024.P10960300778459839431

/-! ## A236024.P17424211368269558804

`A000040(n%a(n-1))²` with `a(0)=4, a(1)=9, a(2)=10`
-/

namespace A236024.P17424211368269558804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9, 10] fun n a =>
  A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat ^ 2

end

end A236024.P17424211368269558804

/-!
# A236026: Sequence of numbers from A236025 such that A236025(n) > A236025(k) for all k < n.

The programs for A236026, there is no canonical definition to state claims against.
-/

/-! ## A236026.P3729672697237006283

`record[A236025(n+1)]`
-/

namespace A236026.P3729672697237006283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236026.P3729672697237006283

/-!
# A236028: Number of (n+1)X(1+1) 0..2 arrays colored with the difference of the upper median and the lower median in each 2X2 subblock.

The programs for A236028, there is no canonical definition to state claims against.
-/

/-! ## A236028.P11812458247873246671

`A236035(∑[n]+1)`
-/

namespace A236028.P11812458247873246671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236028.P11812458247873246671

/-! ## A236028.P2993965167491712347

`record[A236035(n+1)/A342891(n)]`
-/

namespace A236028.P2993965167491712347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236035 (n + 1) : ℚ) / (A342891 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236028.P2993965167491712347

/-! ## A236028.P894130504991499266

`record[root(A236035(n+1), A008288(n))]`
-/

namespace A236028.P894130504991499266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236035 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236028.P894130504991499266

/-! ## A236028.P16660996591598733746

`record[root(A236035(n+1), A035317(n))]`
-/

namespace A236028.P16660996591598733746
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236035 (n + 1) : ℝ) ^ (1 / (A035317 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236028.P16660996591598733746

/-! ## A236028.P4454313217309284821

`record[gcd(A236035(n+1), A238010(n))]`
-/

namespace A236028.P4454313217309284821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236035 (n + 1)) (A238010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236028.P4454313217309284821

/-!
# A236029: Number of (n+1) X (2+1) 0..2 arrays colored with the difference of the upper median and the lower median in each 2 X 2 subblock.

The programs for A236029, there is no canonical definition to state claims against.
-/

/-! ## A236029.P1073700725795771559

`A236035(∑[n+1]+2)`
-/

namespace A236029.P1073700725795771559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236029.P1073700725795771559

/-! ## A236029.P4069538574626970254

`record[A236035(A277881(n+1)+2)]`
-/

namespace A236029.P4069538574626970254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A277881 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236029.P4069538574626970254

/-! ## A236029.P5370102705523041519

`record[gcd(A236035(n+2), A238010(n))]`
-/

namespace A236029.P5370102705523041519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236035 (n + 2)) (A238010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236029.P5370102705523041519

/-! ## A236029.P10810309097977140855

`record[A236035(abs(A201163(n)))]`
-/

namespace A236029.P10810309097977140855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236029.P10810309097977140855

/-! ## A236029.P1775785362057380014

`lcm(2, A236035(A000096(n+1)))`
-/

namespace A236029.P1775785362057380014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236035 (A000096 (n + 1)).toNat)

end

end A236029.P1775785362057380014

/-!
# A236030: Number of (n+1) X (3+1) 0..2 arrays colored with the difference of the upper median and the lower median in each 2 X 2 subblock.

The programs for A236030, there is no canonical definition to state claims against.
-/

/-! ## A236030.P9843950033994445292

`A236035(∑[n+2]+4)`
-/

namespace A236030.P9843950033994445292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236030.P9843950033994445292

/-! ## A236030.P10746539189226400451

`lcm(2, A236035(A167614(n+1)))`
-/

namespace A236030.P10746539189226400451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236035 (A167614 (n + 1)).toNat)

end

end A236030.P10746539189226400451

/-! ## A236030.P9354440189077930005

`A236035(A167614(n+1))+A025437(n)`
-/

namespace A236030.P9354440189077930005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A167614 (n + 1)).toNat + A025437 n

end

end A236030.P9354440189077930005

/-! ## A236030.P2179815362142880900

`A236035(A167614(n+1))+A185037(n)`
-/

namespace A236030.P2179815362142880900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A167614 (n + 1)).toNat + A185037 n

end

end A236030.P2179815362142880900

/-! ## A236030.P16890186212506295164

`A184303(n+1)*A236035(A167614(n+1))`
-/

namespace A236030.P16890186212506295164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (n + 1) * A236035 (A167614 (n + 1)).toNat

end

end A236030.P16890186212506295164

/-!
# A236031: Number of (n+1)X(4+1) 0..2 arrays colored with the difference of the upper median and the lower median in each 2X2 subblock.

The programs for A236031, there is no canonical definition to state claims against.
-/

/-! ## A236031.P7726567840972132351

`A236035(A374004(n+1))`
-/

namespace A236031.P7726567840972132351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A374004 (n + 1)).toNat

end

end A236031.P7726567840972132351

/-! ## A236031.P13541935491254984213

`A236035(A141214(n)+7)`
-/

namespace A236031.P13541935491254984213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A141214 n + 7).toNat

end

end A236031.P13541935491254984213

/-! ## A236031.P7025835111005404237

`A236035(A052905(n)+9)`
-/

namespace A236031.P7025835111005404237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A052905 n + 9).toNat

end

end A236031.P7025835111005404237

/-! ## A236031.P7785759795703381761

`A236035(A055999(n)+10)`
-/

namespace A236031.P7785759795703381761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A055999 n + 10).toNat

end

end A236031.P7785759795703381761

/-! ## A236031.P10063545623792984451

`A236035(A167614(n+2)+1)`
-/

namespace A236031.P10063545623792984451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A167614 (n + 2) + 1).toNat

end

end A236031.P10063545623792984451

/-!
# A236032: Number of (n+1)X(5+1) 0..2 arrays colored with the difference of the upper median and the lower median in each 2X2 subblock.

The programs for A236032, there is no canonical definition to state claims against.
-/

/-! ## A236032.P4863812380922628601

`A236035(A374005(n+1))`
-/

namespace A236032.P4863812380922628601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A374005 (n + 1)).toNat

end

end A236032.P4863812380922628601

/-! ## A236032.P6694111519618358731

`A236035(A155212(n)+13)`
-/

namespace A236032.P6694111519618358731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A155212 n + 13).toNat

end

end A236032.P6694111519618358731

/-! ## A236032.P11762237103195764736

`A236035(A056000(n)+15)`
-/

namespace A236032.P11762237103195764736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A056000 n + 15).toNat

end

end A236032.P11762237103195764736

/-! ## A236032.P3857145027186328320

`A236035(eq[7, A066657(n)])`
-/

namespace A236032.P3857145027186328320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236032.P3857145027186328320

/-! ## A236032.P9301248480029900935

`A236035(eq[6, A131818(n+1)])`
-/

namespace A236032.P9301248480029900935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236032.P9301248480029900935

/-!
# A236033: Number of (n+1)X(6+1) 0..2 arrays colored with the difference of the upper median and the lower median in each 2X2 subblock.

The programs for A236033, there is no canonical definition to state claims against.
-/

/-! ## A236033.P3987022465980524083

`A236035(A374007(n+1))`
-/

namespace A236033.P3987022465980524083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A374007 (n + 1)).toNat

end

end A236033.P3987022465980524083

/-! ## A236033.P10956625487187842039

`A236035(eq[7, A131818(n+1)])`
-/

namespace A236033.P10956625487187842039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236033.P10956625487187842039

/-! ## A236033.P15543100436584468752

`A236035(eq[3, A219347(n)])`
-/

namespace A236033.P15543100436584468752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236033.P15543100436584468752

/-! ## A236033.P1769993155303702407

`A236035(eq[5, A193592(n)])`
-/

namespace A236033.P1769993155303702407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236033.P1769993155303702407

/-! ## A236033.P16188307956590693768

`A236035(eq[6, A200370(n+1)])`
-/

namespace A236033.P16188307956590693768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236033.P16188307956590693768

/-!
# A236034: Number of (n+1)X(7+1) 0..2 arrays colored with the difference of the upper median and the lower median in each 2X2 subblock.

The programs for A236034, there is no canonical definition to state claims against.
-/

/-! ## A236034.P6977626626999175397

`A236035(A374008(n+1))`
-/

namespace A236034.P6977626626999175397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A374008 (n + 1)).toNat

end

end A236034.P6977626626999175397

/-! ## A236034.P14606003850286615151

`A236035(A167487(n+5))`
-/

namespace A236034.P14606003850286615151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A167487 (n + 5)).toNat

end

end A236034.P14606003850286615151

/-! ## A236034.P14041003574399649348

`A236035(eq[11, A066657(n)])`
-/

namespace A236034.P14041003574399649348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236034.P14041003574399649348

/-! ## A236034.P8779394318408741111

`A236035(A167614(n+5)+4)`
-/

namespace A236034.P8779394318408741111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (A167614 (n + 5) + 4).toNat

end

end A236034.P8779394318408741111

/-! ## A236034.P15714615193132572038

`A236035(eq[8, A131818(n+1)])`
-/

namespace A236034.P15714615193132572038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236034.P15714615193132572038

/-!
# A236037: Number of (n+1)X(1+1) 0..3 arrays colored with the difference of the upper median and the lower median in each 2X2 subblock.

The programs for A236037, there is no canonical definition to state claims against.
-/

/-! ## A236037.P95057642481132971

`A236041(∑[n]+1)`
-/

namespace A236037.P95057642481132971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236041 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236037.P95057642481132971

/-! ## A236037.P14334313226909743021

`record[char[C(n, 2)]*A236041(n+1)]`
-/

namespace A236037.P14334313226909743021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A236041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236037.P14334313226909743021

/-! ## A236037.P3497894418679467875

`lcm(2, A236041(A000124(n)))`
-/

namespace A236037.P3497894418679467875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236041 (A000124 n).toNat)

end

end A236037.P3497894418679467875

/-! ## A236037.P3061273439457426550

`record[A236041(A056534(n+1))]`
-/

namespace A236037.P3061273439457426550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236041 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236037.P3061273439457426550

/-! ## A236037.P6314015690761112452

`record[A010054(n)*A236041(n+1)]`
-/

namespace A236037.P6314015690761112452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236037.P6314015690761112452

/-!
# A236038: Number of (n+1)X(2+1) 0..3 arrays colored with the difference of the upper median and the lower median in each 2X2 subblock.

The programs for A236038, there is no canonical definition to state claims against.
-/

/-! ## A236038.P5867147495296971767

`A236041(∑[n+1]+2)`
-/

namespace A236038.P5867147495296971767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236041 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236038.P5867147495296971767

/-! ## A236038.P6939097941010479463

`record[A236041(A056536(n+1)+1)]`
-/

namespace A236038.P6939097941010479463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236041 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236038.P6939097941010479463

/-! ## A236038.P8564649655302650025

`record[A236041(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A236038.P8564649655302650025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236041 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236038.P8564649655302650025

/-! ## A236038.P17764759099130053812

`A326523(n)+A236041(A133263(n+1))`
-/

namespace A236038.P17764759099130053812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n + A236041 (A133263 (n + 1)).toNat

end

end A236038.P17764759099130053812

/-!
# A236039: Number of (n+1)X(3+1) 0..3 arrays colored with the difference of the upper median and the lower median in each 2X2 subblock.

The programs for A236039, there is no canonical definition to state claims against.
-/

/-! ## A236039.P15492617202560973464

`A236041(∑[n+2]+4)`
-/

namespace A236039.P15492617202560973464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236041 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236039.P15492617202560973464

/-! ## A236039.P17802914131536985759

`lcm(2, A236041(A167614(n+1)))`
-/

namespace A236039.P17802914131536985759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236041 (A167614 (n + 1)).toNat)

end

end A236039.P17802914131536985759

/-! ## A236039.P7207053546158716939

`A236041(A167614(n+1))+A035042(n)`
-/

namespace A236039.P7207053546158716939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236041 (A167614 (n + 1)).toNat + A035042 n

end

end A236039.P7207053546158716939

/-!
# A236040: Number of (n+1)X(4+1) 0..3 arrays colored with the difference of the upper median and the lower median in each 2X2 subblock.

The programs for A236040, there is no canonical definition to state claims against.
-/

/-! ## A236040.P8663247885044244797

`A236041(∑[2*a(n-1)-a(n-2)])` with `a(0)=10, a(1)=4, a(2)=5`
-/

namespace A236040.P8663247885044244797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 4, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236040.P8663247885044244797

/-! ## A236040.P18306931832793074015

`A236041(A020752(n+1))`
-/

namespace A236040.P18306931832793074015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236041 (A020752 (n + 1)).toNat

end

end A236040.P18306931832793074015

/-!
# A236042: Primes p such that 100*p+1, 100*p+3, 100*p+7, and 100*p+9 are all prime.

The programs for A236042, there is no canonical definition to state claims against.
-/

/-! ## A236042.P915497100488129051

`p?[A064687(n+1)]`
-/

namespace A236042.P915497100488129051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236042.P915497100488129051

/-! ## A236042.P16745973602740057661

`p?[record[A064687(A133310(n))]]`
-/

namespace A236042.P16745973602740057661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064687 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236042.P16745973602740057661

/-! ## A236042.P5359568518132321873

`p?[record[A064687(A286544(n))]]`
-/

namespace A236042.P5359568518132321873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064687 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236042.P5359568518132321873

/-! ## A236042.P8960790132568083186

`p?[record[A064687(A291769(n))]]`
-/

namespace A236042.P8960790132568083186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064687 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236042.P8960790132568083186

/-! ## A236042.P10152302415115823622

`p?[record[A064687(A324346(n))]]`
-/

namespace A236042.P10152302415115823622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064687 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236042.P10152302415115823622

/-!
# A236043: Number of triangular numbers <= 10^n.

The programs for A236043, the canonical program `A236043.P13256490886630527600` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236043 has offset 0).

The definition of A236043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236043.P13256490886630527600

`floor(sqrt(2*10^n+1)+1/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A236043

/-- `floor(sqrt(2*10^n+1)+1/2)` -/
def P13256490886630527600.Spec : Prop :=
  ∀ n, P13256490886630527600.a n = A236043 n

theorem P13256490886630527600.correct : P13256490886630527600.Spec := by
  intro n
  simp only [A236043]

end A236043

/-!
# A236044: Primes p such that p^4 + p + 1 is prime.

The programs for A236044, there is no canonical definition to state claims against.
-/

/-! ## A236044.P2015648892669177837

`p?[A049408(n+1)]`
-/

namespace A236044.P2015648892669177837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236044.P2015648892669177837

/-! ## A236044.P17041050595046050264

`p?[record[A049408(A324390(n))]]`
-/

namespace A236044.P17041050595046050264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (A324390 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236044.P17041050595046050264

/-! ## A236044.P15684647022500505112

`∩[A003627(n+1), A049408(n+1)]`
-/

namespace A236044.P15684647022500505112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P15684647022500505112

/-! ## A236044.P9790834039990164685

`∩[A045309(n+1), A049408(n+1)]`
-/

namespace A236044.P9790834039990164685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P9790834039990164685

/-! ## A236044.P1375632071669962739

`∩[A049408(n+1), A049596(n+1)]`
-/

namespace A236044.P1375632071669962739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P1375632071669962739

/-! ## A236044.P3650090581472914138

`∩[A040028(n+1), A049408(n+1)]`
-/

namespace A236044.P3650090581472914138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P3650090581472914138

/-! ## A236044.P10375774391727227703

`∩[A040036(n+1), A049408(n+1)]`
-/

namespace A236044.P10375774391727227703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P10375774391727227703

/-! ## A236044.P4925284533197225048

`∩[A040044(n+1), A049408(n+1)]`
-/

namespace A236044.P4925284533197225048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P4925284533197225048

/-! ## A236044.P18378101030777329989

`∩[A040046(n+1), A049408(n+1)]`
-/

namespace A236044.P18378101030777329989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P18378101030777329989

/-! ## A236044.P12740645948841158021

`∩[A040049(n+1), A049408(n+1)]`
-/

namespace A236044.P12740645948841158021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P12740645948841158021

/-! ## A236044.P1245131551042298466

`∩[A040054(n+1), A049408(n+1)]`
-/

namespace A236044.P1245131551042298466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P1245131551042298466

/-! ## A236044.P11003474832437205435

`∩[A040060(n+1), A049408(n+1)]`
-/

namespace A236044.P11003474832437205435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P11003474832437205435

/-! ## A236044.P3803635171833955014

`∩[A040062(n+1), A049408(n+1)]`
-/

namespace A236044.P3803635171833955014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P3803635171833955014

/-! ## A236044.P14392340242296071155

`∩[A040078(n+1), A049408(n+1)]`
-/

namespace A236044.P14392340242296071155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P14392340242296071155

/-! ## A236044.P16839614767063692099

`∩[A040083(n+1), A049408(n+1)]`
-/

namespace A236044.P16839614767063692099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P16839614767063692099

/-! ## A236044.P126156833322480408

`∩[A040085(n+1), A049408(n+1)]`
-/

namespace A236044.P126156833322480408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P126156833322480408

/-! ## A236044.P519434346198615794

`∩[A040087(n+1), A049408(n+1)]`
-/

namespace A236044.P519434346198615794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P519434346198615794

/-! ## A236044.P3309609641817548394

`∩[A040089(n+1), A049408(n+1)]`
-/

namespace A236044.P3309609641817548394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P3309609641817548394

/-! ## A236044.P9565860479071506252

`∩[A040095(n+1), A049408(n+1)]`
-/

namespace A236044.P9565860479071506252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P9565860479071506252

/-! ## A236044.P966126084384060872

`∩[A040065(n+1), A049408(n+1)]`
-/

namespace A236044.P966126084384060872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236044.P966126084384060872

/-!
# A236045: Primes p such that p^1+p+1, p^2+p+1, p^3+p+1, and p^4+p+1 are all prime.

The programs for A236045, there is no canonical definition to state claims against.
-/

/-! ## A236045.P17171759628479012809

`∩[A057683(n+1), A224781(n+1)]`
-/

namespace A236045.P17171759628479012809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236045.P17171759628479012809

/-! ## A236045.P3758008733991889581

`∩[A005384(n+1), A057683(n+1)]`
-/

namespace A236045.P3758008733991889581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236045.P3758008733991889581

/-! ## A236045.P3197449225920907869

`∩[A219117(n+1), A224781(n+1)]`
-/

namespace A236045.P3197449225920907869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236045.P3197449225920907869

/-! ## A236045.P12351812978733904044

`p?[A219117(n+1)]`
-/

namespace A236045.P12351812978733904044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236045.P12351812978733904044

/-! ## A236045.P10295846799008831773

`p?[record[A219117(A133310(n))]]`
-/

namespace A236045.P10295846799008831773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219117 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236045.P10295846799008831773

/-!
# A236046: Smallest number m > 1 such that m^n does not contain m as a substring.

The programs for A236046, there is no canonical definition to state claims against.
-/

/-! ## A236046.P11776314619214833165

`p?[A078444(A034943(A330312(n+1)))]`
-/

namespace A236046.P11776314619214833165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (A034943 (A330312 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236046.P11776314619214833165

/-!
# A236047: Number of (n+1)X(n+1) 0..2 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236047, there is no canonical definition to state claims against.
-/

/-! ## A236047.P11300731881708583755

`A236055((n+1)²+n²)`
-/

namespace A236047.P11300731881708583755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 ((n + 1) ^ 2 + n ^ 2)

end

end A236047.P11300731881708583755

/-! ## A236047.P9616405637236352376

`record[A003982(n)*A236055(n+1)]`
-/

namespace A236047.P9616405637236352376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236047.P9616405637236352376

/-! ## A236047.P18441694418517889071

`record[gcd(A049581(n), A236055(n+1))]`
-/

namespace A236047.P18441694418517889071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A236055 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236047.P18441694418517889071

/-! ## A236047.P12057355163135471558

`A236055(A001844(n))+val(A007318(n), 77)`
-/

namespace A236047.P12057355163135471558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A001844 n).toNat + (SequenceMachineLib.valuation (A007318 n).toNat 77 : ℤ)

end

end A236047.P12057355163135471558

/-! ## A236047.P9563104782981676875

`A007318(C(2, n+1))*A236055(A001844(n))`
-/

namespace A236047.P9563104782981676875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A236055 (A001844 n).toNat

end

end A236047.P9563104782981676875

/-!
# A236048: Number of (n+1) X (1+1) 0..2 arrays colored with the difference of the maximum and minimum in each 2 X 2 subblock.

The programs for A236048, there is no canonical definition to state claims against.
-/

/-! ## A236048.P16710151604241240108

`A236055(∑[n]+1)`
-/

namespace A236048.P16710151604241240108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236048.P16710151604241240108

/-! ## A236048.P7853230074056644136

`record[A236055(n+1)]`
-/

namespace A236048.P7853230074056644136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236048.P7853230074056644136

/-! ## A236048.P5669611084022558780

`or(2, A236055(A000124(n)))-2`
-/

namespace A236048.P5669611084022558780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A236055 (A000124 n).toNat) - 2

end

end A236048.P5669611084022558780

/-! ## A236048.P8961418859127998291

`or(A000007(n), A236055(A000124(n)))`
-/

namespace A236048.P8961418859127998291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A236055 (A000124 n).toNat)

end

end A236048.P8961418859127998291

/-! ## A236048.P17947171364273256054

`A236055(A000124(n))+A000007(n+1)`
-/

namespace A236048.P17947171364273256054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A000124 n).toNat + A000007 (n + 1)

end

end A236048.P17947171364273256054

/-!
# A236049: Number of (n+1) X (2+1) 0..2 arrays colored with the difference of the maximum and minimum in each 2 X 2 subblock.

The programs for A236049, there is no canonical definition to state claims against.
-/

/-! ## A236049.P12863100707128874179

`A236055(A133263(n+1))`
-/

namespace A236049.P12863100707128874179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A133263 (n + 1)).toNat

end

end A236049.P12863100707128874179

/-! ## A236049.P12604097605018629500

`A236055(A373662(n+1))`
-/

namespace A236049.P12604097605018629500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A373662 (n + 1)).toNat

end

end A236049.P12604097605018629500

/-! ## A236049.P6638713274233537635

`A236055(A000096(n)+3)`
-/

namespace A236049.P6638713274233537635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A000096 n + 3).toNat

end

end A236049.P6638713274233537635

/-! ## A236049.P18377853550630925028

`A236055(A167499(n)-3)`
-/

namespace A236049.P18377853550630925028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A167499 n - 3).toNat

end

end A236049.P18377853550630925028

/-! ## A236049.P5027130229588643715

`A236055(A000124(n+1)+1)`
-/

namespace A236049.P5027130229588643715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A000124 (n + 1) + 1).toNat

end

end A236049.P5027130229588643715

/-!
# A236050: Number of (n+1)X(3+1) 0..2 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236050, there is no canonical definition to state claims against.
-/

/-! ## A236050.P4353687763211937441

`A236055(A167614(n+1))`
-/

namespace A236050.P4353687763211937441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A167614 (n + 1)).toNat

end

end A236050.P4353687763211937441

/-! ## A236050.P7648834456113214697

`A236055(A373663(n+1))`
-/

namespace A236050.P7648834456113214697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A373663 (n + 1)).toNat

end

end A236050.P7648834456113214697

/-! ## A236050.P11809401731891199558

`A236055(A055998(n)+6)`
-/

namespace A236050.P11809401731891199558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A055998 n + 6).toNat

end

end A236050.P11809401731891199558

/-! ## A236050.P9100080012424800572

`A236055(A046691(n)+7)`
-/

namespace A236050.P9100080012424800572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A046691 n + 7).toNat

end

end A236050.P9100080012424800572

/-! ## A236050.P15429053274642857157

`A236055(A167499(n)+n)`
-/

namespace A236050.P15429053274642857157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A167499 n + (n : ℤ)).toNat

end

end A236050.P15429053274642857157

/-!
# A236051: Number of (n+1)X(4+1) 0..2 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236051, there is no canonical definition to state claims against.
-/

/-! ## A236051.P16395155143181540639

`A236055(A374004(n+1))`
-/

namespace A236051.P16395155143181540639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A374004 (n + 1)).toNat

end

end A236051.P16395155143181540639

/-! ## A236051.P16996073074655241995

`A236055(A141214(n)+7)`
-/

namespace A236051.P16996073074655241995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A141214 n + 7).toNat

end

end A236051.P16996073074655241995

/-! ## A236051.P8285928944344554302

`A236055(A052905(n)+9)`
-/

namespace A236051.P8285928944344554302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A052905 n + 9).toNat

end

end A236051.P8285928944344554302

/-! ## A236051.P16175043306253485382

`A236055(A055999(n)+10)`
-/

namespace A236051.P16175043306253485382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A055999 n + 10).toNat

end

end A236051.P16175043306253485382

/-! ## A236051.P12782348440409184168

`A236055(A167614(n+2)+1)`
-/

namespace A236051.P12782348440409184168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A167614 (n + 2) + 1).toNat

end

end A236051.P12782348440409184168

/-!
# A236052: Number of (n+1)X(5+1) 0..2 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236052, there is no canonical definition to state claims against.
-/

/-! ## A236052.P12420964230610030537

`A236055(A374005(n+1))`
-/

namespace A236052.P12420964230610030537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A374005 (n + 1)).toNat

end

end A236052.P12420964230610030537

/-! ## A236052.P4202040013086848027

`A236055(A167499(n+3))`
-/

namespace A236052.P4202040013086848027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A167499 (n + 3)).toNat

end

end A236052.P4202040013086848027

/-! ## A236052.P1447077480009989381

`A236055(A046691(n+3))`
-/

namespace A236052.P1447077480009989381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A046691 (n + 3)).toNat

end

end A236052.P1447077480009989381

/-! ## A236052.P12130518626799342704

`A236055(Δ[A023545(n+1)])`
-/

namespace A236052.P12130518626799342704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (f1 (n + 1) - f1 n).toNat

end

end A236052.P12130518626799342704

/-! ## A236052.P10913667273247689372

`A236055(A055999(n+2)+2)`
-/

namespace A236052.P10913667273247689372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A055999 (n + 2) + 2).toNat

end

end A236052.P10913667273247689372

/-!
# A236053: Number of (n+1)X(6+1) 0..2 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236053, there is no canonical definition to state claims against.
-/

/-! ## A236053.P16857799129365892117

`A236055(A374007(n+1))`
-/

namespace A236053.P16857799129365892117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A374007 (n + 1)).toNat

end

end A236053.P16857799129365892117

/-! ## A236053.P1784940257206414963

`A236055(A167499(n+4)+1)`
-/

namespace A236053.P1784940257206414963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A167499 (n + 4) + 1).toNat

end

end A236053.P1784940257206414963

/-! ## A236053.P2230634409667576394

`A236055(A000217(n+5)+6)`
-/

namespace A236053.P2230634409667576394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A000217 (n + 5) + 6).toNat

end

end A236053.P2230634409667576394

/-! ## A236053.P6448669938973321953

`A236055((n+5)²-A055999(n+1))`
-/

namespace A236053.P6448669938973321953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (((n + 5) ^ 2 : ℤ) - A055999 (n + 1)).toNat

end

end A236053.P6448669938973321953

/-! ## A236053.P227637832085996355

`A236055(Δ[10*(n+1)+A023545(n+1)])`
-/

namespace A236053.P227637832085996355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) + A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (f1 (n + 1) - f1 n).toNat

end

end A236053.P227637832085996355

/-!
# A236054: Number of (n+1)X(7+1) 0..2 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236054, there is no canonical definition to state claims against.
-/

/-! ## A236054.P6469916004190297438

`A236055(A374008(n+1))`
-/

namespace A236054.P6469916004190297438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A374008 (n + 1)).toNat

end

end A236054.P6469916004190297438

/-! ## A236054.P17277406015223160077

`A236055(A167499(n+5)+2)`
-/

namespace A236054.P17277406015223160077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A167499 (n + 5) + 2).toNat

end

end A236054.P17277406015223160077

/-! ## A236054.P18014650782808696836

`A236055(A167614(n+5)+4)`
-/

namespace A236054.P18014650782808696836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A167614 (n + 5) + 4).toNat

end

end A236054.P18014650782808696836

/-! ## A236054.P7523487257479567925

`A236055(A027379(n+4)+10)`
-/

namespace A236054.P7523487257479567925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A027379 (n + 4) + 10).toNat

end

end A236054.P7523487257479567925

/-! ## A236054.P4817434274465954772

`A236055(A340266(n+3)+A005843(n+8))`
-/

namespace A236054.P4817434274465954772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236055 (A340266 (n + 3) + A005843 (n + 8)).toNat

end

end A236054.P4817434274465954772

/-!
# A236056: Numbers k such that k^2 +- k +- 1 is prime for all four possibilities.

The programs for A236056, there is no canonical definition to state claims against.
-/

/-! ## A236056.P7163287703337340550

`A088498(n+1)+1`
-/

namespace A236056.P7163287703337340550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088498 (n + 1) + 1

end

end A236056.P7163287703337340550

/-! ## A236056.P3251745663157528901

`∩[A088485(n+1), A131530(n+1)]`
-/

namespace A236056.P3251745663157528901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236056.P3251745663157528901

/-! ## A236056.P8844199279518925488

`∩[A100712(n+1), A137446(n+1)]`
-/

namespace A236056.P8844199279518925488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236056.P8844199279518925488

/-! ## A236056.P13965459331172345358

`∩[A131530(A028310(n+1)), A131530(n+1)-1]`
-/

namespace A236056.P13965459331172345358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (A028310 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236056.P13965459331172345358

/-! ## A236056.P11430879764160994458

`∩[A088486(n+1)%A131530(n+1), A131530(n+1)]`
-/

namespace A236056.P11430879764160994458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088486 (n + 1)) (A131530 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236056.P11430879764160994458

/-!
# A236057: Number of (n+1)X(n+1) 0..2 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236057, there is no canonical definition to state claims against.
-/

/-! ## A236057.P669861514569803322

`A236065(∑[4*n]+1)`
-/

namespace A236057.P669861514569803322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236057.P669861514569803322

/-! ## A236057.P7648277443623364475

`record[A236065(Δ[A235355(n)])]`
-/

namespace A236057.P7648277443623364475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236057.P7648277443623364475

/-! ## A236057.P2807254664358044453

`record[A003982(n)*A236065(n+1)]`
-/

namespace A236057.P2807254664358044453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236057.P2807254664358044453

/-! ## A236057.P18306083329386576258

`record[gcd(A003987(n), A236065(n+1))]`
-/

namespace A236057.P18306083329386576258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A236065 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236057.P18306083329386576258

/-! ## A236057.P14135901118416850137

`record[A004530(2*n+1)*A236065(n+1)]`
-/

namespace A236057.P14135901118416850137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (2 * n + 1) * A236065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236057.P14135901118416850137

/-!
# A236058: Number of (n+1)X(1+1) 0..2 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236058, there is no canonical definition to state claims against.
-/

/-! ## A236058.P14440920177816293763

`A236065(∑[n]+1)`
-/

namespace A236058.P14440920177816293763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236058.P14440920177816293763

/-! ## A236058.P7429116401319320368

`record[A010054(n)*A236065(n+1)]`
-/

namespace A236058.P7429116401319320368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236058.P7429116401319320368

/-! ## A236058.P9692226142252981555

`record[A236065(n+1)/A007318(n)]`
-/

namespace A236058.P9692226142252981555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236065 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236058.P9692226142252981555

/-! ## A236058.P11128571564179550737

`record[root(A236065(n+1), A130595(n))]`
-/

namespace A236058.P11128571564179550737
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236065 (n + 1) : ℝ) ^ (1 / (A130595 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236058.P11128571564179550737

/-! ## A236058.P9881876894245957119

`record[gcd(A002262(n), A236065(n+1))]`
-/

namespace A236058.P9881876894245957119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236065 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236058.P9881876894245957119

/-!
# A236059: Number of (n+1)X(2+1) 0..2 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236059, there is no canonical definition to state claims against.
-/

/-! ## A236059.P13304005301313910973

`A236065(∑[n+1]+2)`
-/

namespace A236059.P13304005301313910973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236059.P13304005301313910973

/-! ## A236059.P3466203477319416804

`record[A010054(n)*A236065(n+2)]`
-/

namespace A236059.P3466203477319416804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236065 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236059.P3466203477319416804

/-! ## A236059.P7723667598263004751

`record[gcd(A002262(n), A236065(n+2))]`
-/

namespace A236059.P7723667598263004751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236065 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236059.P7723667598263004751

/-! ## A236059.P5549307745294556892

`char[A002262(n)]*A236065(A000096(n)+3)`
-/

namespace A236059.P5549307745294556892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A236065 (A000096 n + 3).toNat

end

end A236059.P5549307745294556892

/-! ## A236059.P13396715059263846669

`char[A060511(n)]*A236065(A000096(n)+3)`
-/

namespace A236059.P13396715059263846669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A236065 (A000096 n + 3).toNat

end

end A236059.P13396715059263846669

/-!
# A236060: Number of (n+1)X(3+1) 0..2 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236060, there is no canonical definition to state claims against.
-/

/-! ## A236060.P1440146397818342244

`A236065(∑[n+2]+4)`
-/

namespace A236060.P1440146397818342244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236060.P1440146397818342244

/-! ## A236060.P10270619874481384328

`A236065(A167614(n+1))+A185037(n)`
-/

namespace A236060.P10270619874481384328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A167614 (n + 1)).toNat + A185037 n

end

end A236060.P10270619874481384328

/-! ## A236060.P1168885463399516517

`char[A038572(n)]*A236065(A167614(n+1))`
-/

namespace A236060.P1168885463399516517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A236065 (A167614 (n + 1)).toNat

end

end A236060.P1168885463399516517

/-! ## A236060.P12619550062020264201

`A236065(A167614(n+1))%A236061(n+1)`
-/

namespace A236060.P12619550062020264201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236065 (A167614 (n + 1)).toNat) (A236061 (n + 1))

end

end A236060.P12619550062020264201

/-! ## A236060.P9151790540122015722

`A010872(3*n+1)*A236065(A167614(n+1))`
-/

namespace A236060.P9151790540122015722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (3 * n + 1) * A236065 (A167614 (n + 1)).toNat

end

end A236060.P9151790540122015722

/-!
# A236061: Number of (n+1) X (4+1) 0..2 arrays colored with the difference of the upper median and the minimum in each 2 X 2 subblock.

The programs for A236061, there is no canonical definition to state claims against.
-/

/-! ## A236061.P13585549144431090643

`A236065(A374004(n+1))`
-/

namespace A236061.P13585549144431090643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A374004 (n + 1)).toNat

end

end A236061.P13585549144431090643

/-! ## A236061.P16235375668001940245

`A236065(A052905(n)+9)`
-/

namespace A236061.P16235375668001940245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A052905 n + 9).toNat

end

end A236061.P16235375668001940245

/-! ## A236061.P3708794562809435552

`A236065(A055999(n)+10)`
-/

namespace A236061.P3708794562809435552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A055999 n + 10).toNat

end

end A236061.P3708794562809435552

/-! ## A236061.P2780148563569897338

`A236065(A167614(n+2)+1)`
-/

namespace A236061.P2780148563569897338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A167614 (n + 2) + 1).toNat

end

end A236061.P2780148563569897338

/-! ## A236061.P1562253199997428381

`A236065(A166136(n+2)-2)`
-/

namespace A236061.P1562253199997428381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A166136 (n + 2) - 2).toNat

end

end A236061.P1562253199997428381

/-!
# A236062: Number of (n+1)X(5+1) 0..2 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236062, there is no canonical definition to state claims against.
-/

/-! ## A236062.P16758821492252879629

`A236065(A374005(n+1))`
-/

namespace A236062.P16758821492252879629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A374005 (n + 1)).toNat

end

end A236062.P16758821492252879629

/-! ## A236062.P510211674971779415

`A236065(A167499(n+3))`
-/

namespace A236062.P510211674971779415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A167499 (n + 3)).toNat

end

end A236062.P510211674971779415

/-! ## A236062.P9589794188097349167

`A236065(A155212(n)+13)`
-/

namespace A236062.P9589794188097349167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A155212 n + 13).toNat

end

end A236062.P9589794188097349167

/-! ## A236062.P13493578229531719331

`A236065(A056000(n)+15)`
-/

namespace A236062.P13493578229531719331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A056000 n + 15).toNat

end

end A236062.P13493578229531719331

/-! ## A236062.P4049871035552519655

`A236065(eq[7, A066657(n)])`
-/

namespace A236062.P4049871035552519655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236062.P4049871035552519655

/-!
# A236063: Number of (n+1)X(6+1) 0..2 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236063, there is no canonical definition to state claims against.
-/

/-! ## A236063.P13281571891506713727

`A236065(A374007(n+1))`
-/

namespace A236063.P13281571891506713727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A374007 (n + 1)).toNat

end

end A236063.P13281571891506713727

/-! ## A236063.P12141709125896685319

`A236065(A166136(n+4))`
-/

namespace A236063.P12141709125896685319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A166136 (n + 4)).toNat

end

end A236063.P12141709125896685319

/-! ## A236063.P11197628486204078752

`A236065(A055998(n+3)+9)`
-/

namespace A236063.P11197628486204078752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A055998 (n + 3) + 9).toNat

end

end A236063.P11197628486204078752

/-! ## A236063.P1812336445678815903

`A236065(A046691(n+3)+10)`
-/

namespace A236063.P1812336445678815903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A046691 (n + 3) + 10).toNat

end

end A236063.P1812336445678815903

/-! ## A236063.P7606994419265151119

`A236065(eq[7, A131818(n+1)])`
-/

namespace A236063.P7606994419265151119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236063.P7606994419265151119

/-!
# A236064: Number of (n+1)X(7+1) 0..2 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236064, there is no canonical definition to state claims against.
-/

/-! ## A236064.P7127812703281032078

`A236065(A374008(n+1))`
-/

namespace A236064.P7127812703281032078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A374008 (n + 1)).toNat

end

end A236064.P7127812703281032078

/-! ## A236064.P9058989705478157490

`A236065(eq[11, A066657(n)])`
-/

namespace A236064.P9058989705478157490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236064.P9058989705478157490

/-! ## A236064.P9455736920004512278

`A236065(A166136(n+5)+1)`
-/

namespace A236064.P9455736920004512278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A166136 (n + 5) + 1).toNat

end

end A236064.P9455736920004512278

/-! ## A236064.P3323784846947401988

`A236065(A055998(n+4)+10)`
-/

namespace A236064.P3323784846947401988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (A055998 (n + 4) + 10).toNat

end

end A236064.P3323784846947401988

/-! ## A236064.P11376239248285392373

`A236065(eq[8, A131818(n+1)])`
-/

namespace A236064.P11376239248285392373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236064.P11376239248285392373

/-!
# A236068: Primes p such that f(f(p)) is prime, where f(x) = x^2 + 1.

The programs for A236068, there is no canonical definition to state claims against.
-/

/-! ## A236068.P7847199299391887718

`(A235053(n+1)-1)^(1/2)`
-/

namespace A236068.P7847199299391887718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235053 (n + 1) - 1 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A236068.P7847199299391887718

/-! ## A236068.P13542817616454541468

`floor(sqrt(A235053(n+1)))`
-/

namespace A236068.P13542817616454541468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A235053 (n + 1))

end

end A236068.P13542817616454541468

/-! ## A236068.P12045481220065987089

`A006530(round(sqrt(A235053(n+1))))`
-/

namespace A236068.P12045481220065987089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A235053 (n + 1) : ℝ))).toNat

end

end A236068.P12045481220065987089

/-! ## A236068.P97176121788005292

`A020639(round(sqrt(A235053(n+1))))`
-/

namespace A236068.P97176121788005292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A235053 (n + 1) : ℝ))).toNat

end

end A236068.P97176121788005292

/-! ## A236068.P6566465208943774979

`A006530(sqrt(A235053(n+1)-1))`
-/

namespace A236068.P6566465208943774979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A235053 (n + 1) - 1 : ℝ))).toNat

end

end A236068.P6566465208943774979

/-! ## A236068.P451358580817363401

`A020639(sqrt(A235053(n+1)-1))`
-/

namespace A236068.P451358580817363401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A235053 (n + 1) - 1 : ℝ))).toNat

end

end A236068.P451358580817363401

/-!
# A236069: Primes p such that f(f(p)) is prime where f(x) = x^4 + 1.

The programs for A236069, there is no canonical definition to state claims against.
-/

/-! ## A236069.P8292411991652688358

`(A235982(n+1)-1)^(1/4)`
-/

namespace A236069.P8292411991652688358
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235982 (n + 1) - 1 : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A236069.P8292411991652688358

/-! ## A236069.P6530602376909298088

`floor(root(A235982(n+1), 4))`
-/

namespace A236069.P6530602376909298088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A235982 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A236069.P6530602376909298088

/-! ## A236069.P10208672042978597834

`A006530(round(root(A235982(n+1), 4)))`
-/

namespace A236069.P10208672042978597834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A235982 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A236069.P10208672042978597834

/-! ## A236069.P1561120748869421922

`A014963(round(root(A235982(n+1), 4)))`
-/

namespace A236069.P1561120748869421922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A235982 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A236069.P1561120748869421922

/-! ## A236069.P1043433243967460646

`A020639(round(root(A235982(n+1), 4)))`
-/

namespace A236069.P1043433243967460646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A235982 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A236069.P1043433243967460646

/-!
# A236071: Primes p such that p^4 - p - 1 is prime.

The programs for A236071, there is no canonical definition to state claims against.
-/

/-! ## A236071.P9066150649021894796

`p?[A126424(n+1)]`
-/

namespace A236071.P9066150649021894796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236071.P9066150649021894796

/-! ## A236071.P16572367133934636359

`p?[ceil(root(A126422(n+1), 4))]`
-/

namespace A236071.P16572367133934636359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236071.P16572367133934636359

/-! ## A236071.P4571226037602119786

`∩[A045346(n+1), A126424(n+1)]`
-/

namespace A236071.P4571226037602119786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P4571226037602119786

/-! ## A236071.P4917511402741008829

`∩[A000040(n+1), A126424(n+1)]`
-/

namespace A236071.P4917511402741008829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P4917511402741008829

/-! ## A236071.P6036376945429798309

`∩[A008578(n+1), A126424(n+1)]`
-/

namespace A236071.P6036376945429798309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P6036376945429798309

/-! ## A236071.P1278153996635473727

`∩[A045344(n+1), A126424(n+1)]`
-/

namespace A236071.P1278153996635473727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P1278153996635473727

/-! ## A236071.P7303078549467728866

`∩[A126424(n+1), A158611(n+1)]`
-/

namespace A236071.P7303078549467728866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P7303078549467728866

/-! ## A236071.P1480536001264165538

`∩[A126424(n+1), A182986(n+1)]`
-/

namespace A236071.P1480536001264165538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P1480536001264165538

/-! ## A236071.P7213914625757986271

`∩[A126424(n+1), A326715(n+1)]`
-/

namespace A236071.P7213914625757986271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P7213914625757986271

/-! ## A236071.P3590876934266415777

`record[A006530(A126424(n+2))]`
-/

namespace A236071.P3590876934266415777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A126424 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236071.P3590876934266415777

/-! ## A236071.P17854255418878015129

`filter[A126424(n+1), A010051(#)]`
-/

namespace A236071.P17854255418878015129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A236071.P17854255418878015129

/-! ## A236071.P6230499627011361189

`record[A006530(ceil(root(A126422(n+1), 4)))]`
-/

namespace A236071.P6230499627011361189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈(A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236071.P6230499627011361189

/-! ## A236071.P6802030396154783831

`∩[A372059(n+1), A126424(n+1)]`
-/

namespace A236071.P6802030396154783831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P6802030396154783831

/-! ## A236071.P5733724060986439421

`filter[A126424(n+1), A080339(#)]`
-/

namespace A236071.P5733724060986439421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A236071.P5733724060986439421

/-! ## A236071.P6680633578749016661

`record[A014963(ceil(root(A126422(n+1), 4)))]`
-/

namespace A236071.P6680633578749016661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌈(A126422 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236071.P6680633578749016661

/-! ## A236071.P6823493675393688886

`∩[A126424(n+1), A212127(n+1)]`
-/

namespace A236071.P6823493675393688886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P6823493675393688886

/-! ## A236071.P16725119140019515006

`∩[A126424(n+1), A240960(n+1)]`
-/

namespace A236071.P16725119140019515006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236071.P16725119140019515006

/-!
# A236072: Numbers n such that n^4 + n + 1 and n^4 - n - 1 are prime.

The programs for A236072, there is no canonical definition to state claims against.
-/

/-! ## A236072.P14761103626229335337

`∩[A049408(n+1), A126424(n+1)]`
-/

namespace A236072.P14761103626229335337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236072.P14761103626229335337

/-!
# A236073: Primes p such that p^4 + p + 1 and p^4 - p - 1 are also prime.

The programs for A236073, there is no canonical definition to state claims against.
-/

/-! ## A236073.P12944023113465906323

`p?[A236072(n+1)]`
-/

namespace A236073.P12944023113465906323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236073.P12944023113465906323

/-! ## A236073.P8265122947459697195

`∩[A236044(n+1), A236072(n+1)]`
-/

namespace A236073.P8265122947459697195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236073.P8265122947459697195

/-! ## A236073.P4314303510961462868

`∩[A049408(n+1), A236071(n+1)]`
-/

namespace A236073.P4314303510961462868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236073.P4314303510961462868

/-! ## A236073.P17855263660894259819

`∩[A236044(n+1), A236071(n+1)]`
-/

namespace A236073.P17855263660894259819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236073.P17855263660894259819

/-! ## A236073.P18025784027193440039

`∩[A236071(n+1), A236072(n+1)]`
-/

namespace A236073.P18025784027193440039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236073.P18025784027193440039

/-!
# A236075: Odd primes p with prime(2*p) - 2*prime(p) and prime(p) - 2*prime((p-1)/2) both prime.

The programs for A236075, there is no canonical definition to state claims against.
-/

/-! ## A236075.P2025082151910610963

`A352442(A230310(n+1))`
-/

namespace A236075.P2025082151910610963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (A230310 (n + 1)).toNat

end

end A236075.P2025082151910610963

/-! ## A236075.P14397701960138845995

`A192505(n+3)%A000027(A084016(n+1))`
-/

namespace A236075.P14397701960138845995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192505 (n + 3)) (A000027 (A084016 (n + 1)).toNat)

end

end A236075.P14397701960138845995

/-!
# A236076: A skewed version of triangular array A122075.

The programs for A236076, there is no canonical definition to state claims against.
-/

/-! ## A236076.P3639131836375269058

`A209599(A061579(n))`
-/

namespace A236076.P3639131836375269058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A061579 n).toNat

end

end A236076.P3639131836375269058

/-! ## A236076.P15371524499348204608

`A210869(A185180(n+1))`
-/

namespace A236076.P15371524499348204608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210869 (A185180 (n + 1)).toNat

end

end A236076.P15371524499348204608

/-! ## A236076.P18184436415045679531

`A209599(A114327(n)+n)`
-/

namespace A236076.P18184436415045679531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A114327 n + (n : ℤ)).toNat

end

end A236076.P18184436415045679531

/-! ## A236076.P3738005029807573768

`A209599(A038722(n+1)-1)`
-/

namespace A236076.P3738005029807573768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A038722 (n + 1) - 1).toNat

end

end A236076.P3738005029807573768

/-! ## A236076.P7332293937708480315

`A209599(A093995(n+1)-(n+1))`
-/

namespace A236076.P7332293937708480315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A236076.P7332293937708480315

/-! ## A236076.P6833795527128047128

`A209599(A002024(n+1)²-(n+1))`
-/

namespace A236076.P6833795527128047128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A236076.P6833795527128047128

/-! ## A236076.P2326354675630186861

`A209599(A002378(n)%A014132(n+1))`
-/

namespace A236076.P2326354675630186861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A236076.P2326354675630186861

/-! ## A236076.P7347157110301078549

`A209599(A127739(n+1)-A002260(n+1))`
-/

namespace A236076.P7347157110301078549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A236076.P7347157110301078549

/-! ## A236076.P1563413381639081757

`A122950(comp[∑[n]])`
-/

namespace A236076.P1563413381639081757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122950 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A236076.P1563413381639081757

/-!
# A236077: Cubes which remain (integer) cubes when divided by their digital sum.

The programs for A236077, there is no canonical definition to state claims against.
-/

/-! ## A236077.P8909854496008994858

`∩[A053058(n+1), A118720(n+1)]`
-/

namespace A236077.P8909854496008994858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236077.P8909854496008994858

/-! ## A236077.P12353391742871089414

`∩[A118720(n+1), A237525(n+1)^3]`
-/

namespace A236077.P12353391742871089414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 1) ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236077.P12353391742871089414

/-! ## A236077.P10558995645072063485

`∩[A118720(n+1), A000578(A237525(n+1))]`
-/

namespace A236077.P10558995645072063485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A237525 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236077.P10558995645072063485

/-! ## A236077.P17277873935400234689

`∩[A118720(n+1), A227227(n+1)]`
-/

namespace A236077.P17277873935400234689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236077.P17277873935400234689

/-! ## A236077.P13399337668837971056

`∩[A053058(n+1), A098121(n+1)]`
-/

namespace A236077.P13399337668837971056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236077.P13399337668837971056

/-! ## A236077.P12122816237681281590

`∩[A053058(n+1), A236749(n+1)]`
-/

namespace A236077.P12122816237681281590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236077.P12122816237681281590

/-! ## A236077.P684798180980858434

`∩[A118720(n+1), A236749(n+1)]`
-/

namespace A236077.P684798180980858434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236077.P684798180980858434

/-!
# A236078: Number of (n+1)X(2+1) 0..2 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A236078, there is no canonical definition to state claims against.
-/

/-! ## A236078.P2963711402741716021

`A236082(∑[n+1]+2)`
-/

namespace A236078.P2963711402741716021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236082 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236078.P2963711402741716021

/-! ## A236078.P6404707242169862151

`A236082(A000096(n+1))+A000035(2*n)`
-/

namespace A236078.P6404707242169862151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236082 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A236078.P6404707242169862151

/-! ## A236078.P10273147227239561154

`record[A236082(n+3)/A132056(n+1)]`
-/

namespace A236078.P10273147227239561154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236082 (n + 3) : ℚ) / (A132056 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236078.P10273147227239561154

/-!
# A236079: Number of (n+1)X(3+1) 0..2 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A236079, there is no canonical definition to state claims against.
-/

/-! ## A236079.P7206754834742569452

`A236082(∑[n+2]+4)`
-/

namespace A236079.P7206754834742569452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236082 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236079.P7206754834742569452

/-! ## A236079.P6591742310262965667

`A236082(A167614(n+1))+A011856(n)`
-/

namespace A236079.P6591742310262965667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236082 (A167614 (n + 1)).toNat + A011856 n

end

end A236079.P6591742310262965667

/-! ## A236079.P15310013637422260218

`A236082(A167614(n+1))+A051058(n)`
-/

namespace A236079.P15310013637422260218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236082 (A167614 (n + 1)).toNat + A051058 n

end

end A236079.P15310013637422260218

/-! ## A236079.P8600331630773813333

`A326591(n)+A236082(A167614(n+1))`
-/

namespace A236079.P8600331630773813333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326591 n + A236082 (A167614 (n + 1)).toNat

end

end A236079.P8600331630773813333

/-! ## A236079.P701430886690978555

`or(A087734(n), A236082(A167614(n+1)))`
-/

namespace A236079.P701430886690978555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087734 n) (A236082 (A167614 (n + 1)).toNat)

end

end A236079.P701430886690978555

/-!
# A236080: Number of (n+1)X(4+1) 0..2 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A236080, there is no canonical definition to state claims against.
-/

/-! ## A236080.P9760789895012725508

`A236082(A167614(n+2)+1)`
-/

namespace A236080.P9760789895012725508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236082 (A167614 (n + 2) + 1).toNat

end

end A236080.P9760789895012725508

/-! ## A236080.P10348692485374218523

`A236082(eq[5, A131818(n+1)])`
-/

namespace A236080.P10348692485374218523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236080.P10348692485374218523

/-!
# A236081: Number of (n+1) X (5+1) 0..2 arrays with the sum of each 2 X 2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A236081, there is no canonical definition to state claims against.
-/

/-! ## A236081.P1825411304734583378

`A236082(A374005(n+1))`
-/

namespace A236081.P1825411304734583378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236082 (A374005 (n + 1)).toNat

end

end A236081.P1825411304734583378

/-! ## A236081.P17934267483865854947

`A236082(eq[6, A131818(n+1)])`
-/

namespace A236081.P17934267483865854947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236081.P17934267483865854947

/-!
# A236083: Number of (n+1)X(1+1) 0..3 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236083, there is no canonical definition to state claims against.
-/

/-! ## A236083.P13861508585074368840

`A236087(∑[n]+1)`
-/

namespace A236083.P13861508585074368840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236087 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236083.P13861508585074368840

/-! ## A236083.P18028910900053837688

`lcm(2, A236087(A000124(n)))`
-/

namespace A236083.P18028910900053837688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236087 (A000124 n).toNat)

end

end A236083.P18028910900053837688

/-! ## A236083.P16553938063218431749

`record[A236087(A286235(n+1))]`
-/

namespace A236083.P16553938063218431749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236087 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236083.P16553938063218431749

/-! ## A236083.P14259587582300923277

`record[A010054(n)*A236087(n+1)]`
-/

namespace A236083.P14259587582300923277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236083.P14259587582300923277

/-! ## A236083.P11795078454344272297

`record[A236087(n+1)/A157148(n)]`
-/

namespace A236083.P11795078454344272297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236087 (n + 1) : ℚ) / (A157148 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236083.P11795078454344272297

/-!
# A236084: Number of (n+1)X(2+1) 0..3 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236084, there is no canonical definition to state claims against.
-/

/-! ## A236084.P333540423371548464

`A236087(∑[n+1]+2)`
-/

namespace A236084.P333540423371548464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236087 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236084.P333540423371548464

/-! ## A236084.P2990087290569392894

`record[A236087(A286235(n+1)+1)]`
-/

namespace A236084.P2990087290569392894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236087 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236084.P2990087290569392894

/-! ## A236084.P1907507419384059253

`record[gcd(A002262(n), A236087(n+2))]`
-/

namespace A236084.P1907507419384059253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236087 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236084.P1907507419384059253

/-!
# A236085: Number of (n+1)X(3+1) 0..3 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236085, there is no canonical definition to state claims against.
-/

/-! ## A236085.P12455581125588938995

`A236087(∑[n+2]+4)`
-/

namespace A236085.P12455581125588938995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236087 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236085.P12455581125588938995

/-! ## A236085.P1002456087055406180

`record[A023531(n)*A236087(n+4)]`
-/

namespace A236085.P1002456087055406180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A236087 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236085.P1002456087055406180

/-! ## A236085.P11869559069055779349

`lcm((-1)^n, A236087(A167614(n+1)))`
-/

namespace A236085.P11869559069055779349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236087 (A167614 (n + 1)).toNat)

end

end A236085.P11869559069055779349

/-! ## A236085.P9609296114905308981

`A326455(n)+A236087(A167614(n+1))`
-/

namespace A236085.P9609296114905308981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A236087 (A167614 (n + 1)).toNat

end

end A236085.P9609296114905308981

/-! ## A236085.P10819345239879448096

`A326456(n)+A236087(A167614(n+1))`
-/

namespace A236085.P10819345239879448096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 n + A236087 (A167614 (n + 1)).toNat

end

end A236085.P10819345239879448096

/-!
# A236086: Number of (n+1)X(4+1) 0..3 arrays colored with the difference of the upper median and the minimum in each 2X2 subblock.

The programs for A236086, there is no canonical definition to state claims against.
-/

/-! ## A236086.P9497103206756198706

`A236087(∑[n+3]+7)`
-/

namespace A236086.P9497103206756198706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236087 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236086.P9497103206756198706

/-!
# A236088: Number of (n+1)X(n+1) 0..2 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236088, there is no canonical definition to state claims against.
-/

/-! ## A236088.P16847360630744673562

`A236096(∑[4*n]+1)`
-/

namespace A236088.P16847360630744673562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236088.P16847360630744673562

/-! ## A236088.P10258231974536133296

`A326626(n)+A236096(A001844(n))`
-/

namespace A236088.P10258231974536133296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A236096 (A001844 n).toNat

end

end A236088.P10258231974536133296

/-! ## A236088.P15843234026239309319

`lcm(A000034(n), A236096(A001844(n)))`
-/

namespace A236088.P15843234026239309319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A236096 (A001844 n).toNat)

end

end A236088.P15843234026239309319

/-! ## A236088.P15756552683897301542

`or(A000007(n), A236096(A001844(n)))`
-/

namespace A236088.P15756552683897301542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A236096 (A001844 n).toNat)

end

end A236088.P15756552683897301542

/-! ## A236088.P5409022584081796050

`A236096(A001844(n))%A198714(n+1)`
-/

namespace A236088.P5409022584081796050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236096 (A001844 n).toNat) (A198714 (n + 1))

end

end A236088.P5409022584081796050

/-!
# A236089: Number of (n+1)X(1+1) 0..2 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236089, there is no canonical definition to state claims against.
-/

/-! ## A236089.P7179366079409651735

`A236096(∑[n]+1)`
-/

namespace A236089.P7179366079409651735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236089.P7179366079409651735

/-! ## A236089.P1427618015794026743

`record[A236096(A056534(n+1))]`
-/

namespace A236089.P1427618015794026743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236089.P1427618015794026743

/-! ## A236089.P5250590799763339458

`record[A010054(n)*A236096(n+1)]`
-/

namespace A236089.P5250590799763339458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236089.P5250590799763339458

/-! ## A236089.P4389502324833562650

`record[root(A236096(n+1), A026758(n))]`
-/

namespace A236089.P4389502324833562650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236096 (n + 1) : ℝ) ^ (1 / (A026758 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236089.P4389502324833562650

/-! ## A236089.P12151194555401672744

`record[root(A236096(n+1), A208341(n))]`
-/

namespace A236089.P12151194555401672744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236096 (n + 1) : ℝ) ^ (1 / (A208341 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236089.P12151194555401672744

/-!
# A236090: Number of (n+1)X(2+1) 0..2 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236090, there is no canonical definition to state claims against.
-/

/-! ## A236090.P13095302632883801183

`A236096(∑[n+1]+2)`
-/

namespace A236090.P13095302632883801183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236090.P13095302632883801183

/-! ## A236090.P7967652626220616285

`lcm(2, A236096(A000096(n)+3))`
-/

namespace A236090.P7967652626220616285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236096 (A000096 n + 3).toNat)

end

end A236090.P7967652626220616285

/-! ## A236090.P3551749310806074112

`record[A010054(n)*A236096(n+2)]`
-/

namespace A236090.P3551749310806074112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236096 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236090.P3551749310806074112

/-! ## A236090.P14853851571081311448

`record[root(A236096(n+2), A208341(n))]`
-/

namespace A236090.P14853851571081311448
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236096 (n + 2) : ℝ) ^ (1 / (A208341 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236090.P14853851571081311448

/-! ## A236090.P9137803865244795255

`record[gcd(A002262(n), A236096(n+2))]`
-/

namespace A236090.P9137803865244795255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236096 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236090.P9137803865244795255

/-!
# A236091: Number of (n+1)X(3+1) 0..2 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236091, there is no canonical definition to state claims against.
-/

/-! ## A236091.P6606102581138592296

`A236096(∑[n+2]+4)`
-/

namespace A236091.P6606102581138592296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236091.P6606102581138592296

/-! ## A236091.P17123149654266234037

`lcm(2, A236096(A167614(n+1)))`
-/

namespace A236091.P17123149654266234037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236096 (A167614 (n + 1)).toNat)

end

end A236091.P17123149654266234037

/-! ## A236091.P7639259432079722095

`A236096(A167614(n+1))+A036877(n+1)`
-/

namespace A236091.P7639259432079722095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A167614 (n + 1)).toNat + A036877 (n + 1)

end

end A236091.P7639259432079722095

/-! ## A236091.P14324225663927763704

`A184348(n+1)*A236096(A167614(n+1))`
-/

namespace A236091.P14324225663927763704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (n + 1) * A236096 (A167614 (n + 1)).toNat

end

end A236091.P14324225663927763704

/-! ## A236091.P15915700859103304147

`A236096(A167614(n+1))%A184465(n+1)`
-/

namespace A236091.P15915700859103304147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236096 (A167614 (n + 1)).toNat) (A184465 (n + 1))

end

end A236091.P15915700859103304147

/-!
# A236092: Number of (n+1)X(4+1) 0..2 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236092, there is no canonical definition to state claims against.
-/

/-! ## A236092.P4403082927322443937

`A236096(A374004(n+1))`
-/

namespace A236092.P4403082927322443937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A374004 (n + 1)).toNat

end

end A236092.P4403082927322443937

/-! ## A236092.P15760112513722959480

`A236096(A141214(n)+7)`
-/

namespace A236092.P15760112513722959480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A141214 n + 7).toNat

end

end A236092.P15760112513722959480

/-! ## A236092.P5150722144605211686

`A236096(A052905(n)+9)`
-/

namespace A236092.P5150722144605211686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A052905 n + 9).toNat

end

end A236092.P5150722144605211686

/-! ## A236092.P1682745957219121480

`A236096(A055999(n)+10)`
-/

namespace A236092.P1682745957219121480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A055999 n + 10).toNat

end

end A236092.P1682745957219121480

/-! ## A236092.P4386547299393683216

`A236096(A167614(n+2)+1)`
-/

namespace A236092.P4386547299393683216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A167614 (n + 2) + 1).toNat

end

end A236092.P4386547299393683216

/-!
# A236093: Number of (n+1)X(5+1) 0..2 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236093, there is no canonical definition to state claims against.
-/

/-! ## A236093.P6923296900652477853

`A236096(A374005(n+1))`
-/

namespace A236093.P6923296900652477853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A374005 (n + 1)).toNat

end

end A236093.P6923296900652477853

/-! ## A236093.P11842198345267670850

`A236096(eq[6, A131818(n+1)])`
-/

namespace A236093.P11842198345267670850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236093.P11842198345267670850

/-! ## A236093.P15660313665960300375

`A236096(Δ[A264443(n)])`
-/

namespace A236093.P15660313665960300375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (f1 (n + 1) - f1 n).toNat

end

end A236093.P15660313665960300375

/-! ## A236093.P7525340066508985536

`A236096(eq[2, A092921(n)])`
-/

namespace A236093.P7525340066508985536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236093.P7525340066508985536

/-! ## A236093.P8016701570235933508

`A236096(eq[8, A140996(n)])`
-/

namespace A236093.P8016701570235933508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236093.P8016701570235933508

/-!
# A236094: Number of (n+1)X(6+1) 0..2 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236094, there is no canonical definition to state claims against.
-/

/-! ## A236094.P15516416586275317080

`A236096(A374007(n+1))`
-/

namespace A236094.P15516416586275317080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A374007 (n + 1)).toNat

end

end A236094.P15516416586275317080

/-! ## A236094.P6995327232851442283

`A236096(A056115(n)+21)`
-/

namespace A236094.P6995327232851442283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A056115 n + 21).toNat

end

end A236094.P6995327232851442283

/-! ## A236094.P3207264838582105993

`A236096(eq[7, A131818(n+1)])`
-/

namespace A236094.P3207264838582105993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236094.P3207264838582105993

/-! ## A236094.P10515951984685926653

`A236096(eq[3, A219347(n)])`
-/

namespace A236094.P10515951984685926653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236094.P10515951984685926653

/-! ## A236094.P16466187033960536339

`A236096(A034856(n+5)-3)`
-/

namespace A236094.P16466187033960536339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A034856 (n + 5) - 3).toNat

end

end A236094.P16466187033960536339

/-!
# A236095: Number of (n+1)X(7+1) 0..2 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236095, there is no canonical definition to state claims against.
-/

/-! ## A236095.P15731781628975682223

`A236096(A374008(n+1))`
-/

namespace A236095.P15731781628975682223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (A374008 (n + 1)).toNat

end

end A236095.P15731781628975682223

/-! ## A236095.P7227058849511125606

`A236096(eq[8, A131818(n+1)])`
-/

namespace A236095.P7227058849511125606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236095.P7227058849511125606

/-! ## A236095.P5867295255651751566

`A236096(eq[4, A219347(n)])`
-/

namespace A236095.P5867295255651751566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236095.P5867295255651751566

/-! ## A236095.P9500812400791772593

`A236096(eq[6, A193592(n)])`
-/

namespace A236095.P9500812400791772593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236095.P9500812400791772593

/-! ## A236095.P6732494262262053287

`A236096(eq[7, A200370(n+1)])`
-/

namespace A236095.P6732494262262053287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236095.P6732494262262053287

