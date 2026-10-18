import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A251500: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock summing to 3 4 5 6 7 8 or 9.

The programs for A251500, there is no canonical definition to state claims against.
-/

/-! ## A251500.P12229936137810055740

`A251507(∑[n]+1)`
-/

namespace A251500.P12229936137810055740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251500.P12229936137810055740

/-! ## A251500.P10277988520903698049

`record[A176270(n)*A251507(n+1)]`
-/

namespace A251500.P10277988520903698049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A251507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251500.P10277988520903698049

/-! ## A251500.P10546586755390903939

`record[root(A251507(n+1), A172431(n+1))]`
-/

namespace A251500.P10546586755390903939
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251507 (n + 1) : ℝ) ^ (1 / (A172431 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251500.P10546586755390903939

/-! ## A251500.P1174922075401842982

`record[root(A251507(n+1), A208510(n+1))]`
-/

namespace A251500.P1174922075401842982
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251507 (n + 1) : ℝ) ^ (1 / (A208510 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251500.P1174922075401842982

/-! ## A251500.P8242642119665637485

`record[gcd(A025581(n), A251507(n+1))]`
-/

namespace A251500.P8242642119665637485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A251507 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251500.P8242642119665637485

/-!
# A251501: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock summing to 3 4 5 6 7 8 or 9.

The programs for A251501, there is no canonical definition to state claims against.
-/

/-! ## A251501.P956251341493366391

`A251507(∑[n+1]+2)`
-/

namespace A251501.P956251341493366391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251501.P956251341493366391

/-! ## A251501.P12537701591961807624

`record[A251507(Δ[A003453(n+5)])]`
-/

namespace A251501.P12537701591961807624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251501.P12537701591961807624

/-!
# A251502: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock summing to 3 4 5 6 7 8 or 9.

The programs for A251502, there is no canonical definition to state claims against.
-/

/-! ## A251502.P11851076383645218689

`A251507(∑[n+2]+4)`
-/

namespace A251502.P11851076383645218689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251502.P11851076383645218689

/-! ## A251502.P2764493806504972857

`lcm(2, A251507(A167614(n+1)))`
-/

namespace A251502.P2764493806504972857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251507 (A167614 (n + 1)).toNat)

end

end A251502.P2764493806504972857

/-! ## A251502.P3801670734272292831

`A251507(A167614(n+1))+A122180(n+1)`
-/

namespace A251502.P3801670734272292831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A167614 (n + 1)).toNat + A122180 (n + 1)

end

end A251502.P3801670734272292831

/-! ## A251502.P12202754936186288992

`A251507(A167614(n+1))*A337337(n+1)`
-/

namespace A251502.P12202754936186288992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A167614 (n + 1)).toNat * A337337 (n + 1)

end

end A251502.P12202754936186288992

/-!
# A251503: 

The programs for A251503, there is no canonical definition to state claims against.
-/

/-! ## A251503.P8504159912201568713

`A251507(A141214(n)+7)`
-/

namespace A251503.P8504159912201568713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A141214 n + 7).toNat

end

end A251503.P8504159912201568713

/-! ## A251503.P9712304680507123824

`A251507(A167499(n+2)-1)`
-/

namespace A251503.P9712304680507123824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A167499 (n + 2) - 1).toNat

end

end A251503.P9712304680507123824

/-! ## A251503.P5918456175439159340

`A251507(A167614(n+1)+n+4)`
-/

namespace A251503.P5918456175439159340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A167614 (n + 1) + (n + 4 : ℤ)).toNat

end

end A251503.P5918456175439159340

/-! ## A251503.P6173480538886277363

`A251507(∑[n+4]+3)`
-/

namespace A251503.P6173480538886277363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A251503.P6173480538886277363

/-!
# A251504: 

The programs for A251504, there is no canonical definition to state claims against.
-/

/-! ## A251504.P12200544285176768860

`A251507(A167499(n+3))`
-/

namespace A251504.P12200544285176768860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A167499 (n + 3)).toNat

end

end A251504.P12200544285176768860

/-! ## A251504.P4426149318851512328

`A251507(A141214(n+2)-1)`
-/

namespace A251504.P4426149318851512328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A141214 (n + 2) - 1).toNat

end

end A251504.P4426149318851512328

/-!
# A251505: 

The programs for A251505, there is no canonical definition to state claims against.
-/

/-! ## A251505.P17731130408795092110

`A251507(A056115(n)+21)`
-/

namespace A251505.P17731130408795092110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A056115 n + 21).toNat

end

end A251505.P17731130408795092110

/-! ## A251505.P53342764028022495

`A251507(A167614(n+4)+3)`
-/

namespace A251505.P53342764028022495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A167614 (n + 4) + 3).toNat

end

end A251505.P53342764028022495

/-! ## A251505.P580455105129335624

`A251507(A052905(n+3))`
-/

namespace A251505.P580455105129335624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251507 (A052905 (n + 3)).toNat

end

end A251505.P580455105129335624

/-!
# A251508: Number of (n+1)X(1+1) 0..4 arrays with every 2X2 subblock summing to a prime.

The programs for A251508, there is no canonical definition to state claims against.
-/

/-! ## A251508.P5401564435228502693

`A251515(∑[n]+1)`
-/

namespace A251508.P5401564435228502693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251508.P5401564435228502693

/-! ## A251508.P10394883470048524919

`record[A010054(n)*A251515(n+1)]`
-/

namespace A251508.P10394883470048524919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251508.P10394883470048524919

/-! ## A251508.P8223237233433062342

`record[root(A251515(n+1), A131063(n))]`
-/

namespace A251508.P8223237233433062342
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251515 (n + 1) : ℝ) ^ (1 / (A131063 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251508.P8223237233433062342

/-! ## A251508.P10132462867770087030

`record[gcd(A049600(n), A251515(n+1))]`
-/

namespace A251508.P10132462867770087030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 n) (A251515 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251508.P10132462867770087030

/-!
# A251509: Number of (n+1)X(2+1) 0..4 arrays with every 2X2 subblock summing to a prime.

The programs for A251509, there is no canonical definition to state claims against.
-/

/-! ## A251509.P4094930223644541592

`A251515(∑[n+1]+2)`
-/

namespace A251509.P4094930223644541592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251509.P4094930223644541592

/-! ## A251509.P3111568485063151866

`record[gcd(A049600(n), A251515(n+2))]`
-/

namespace A251509.P3111568485063151866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 n) (A251515 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251509.P3111568485063151866

/-! ## A251509.P15464326297240566879

`record[A251515(A198455(n+1))]`
-/

namespace A251509.P15464326297240566879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251509.P15464326297240566879

/-! ## A251509.P6622901195151722604

`A251515(A000096(n+1))+A190224(2*(n+2))`
-/

namespace A251509.P6622901195151722604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A000096 (n + 1)).toNat + A190224 (2 * (n + 2))

end

end A251509.P6622901195151722604

/-!
# A251510: Number of (n+1)X(3+1) 0..4 arrays with every 2X2 subblock summing to a prime.

The programs for A251510, there is no canonical definition to state claims against.
-/

/-! ## A251510.P3951156610860408177

`A251515(∑[n+2]+4)`
-/

namespace A251510.P3951156610860408177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251510.P3951156610860408177

/-! ## A251510.P6193241281484524376

`lcm(2, A251515(A167614(n+1)))`
-/

namespace A251510.P6193241281484524376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251515 (A167614 (n + 1)).toNat)

end

end A251510.P6193241281484524376

/-! ## A251510.P3815562931778443765

`A308974(n)+A251515(A167614(n+1))`
-/

namespace A251510.P3815562931778443765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308974 n + A251515 (A167614 (n + 1)).toNat

end

end A251510.P3815562931778443765

/-! ## A251510.P2161928588356394880

`or(A000038(n), A251515(A167614(n+1)))`
-/

namespace A251510.P2161928588356394880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251515 (A167614 (n + 1)).toNat)

end

end A251510.P2161928588356394880

/-! ## A251510.P13026760364527545250

`A251515(A167614(n+1))*A336468(n+1)`
-/

namespace A251510.P13026760364527545250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A167614 (n + 1)).toNat * A336468 (n + 1)

end

end A251510.P13026760364527545250

/-!
# A251511: Number of (n+1)X(4+1) 0..4 arrays with every 2X2 subblock summing to a prime.

The programs for A251511, there is no canonical definition to state claims against.
-/

/-! ## A251511.P10749370412004509218

`A251515(A141214(n)+7)`
-/

namespace A251511.P10749370412004509218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A141214 n + 7).toNat

end

end A251511.P10749370412004509218

/-! ## A251511.P14658115331286616033

`A251515(A167614(n+2)+1)`
-/

namespace A251511.P14658115331286616033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A167614 (n + 2) + 1).toNat

end

end A251511.P14658115331286616033

/-! ## A251511.P15522849338072847520

`A251515(A167499(n+2)-1)`
-/

namespace A251511.P15522849338072847520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A167499 (n + 2) - 1).toNat

end

end A251511.P15522849338072847520

/-!
# A251512: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock summing to a prime.

The programs for A251512, there is no canonical definition to state claims against.
-/

/-! ## A251512.P1701592115722533277

`A251515(A374005(n+1))`
-/

namespace A251512.P1701592115722533277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A374005 (n + 1)).toNat

end

end A251512.P1701592115722533277

/-! ## A251512.P4759367148985023182

`A251515(A056000(n)+15)`
-/

namespace A251512.P4759367148985023182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A056000 n + 15).toNat

end

end A251512.P4759367148985023182

/-! ## A251512.P6368017554395745759

`A251515(A167614(n+3)+2)`
-/

namespace A251512.P6368017554395745759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A167614 (n + 3) + 2).toNat

end

end A251512.P6368017554395745759

/-! ## A251512.P5067810908948742126

`A251515(A141214(n+2)-1)`
-/

namespace A251512.P5067810908948742126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A141214 (n + 2) - 1).toNat

end

end A251512.P5067810908948742126

/-!
# A251513: 

The programs for A251513, there is no canonical definition to state claims against.
-/

/-! ## A251513.P5200210142068098636

`A251515(A052905(n+3))`
-/

namespace A251513.P5200210142068098636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A052905 (n + 3)).toNat

end

end A251513.P5200210142068098636

/-! ## A251513.P12491993202643224441

`A251515(A000124(n+6)-6)`
-/

namespace A251513.P12491993202643224441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251515 (A000124 (n + 6) - 6).toNat

end

end A251513.P12491993202643224441

/-!
# A251516: 

The programs for A251516, there is no canonical definition to state claims against.
-/

/-! ## A251516.P11403724794930422662

`A251524(∑[4*n]+1)`
-/

namespace A251516.P11403724794930422662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251516.P11403724794930422662

/-!
# A251517: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock summing to 2 3 4 5 6 7 8 9 or 10.

The programs for A251517, there is no canonical definition to state claims against.
-/

/-! ## A251517.P12954947263638078746

`A251524(∑[n]+1)`
-/

namespace A251517.P12954947263638078746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251517.P12954947263638078746

/-! ## A251517.P13129691269625139106

`record[A010054(n)*A251524(n+1)]`
-/

namespace A251517.P13129691269625139106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251517.P13129691269625139106

/-! ## A251517.P3628323898449424882

`record[root(A251524(n+1), A209518(n))]`
-/

namespace A251517.P3628323898449424882
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251524 (n + 1) : ℝ) ^ (1 / (A209518 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251517.P3628323898449424882

/-! ## A251517.P1322252113306883335

`record[gcd(A002262(n), A251524(n+1))]`
-/

namespace A251517.P1322252113306883335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251524 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251517.P1322252113306883335

/-! ## A251517.P16915140750609063392

`record[A023531(n)*A251524(n+1)]`
-/

namespace A251517.P16915140750609063392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A251524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251517.P16915140750609063392

/-!
# A251518: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock summing to 2 3 4 5 6 7 8 9 or 10.

The programs for A251518, there is no canonical definition to state claims against.
-/

/-! ## A251518.P6990500677422493860

`A251524(∑[n+1]+2)`
-/

namespace A251518.P6990500677422493860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251518.P6990500677422493860

/-! ## A251518.P17926819715383520205

`record[A010054(n)*A251524(n+2)]`
-/

namespace A251518.P17926819715383520205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251524 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251518.P17926819715383520205

/-! ## A251518.P1640537767911258823

`record[root(A251524(n+2), A209518(n))]`
-/

namespace A251518.P1640537767911258823
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251524 (n + 2) : ℝ) ^ (1 / (A209518 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251518.P1640537767911258823

/-! ## A251518.P4910182005903561169

`record[gcd(A002262(n), A251524(n+2))]`
-/

namespace A251518.P4910182005903561169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251524 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251518.P4910182005903561169

/-! ## A251518.P4661871189118477705

`record[A251524(Δ[A003453(n+5)])]`
-/

namespace A251518.P4661871189118477705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251518.P4661871189118477705

/-!
# A251519: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock summing to 2 3 4 5 6 7 8 9 or 10.

The programs for A251519, there is no canonical definition to state claims against.
-/

/-! ## A251519.P446905722035487569

`A251524(A167614(n+1))`
-/

namespace A251519.P446905722035487569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A167614 (n + 1)).toNat

end

end A251519.P446905722035487569

/-! ## A251519.P13320147901727372462

`A251524(A167499(n)+n)`
-/

namespace A251519.P13320147901727372462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A167499 n + (n : ℤ)).toNat

end

end A251519.P13320147901727372462

/-! ## A251519.P14534505957954845207

`A251524(A000217(n+3)-n)`
-/

namespace A251519.P14534505957954845207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A251519.P14534505957954845207

/-! ## A251519.P1448647533323751405

`A251524(∑[n+3]+1)`
-/

namespace A251519.P1448647533323751405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251519.P1448647533323751405

/-!
# A251520: 

The programs for A251520, there is no canonical definition to state claims against.
-/

/-! ## A251520.P12963666617162760218

`A251524(A141214(n)+7)`
-/

namespace A251520.P12963666617162760218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A141214 n + 7).toNat

end

end A251520.P12963666617162760218

/-! ## A251520.P2968432444242494391

`A251524(A167614(n+2)+1)`
-/

namespace A251520.P2968432444242494391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A167614 (n + 2) + 1).toNat

end

end A251520.P2968432444242494391

/-! ## A251520.P4217638164405136088

`A251524(A167499(n+2)-1)`
-/

namespace A251520.P4217638164405136088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A167499 (n + 2) - 1).toNat

end

end A251520.P4217638164405136088

/-! ## A251520.P12092834878552061297

`A251524(A000217(n+3)+4)`
-/

namespace A251520.P12092834878552061297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A000217 (n + 3) + 4).toNat

end

end A251520.P12092834878552061297

/-!
# A251521: 

The programs for A251521, there is no canonical definition to state claims against.
-/

/-! ## A251521.P13093748805707246970

`A251524(A167614(n+3)+2)`
-/

namespace A251521.P13093748805707246970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A167614 (n + 3) + 2).toNat

end

end A251521.P13093748805707246970

/-! ## A251521.P6806390222120120757

`A251524(A000217(n+4)+5)`
-/

namespace A251521.P6806390222120120757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A000217 (n + 4) + 5).toNat

end

end A251521.P6806390222120120757

/-! ## A251521.P3045579980759355610

`A251524(A141214(n+2)-1)`
-/

namespace A251521.P3045579980759355610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251524 (A141214 (n + 2) - 1).toNat

end

end A251521.P3045579980759355610

/-!
# A251525: 

The programs for A251525, there is no canonical definition to state claims against.
-/

/-! ## A251525.P2896801926688962200

`A251531((n+1)²+n²)`
-/

namespace A251525.P2896801926688962200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 ((n + 1) ^ 2 + n ^ 2)

end

end A251525.P2896801926688962200

/-!
# A251526: Number of ways to place any number of black and any number of white nonattacking knights on a (n+2)X(1+2) board.

The programs for A251526, there is no canonical definition to state claims against.
-/

/-! ## A251526.P6371477665573143941

`A251531(∑[n]+1)`
-/

namespace A251526.P6371477665573143941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251526.P6371477665573143941

/-! ## A251526.P2265780184731281147

`or(1, A251531(A000124(n)))`
-/

namespace A251526.P2265780184731281147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251531 (A000124 n).toNat)

end

end A251526.P2265780184731281147

/-! ## A251526.P9544389358686274214

`record[root(A251531(n+1), A076756(n))]`
-/

namespace A251526.P9544389358686274214
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251531 (n + 1) : ℝ) ^ (1 / (A076756 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251526.P9544389358686274214

/-! ## A251526.P14045533711833108779

`record[root(A251531(n+1), A047671(n+1))]`
-/

namespace A251526.P14045533711833108779
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251531 (n + 1) : ℝ) ^ (1 / (A047671 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251526.P14045533711833108779

/-! ## A251526.P1675577155015030234

`record[root(A251531(n+1), A188211(n+1))]`
-/

namespace A251526.P1675577155015030234
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251531 (n + 1) : ℝ) ^ (1 / (A188211 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251526.P1675577155015030234

/-!
# A251527: Number of ways to place any number of black and any number of white nonattacking knights on a (n+2)X(2+2) board.

The programs for A251527, there is no canonical definition to state claims against.
-/

/-! ## A251527.P5565297269082484023

`A251531(∑[n+1]+2)`
-/

namespace A251527.P5565297269082484023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251527.P5565297269082484023

/-! ## A251527.P14461320113756103202

`record[gcd(A049780(n), A251531(n+3))]`
-/

namespace A251527.P14461320113756103202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049780 n) (A251531 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251527.P14461320113756103202

/-! ## A251527.P16457262608190810293

`record[root(A251531(n+2), A188211(n+1))]`
-/

namespace A251527.P16457262608190810293
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251531 (n + 2) : ℝ) ^ (1 / (A188211 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251527.P16457262608190810293

/-! ## A251527.P1400741020878458764

`record[A251531(abs(A201163(n)))]`
-/

namespace A251527.P1400741020878458764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251527.P1400741020878458764

/-! ## A251527.P14821578333996484842

`record[A251531(A198455(n+1))]`
-/

namespace A251527.P14821578333996484842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251527.P14821578333996484842

/-!
# A251528: Number of ways to place any number of black and any number of white nonattacking knights on a (n+2) X (3+2) board.

The programs for A251528, there is no canonical definition to state claims against.
-/

/-! ## A251528.P9818136479982417242

`A251531(∑[n+2]+4)`
-/

namespace A251528.P9818136479982417242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251528.P9818136479982417242

/-! ## A251528.P4747048717479327974

`or(1, A251531(A167614(n+1)))`
-/

namespace A251528.P4747048717479327974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251531 (A167614 (n + 1)).toNat)

end

end A251528.P4747048717479327974

/-! ## A251528.P3561282141001876359

`lcm(A033999(n), A251531(A167614(n+1)))`
-/

namespace A251528.P3561282141001876359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251531 (A167614 (n + 1)).toNat)

end

end A251528.P3561282141001876359

/-! ## A251528.P1735404766910628291

`A194329(n+1)*A251531(A167614(n+1))`
-/

namespace A251528.P1735404766910628291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194329 (n + 1) * A251531 (A167614 (n + 1)).toNat

end

end A251528.P1735404766910628291

/-! ## A251528.P6064952215565076066

`A194333(n+1)*A251531(A167614(n+1))`
-/

namespace A251528.P6064952215565076066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194333 (n + 1) * A251531 (A167614 (n + 1)).toNat

end

end A251528.P6064952215565076066

/-!
# A251529: Number of ways to place any number of black and any number of white nonattacking knights on a (n+2)X(4+2) board.

The programs for A251529, there is no canonical definition to state claims against.
-/

/-! ## A251529.P12121916975829803946

`A251531(A167614(n+2)+1)`
-/

namespace A251529.P12121916975829803946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 (A167614 (n + 2) + 1).toNat

end

end A251529.P12121916975829803946

/-! ## A251529.P1278356218503574631

`A251531(A000124(n+4)-(n+1))`
-/

namespace A251529.P1278356218503574631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A251529.P1278356218503574631

/-! ## A251529.P8757551732106360774

`A251531(A141214(n+1))`
-/

namespace A251529.P8757551732106360774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 (A141214 (n + 1)).toNat

end

end A251529.P8757551732106360774

/-!
# A251530: 

The programs for A251530, there is no canonical definition to state claims against.
-/

/-! ## A251530.P7737534383179795724

`A251531(A000124(n+4)+n)`
-/

namespace A251530.P7737534383179795724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251531 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A251530.P7737534383179795724

/-!
# A251532: Independence number of the n-triangular honeycomb obtuse knight graph.

The programs for A251532, there is no canonical definition to state claims against.
-/

/-! ## A251532.P12287356102548927702

`A251533(n+1)-A165766(A000041(n))`
-/

namespace A251532.P12287356102548927702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251533 (n + 1) - A165766 (A000041 n).toNat

end

end A251532.P12287356102548927702

/-! ## A251532.P50606894366589408

`A251533(n+1)-A000007(A073304(n))`
-/

namespace A251532.P50606894366589408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251533 (n + 1) - A000007 (A073304 n).toNat

end

end A251532.P50606894366589408

/-! ## A251532.P17357143729802522501

`A251533(n+1)-A000007(A073305(n))`
-/

namespace A251532.P17357143729802522501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251533 (n + 1) - A000007 (A073305 n).toNat

end

end A251532.P17357143729802522501

/-! ## A251532.P10722479848733071459

`A251533(n+1)-A107846(A003945(n))`
-/

namespace A251532.P10722479848733071459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251533 (n + 1) - A107846 (A003945 n).toNat

end

end A251532.P10722479848733071459

/-! ## A251532.P4005043019138231185

`A251533(n+1)-A125005(A023361(n))`
-/

namespace A251532.P4005043019138231185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251533 (n + 1) - A125005 (A023361 n).toNat

end

end A251532.P4005043019138231185

/-!
# A251533: Clique covering number of obtuse knights graph N_n.

The programs for A251533, there is no canonical definition to state claims against.
-/

/-! ## A251533.P749140484633886727

`A251532(n+1)+A165766(A000041(n))`
-/

namespace A251533.P749140484633886727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251532 (n + 1) + A165766 (A000041 n).toNat

end

end A251533.P749140484633886727

/-! ## A251533.P13738497622825137920

`or(A189479(A048587(n)), A251532(n+1))`
-/

namespace A251533.P13738497622825137920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189479 (A048587 n).toNat) (A251532 (n + 1))

end

end A251533.P13738497622825137920

/-! ## A251533.P508031286446244182

`A251532(n+1)+A010060(A205295(n+3))`
-/

namespace A251533.P508031286446244182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251532 (n + 1) + A010060 (A205295 (n + 3)).toNat

end

end A251533.P508031286446244182

/-! ## A251533.P12871029250879710385

`or(A001221(A147393(n+1)), A251532(n+1))`
-/

namespace A251533.P12871029250879710385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A147393 (n + 1)).toNat) (A251532 (n + 1))

end

end A251533.P12871029250879710385

/-!
# A251535: Bisection A098548(2n+1).

The programs for A251535, there is no canonical definition to state claims against.
-/

/-! ## A251535.P5126589503240589402

`A098548(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251535.P5126589503240589402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (2 * n + 1)

end

end A251535.P5126589503240589402

/-! ## A251535.P4912384154756789849

`2*A251536(n+1)-1`
-/

namespace A251535.P4912384154756789849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251536 (n + 1) - 1

end

end A251535.P4912384154756789849

/-! ## A251535.P11786093236237159525

`A004273(A251536(n+1))`
-/

namespace A251535.P11786093236237159525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A251536 (n + 1)).toNat

end

end A251535.P11786093236237159525

/-! ## A251535.P2946017709357052608

`∩[A098548(n+1), A004273(n)]`
-/

namespace A251535.P2946017709357052608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251535.P2946017709357052608

/-! ## A251535.P11560273130693137102

`∩[A098548(n+1), A060747(n)]`
-/

namespace A251535.P11560273130693137102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251535.P11560273130693137102

/-! ## A251535.P17267483886902130382

`∩[A328585(n+1), A098548(n+1)]`
-/

namespace A251535.P17267483886902130382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251535.P17267483886902130382

/-! ## A251535.P17094432160124179764

`filter[A098548(n+1), A000035(#)]`
-/

namespace A251535.P17094432160124179764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A251535.P17094432160124179764

/-!
# A251536: A098548(2n)/2.

The programs for A251536, there is no canonical definition to state claims against.
-/

/-! ## A251536.P11686988718438661441

`A098548(2*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251536.P11686988718438661441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098548 (2 * (n + 1)) : ℚ) / 2

end

end A251536.P11686988718438661441

/-! ## A251536.P8527914116294925796

`ceil(A251535(n)/2)`
-/

namespace A251536.P8527914116294925796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A251535 n : ℚ) / 2⌉

end

end A251536.P8527914116294925796

/-! ## A251536.P18299147506891735276

`A014682(A251535(n)+1)`
-/

namespace A251536.P18299147506891735276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A251535 n + 1).toNat

end

end A251536.P18299147506891735276

/-! ## A251536.P5397017450497987317

`(A098548(Δ[n²])+1)/2`
-/

namespace A251536.P5397017450497987317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098548 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1 : ℚ) / 2

end

end A251536.P5397017450497987317

/-! ## A251536.P1659428417327470735

`record[A328399(A098548(n+1)-1)]`
-/

namespace A251536.P1659428417327470735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A098548 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251536.P1659428417327470735

/-! ## A251536.P14178025501900492904

`A328399(A098548(2*n+1)-1)`
-/

namespace A251536.P14178025501900492904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A098548 (2 * n + 1) - 1).toNat

end

end A251536.P14178025501900492904

/-! ## A251536.P9642183548889338547

`A000463(A251535(n))`
-/

namespace A251536.P9642183548889338547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A251535 n).toNat

end

end A251536.P9642183548889338547

/-! ## A251536.P16217560313752711170

`A026741(A251535(n)+1)`
-/

namespace A251536.P16217560313752711170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A251535 n + 1).toNat

end

end A251536.P16217560313752711170

/-! ## A251536.P17473019017758024840

`A032742(A098548(2*(n+1)))`
-/

namespace A251536.P17473019017758024840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A098548 (2 * (n + 1))).toNat

end

end A251536.P17473019017758024840

/-! ## A251536.P5791072935098607950

`A251535(n)-A004526(A251535(n)-1)`
-/

namespace A251536.P5791072935098607950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n - A004526 (A251535 n - 1).toNat

end

end A251536.P5791072935098607950

/-! ## A251536.P13468234154902408974

`A114119(A098548(2*n+1))-A098548(2*(n+1))`
-/

namespace A251536.P13468234154902408974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 (A098548 (2 * n + 1)).toNat - A098548 (2 * (n + 1))

end

end A251536.P13468234154902408974

/-! ## A251536.P8221527575078575812

`A004526(A251535(n)+1)`
-/

namespace A251536.P8221527575078575812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A251535 n + 1).toNat

end

end A251536.P8221527575078575812

/-! ## A251536.P10468387137394559866

`A004526(A098548(2*n+2))`
-/

namespace A251536.P10468387137394559866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098548 (2 * n + 2)).toNat

end

end A251536.P10468387137394559866

/-!
# A251537: Odd numbers n such that A098548(n+2) > A098548(n) + 6.

The programs for A251537, there is no canonical definition to state claims against.
-/

/-! ## A251537.P9425112268205241150

`2*A251538(n+1)+1`
-/

namespace A251537.P9425112268205241150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251538 (n + 1) + 1

end

end A251537.P9425112268205241150

/-! ## A251537.P17538819439421083199

`A251538(n+1)+A251538(n+1)+abs(A106400(n))`
-/

namespace A251537.P17538819439421083199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251538 (n + 1) + (A251538 (n + 1) + |A106400 n|)

end

end A251537.P17538819439421083199

/-! ## A251537.P3216549335561065772

`A005408(A251538(n+1))`
-/

namespace A251537.P3216549335561065772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A251538 (n + 1)).toNat

end

end A251537.P3216549335561065772

/-! ## A251537.P14841735883082387921

`A144396(A251538(n+1)+1)-2`
-/

namespace A251537.P14841735883082387921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A251538 (n + 1) + 1).toNat - 2

end

end A251537.P14841735883082387921

/-! ## A251537.P15480181591537646880

`A130773(A251538(n+1)+1)-2`
-/

namespace A251537.P15480181591537646880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A251538 (n + 1) + 1).toNat - 2

end

end A251537.P15480181591537646880

/-! ## A251537.P8478672148434567325

`A004442(2*A251538(n+1))`
-/

namespace A251537.P8478672148434567325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A251538 (n + 1)).toNat

end

end A251537.P8478672148434567325

/-! ## A251537.P288519911632698203

`A109613(2*A251538(n+1))`
-/

namespace A251537.P288519911632698203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A251538 (n + 1)).toNat

end

end A251537.P288519911632698203

/-! ## A251537.P17079308798477982447

`A109613(A251538(n+1)+A251538(n+1)+1)`
-/

namespace A251537.P17079308798477982447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A251538 (n + 1) + (A251538 (n + 1) + 1)).toNat

end

end A251537.P17079308798477982447

/-! ## A251537.P17922222306155724874

`A008619(4*A251538(n+1))`
-/

namespace A251537.P17922222306155724874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A251538 (n + 1)).toNat

end

end A251537.P17922222306155724874

/-! ## A251537.P12695518229048101614

`A308217(4*A251538(n+1))`
-/

namespace A251537.P12695518229048101614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (4 * A251538 (n + 1)).toNat

end

end A251537.P12695518229048101614

/-!
# A251538: Numbers k such that A098548(2*k+3) > A098548(2*k+1) + 6.

The programs for A251538, there is no canonical definition to state claims against.
-/

/-! ## A251538.P7019878749155201903

`floor(A251537(n+1)/2)`
-/

namespace A251538.P7019878749155201903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251537 (n + 1) : ℚ) / 2⌋

end

end A251538.P7019878749155201903

/-! ## A251538.P2106057179489763133

`A251539(n)+a(n-1)` with `a(0)=2`
-/

namespace A251538.P2106057179489763133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A251539 n + a (n - 1)

end

end A251538.P2106057179489763133

/-! ## A251538.P4548324905367785492

`A014682(A251537(n+1)-1)`
-/

namespace A251538.P4548324905367785492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A251537 (n + 1) - 1).toNat

end

end A251538.P4548324905367785492

/-! ## A251538.P17609443120784089421

`∑[A251539(n+1)]+2-A251539(n+1)`
-/

namespace A251538.P17609443120784089421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A251539 (n + 1))

end

end A251538.P17609443120784089421

/-! ## A251538.P5593248918615980883

`lt[6, Δ[A251535(n)]]`
-/

namespace A251538.P5593248918615980883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A251538.P5593248918615980883

/-! ## A251538.P7978340968586063626

`lt[3, Δ[A251536(n+1)]]`
-/

namespace A251538.P7978340968586063626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A251538.P7978340968586063626

/-! ## A251538.P8118947222231973767

`A004524(A251537(n+1))`
-/

namespace A251538.P8118947222231973767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A251537 (n + 1)).toNat

end

end A251538.P8118947222231973767

/-! ## A251538.P10203242008836170050

`A004525(A251537(n+1)-1)`
-/

namespace A251538.P10203242008836170050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A251537 (n + 1) - 1).toNat

end

end A251538.P10203242008836170050

/-! ## A251538.P12893433888941395950

`A004526(A251537(n+1)-1)`
-/

namespace A251538.P12893433888941395950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A251537 (n + 1) - 1).toNat

end

end A251538.P12893433888941395950

/-! ## A251538.P1626407199578178878

`A026741(A251537(n+1)-1)`
-/

namespace A251538.P1626407199578178878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A251537 (n + 1) - 1).toNat

end

end A251538.P1626407199578178878

/-! ## A251538.P5608776707363464126

`A065261(A251537(n+1)-1)`
-/

namespace A251538.P5608776707363464126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (A251537 (n + 1) - 1).toNat

end

end A251538.P5608776707363464126

/-! ## A251538.P5857034183047920033

`A000463(A251537(n+1)-2)`
-/

namespace A251538.P5857034183047920033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A251537 (n + 1) - 2).toNat

end

end A251538.P5857034183047920033

/-! ## A251538.P17329026418516329747

`A008619(A251537(n+1)-2)`
-/

namespace A251538.P17329026418516329747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A251537 (n + 1) - 2).toNat

end

end A251538.P17329026418516329747

/-! ## A251538.P8349122449522164650

`A026741(xor(1, A251537(n+1)))`
-/

namespace A251538.P8349122449522164650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.xor 1 (A251537 (n + 1))).toNat

end

end A251538.P8349122449522164650

/-! ## A251538.P13645273480678601150

`A002265(2*A251537(n+1))`
-/

namespace A251538.P13645273480678601150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A251537 (n + 1)).toNat

end

end A251538.P13645273480678601150

/-! ## A251538.P12379932705223970349

`A002265(A251537(n+1)+A251537(n+1)+1)`
-/

namespace A251538.P12379932705223970349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A251537 (n + 1) + (A251537 (n + 1) + 1)).toNat

end

end A251538.P12379932705223970349

/-!
# A251539: First differences of A251538.

The programs for A251539, there is no canonical definition to state claims against.
-/

/-! ## A251539.P5115919316525932123

`Δ[A251538(n+1)]`
-/

namespace A251539.P5115919316525932123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251539.P5115919316525932123

/-! ## A251539.P13325691298264795047

`Δ[A251537(n+1)/2]`
-/

namespace A251539.P13325691298264795047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251537 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251539.P13325691298264795047

/-! ## A251539.P5628519998977605026

`A004526(Δ[A251537(n+1)])`
-/

namespace A251539.P5628519998977605026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A251539.P5628519998977605026

/-! ## A251539.P4696304201263761057

`A251538(n+2)-A251538(n+1)`
-/

namespace A251539.P4696304201263761057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251538 (n + 2) - A251538 (n + 1)

end

end A251539.P4696304201263761057

/-! ## A251539.P14706851575312789370

`(A251537(n+2)-A251537(n+1))/2`
-/

namespace A251539.P14706851575312789370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251537 (n + 2) - A251537 (n + 1) : ℚ) / 2

end

end A251539.P14706851575312789370

/-! ## A251539.P1373896631709898211

`A004001(A251537(n+2)-A251537(n+1)+1)-1`
-/

namespace A251539.P1373896631709898211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A251537 (n + 2) - A251537 (n + 1) + 1).toNat - 1

end

end A251539.P1373896631709898211

/-!
# A251541: Index of first term in A098550 that is divisible by the n-th prime.

The programs for A251541, there is no canonical definition to state claims against.
-/

/-! ## A251541.P8557978882682622042

`A098551(A251618(n+1))`
-/

namespace A251541.P8557978882682622042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A251618 (n + 1)).toNat

end

end A251541.P8557978882682622042

/-! ## A251541.P2363786637096261754

`A098551(lcm(A000040(n+1), A251619(n+1)))`
-/

namespace A251541.P2363786637096261754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (Int.lcm (A000040 (n + 1)) (A251619 (n + 1)))

end

end A251541.P2363786637096261754

/-! ## A251541.P6197026062611741313

`A251716(∑[n]+1)`
-/

namespace A251541.P6197026062611741313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251716 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251541.P6197026062611741313

/-! ## A251541.P13556221877715753313

`and(-1, A251716(A000124(n)))`
-/

namespace A251541.P13556221877715753313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A251716 (A000124 n).toNat)

end

end A251541.P13556221877715753313

/-! ## A251541.P1245792699626429456

`A098551(A251637(∑[n]+1))`
-/

namespace A251541.P1245792699626429456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A251637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A251541.P1245792699626429456

/-! ## A251541.P6572846639892764374

`record[A251716(n+1)/A074909(n)]`
-/

namespace A251541.P6572846639892764374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251716 (n + 1) : ℚ) / (A074909 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251541.P6572846639892764374

/-! ## A251541.P5564121933254767286

`record[A251716(n+1)/A128738(n)]`
-/

namespace A251541.P5564121933254767286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251716 (n + 1) : ℚ) / (A128738 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251541.P5564121933254767286

/-! ## A251541.P6999645014365407420

`record[A251716(n+1)/A002260(n+1)]`
-/

namespace A251541.P6999645014365407420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251716 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251541.P6999645014365407420

/-!
# A251542: List of values A098550(n+2)/A098550(n) for those n for which A098550(n) is a prime.

The programs for A251542, there is no canonical definition to state claims against.
-/

/-! ## A251542.P13508750238231060042

`A251544(n+1)/A000040(n+1)`
-/

namespace A251542.P13508750238231060042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251544 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A251542.P13508750238231060042

/-! ## A251542.P12229502290958363793

`A020639(A251544(n+1))`
-/

namespace A251542.P12229502290958363793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A251544 (n + 1)).toNat

end

end A251542.P12229502290958363793

/-! ## A251542.P12572237797461150390

`A020639(A098550(A251239(n+1)+2))`
-/

namespace A251542.P12572237797461150390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A098550 (A251239 (n + 1) + 2).toNat).toNat

end

end A251542.P12572237797461150390

/-! ## A251542.P12684007461496083853

`A251544(n+1)/A098550(A251239(n+1))`
-/

namespace A251542.P12684007461496083853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251544 (n + 1) : ℚ) / (A098550 (A251239 (n + 1)).toNat : ℚ)

end

end A251542.P12684007461496083853

/-! ## A251542.P12056126271084984079

`A098550(A251239(n+1)+2)/A000040(n+1)`
-/

namespace A251542.P12056126271084984079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098550 (A251239 (n + 1) + 2).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A251542.P12056126271084984079

/-! ## A251542.P13977275379079642949

`A251544(n+1)/record[A051664(n+1)]`
-/

namespace A251542.P13977275379079642949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251544 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A251542.P13977275379079642949

/-! ## A251542.P4318824398776506633

`gcd(A143770(n+1), A251544(n+1))`
-/

namespace A251542.P4318824398776506633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143770 (n + 1)) (A251544 (n + 1))

end

end A251542.P4318824398776506633

/-!
# A251543: a(n) = smallest m such that b(m) is prime and b(m+2)/b(m) = prime(n), where b() = A098550().

The programs for A251543, there is no canonical definition to state claims against.
-/

/-! ## A251543.P13862004539201484174

`A245446(A111546(n))+A245405(n)`
-/

namespace A251543.P13862004539201484174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245446 (A111546 n).toNat + A245405 n

end

end A251543.P13862004539201484174

/-!
# A251544: List of values of A098550(n+2) for those n for which A098550(n) is a prime.

The programs for A251544, there is no canonical definition to state claims against.
-/

/-! ## A251544.P16319414761536666001

`A000040(n+1)*A251542(n+1)`
-/

namespace A251544.P16319414761536666001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A251542 (n + 1)

end

end A251544.P16319414761536666001

/-! ## A251544.P14542620622294752435

`(A040976(n+1)+2)*A251542(n+1)`
-/

namespace A251544.P14542620622294752435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A251542 (n + 1)

end

end A251544.P14542620622294752435

/-! ## A251544.P3882762982190989621

`p?[A026239(n+1)]*A251542(n+1)`
-/

namespace A251544.P3882762982190989621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A251542 (n + 1)

end

end A251544.P3882762982190989621

/-! ## A251544.P4899244756111965004

`p?[A129767(n+1)]*A251542(n+1)`
-/

namespace A251544.P4899244756111965004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A251542 (n + 1)

end

end A251544.P4899244756111965004

/-! ## A251544.P13763632982102158618

`p?[A047255(n+1)]*A251542(n+1)`
-/

namespace A251544.P13763632982102158618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A251542 (n + 1)

end

end A251544.P13763632982102158618

/-! ## A251544.P14454714599722225258

`p?[A256450(n)]*A251542(n+1)`
-/

namespace A251544.P14454714599722225258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A251542 (n + 1)

end

end A251544.P14454714599722225258

/-! ## A251544.P5511501230896531777

`record[A014963(n+2)]*A251542(n+1)`
-/

namespace A251544.P5511501230896531777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A251542 (n + 1)

end

end A251544.P5511501230896531777

/-! ## A251544.P5143201217874539571

`A064989(A065091(n+1))*A251542(n+1)`
-/

namespace A251544.P5143201217874539571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A065091 (n + 1)).toNat * A251542 (n + 1)

end

end A251544.P5143201217874539571

/-! ## A251544.P14017856721281919692

`p?[A001057(n)]*A251542(n+1)`
-/

namespace A251544.P14017856721281919692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A251542 (n + 1)

end

end A251544.P14017856721281919692

/-! ## A251544.P2998249850113308731

`p?[A251561(n+1)]*A251542(n+1)`
-/

namespace A251544.P2998249850113308731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A251542 (n + 1)

end

end A251544.P2998249850113308731

/-! ## A251544.P7174482453755791266

`A098550(A251239(n+1)+2)`
-/

namespace A251544.P7174482453755791266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A251239 (n + 1) + 2).toNat

end

end A251544.P7174482453755791266

/-! ## A251544.P410891818989780371

`A098550(record[A098551(n+2)-A008683(n+2)]+1)`
-/

namespace A251544.P410891818989780371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 2) - A008683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A251544.P410891818989780371

/-! ## A251544.P9518771582413121726

`record[A051664(n+1)]*A251542(n+1)`
-/

namespace A251544.P9518771582413121726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A251542 (n + 1)

end

end A251544.P9518771582413121726

/-! ## A251544.P1519901157345054341

`A098552(A098551(A251239(n+1)+2))`
-/

namespace A251544.P1519901157345054341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (A251239 (n + 1) + 2).toNat).toNat

end

end A251544.P1519901157345054341

/-!
# A251546: a(n) = smallest even number not in {A098550(1), A098550(2), ..., A098550(n)}.

The programs for A251546, there is no canonical definition to state claims against.
-/

/-! ## A251546.P11142162242254290414

`2*A251547(n+1)`
-/

namespace A251546.P11142162242254290414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251547 (n + 1)

end

end A251546.P11142162242254290414

/-! ## A251546.P9732783302830998008

`A004277(A251547(n+1))`
-/

namespace A251546.P9732783302830998008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A251547 (n + 1)).toNat

end

end A251546.P9732783302830998008

/-! ## A251546.P6221638639560900668

`A004275(A251547(n+1)+1)`
-/

namespace A251546.P6221638639560900668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A251547 (n + 1) + 1).toNat

end

end A251546.P6221638639560900668

/-! ## A251546.P4703632115071615283

`A251551(n+1)+A251549(n+1)`
-/

namespace A251546.P4703632115071615283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251551 (n + 1) + A251549 (n + 1)

end

end A251546.P4703632115071615283

/-! ## A251546.P11911884754080933834

`A251551(n+1)+or(1, A251416(n+1))`
-/

namespace A251546.P11911884754080933834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251551 (n + 1) + Int.lor 1 (A251416 (n + 1))

end

end A251546.P11911884754080933834

/-! ## A251546.P11480106354010924234

`A251547(char[1]+1+n)+A251547(n+1)`
-/

namespace A251546.P11480106354010924234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251547 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A251547 (n + 1)

end

end A251546.P11480106354010924234

/-! ## A251546.P6085290407368895798

`2*A008619(A253593(n+1))`
-/

namespace A251546.P6085290407368895798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 (A253593 (n + 1)).toNat

end

end A251546.P6085290407368895798

/-!
# A251547: A251546(n)/2.

The programs for A251547, there is no canonical definition to state claims against.
-/

/-! ## A251547.P5383630384961249643

`A251546(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251547.P5383630384961249643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251546 (n + 1) : ℚ) / 2

end

end A251547.P5383630384961249643

/-! ## A251547.P3669872481077296951

`A001281(A251546(n+1))`
-/

namespace A251547.P3669872481077296951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A251546 (n + 1)).toNat

end

end A251547.P3669872481077296951

/-! ## A251547.P5777006003985157161

`A004526(A251546(n+1)+1)`
-/

namespace A251547.P5777006003985157161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A251546 (n + 1) + 1).toNat

end

end A251547.P5777006003985157161

/-! ## A251547.P3637168452002123077

`A000463(A251546(n+1)-1)`
-/

namespace A251547.P3637168452002123077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A251546 (n + 1) - 1).toNat

end

end A251547.P3637168452002123077

/-! ## A251547.P14877258241897970006

`A106466(A251546(n+1)-2)`
-/

namespace A251547.P14877258241897970006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A251546 (n + 1) - 2).toNat

end

end A251547.P14877258241897970006

/-! ## A251547.P3368797450457299423

`A251550(n+1)+A251552(n+1)+1`
-/

namespace A251547.P3368797450457299423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251550 (n + 1) + (A251552 (n + 1) + 1)

end

end A251547.P3368797450457299423

/-! ## A251547.P3721980145086623312

`(A251551(n+1)+A251549(n+1))/2`
-/

namespace A251547.P3721980145086623312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251551 (n + 1) + A251549 (n + 1) : ℚ) / 2

end

end A251547.P3721980145086623312

/-! ## A251547.P14534456193516270499

`A008619(A253593(n+1))`
-/

namespace A251547.P14534456193516270499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A253593 (n + 1)).toNat

end

end A251547.P14534456193516270499

/-!
# A251548: Lengths of runs of identical terms in A251546.

The programs for A251548, there is no canonical definition to state claims against.
-/

/-! ## A251548.P11207968671060743677

`Δ[record[A098551(A007843(n))]]`
-/

namespace A251548.P11207968671060743677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A007843 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251548.P11207968671060743677

/-! ## A251548.P85928611661049311

`Δ[record[A098551(A185048(n+1))]]`
-/

namespace A251548.P85928611661049311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A185048 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251548.P85928611661049311

/-! ## A251548.P748397071330767372

`Δ[record[A098551(A327529(n+1))]]`
-/

namespace A251548.P748397071330767372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A327529 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251548.P748397071330767372

/-! ## A251548.P3613433889799413348

`Δ[record[A098551(A348717(n+1))]]`
-/

namespace A251548.P3613433889799413348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A348717 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251548.P3613433889799413348

/-! ## A251548.P901761926682474721

`Δ[record[A098551(A092533(n))]]`
-/

namespace A251548.P901761926682474721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A092533 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251548.P901761926682474721

/-!
# A251549: a(n) = smallest odd number not in {A098550(1), A098550(2), ..., A098550(n)}.

The programs for A251549, there is no canonical definition to state claims against.
-/

/-! ## A251549.P5689053655641186076

`or(1, A251416(n+1))`
-/

namespace A251549.P5689053655641186076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251416 (n + 1))

end

end A251549.P5689053655641186076

/-! ## A251549.P13227260367220271830

`2*A251550(n+1)+1`
-/

namespace A251549.P13227260367220271830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251550 (n + 1) + 1

end

end A251549.P13227260367220271830

/-! ## A251549.P1404435645238681342

`A037287(A251550(n+1))`
-/

namespace A251549.P1404435645238681342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037287 (A251550 (n + 1)).toNat

end

end A251549.P1404435645238681342

/-! ## A251549.P745640941459335363

`A069902(A251416(n+1))`
-/

namespace A251549.P745640941459335363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (A251416 (n + 1)).toNat

end

end A251549.P745640941459335363

/-! ## A251549.P5423902764017014591

`A007917(A251416(n+1)+1)`
-/

namespace A251549.P5423902764017014591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A251416 (n + 1) + 1).toNat

end

end A251549.P5423902764017014591

/-! ## A251549.P11782693446960463662

`A020482(A251550(n+1)+2)`
-/

namespace A251549.P11782693446960463662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A251550 (n + 1) + 2).toNat

end

end A251549.P11782693446960463662

/-! ## A251549.P11463556888043052049

`A251546(n+1)-A251551(n+1)`
-/

namespace A251549.P11463556888043052049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251546 (n + 1) - A251551 (n + 1)

end

end A251549.P11463556888043052049

/-! ## A251549.P10793202565700570115

`A251416(gcd(2, A251416(n+1))+n)`
-/

namespace A251549.P10793202565700570115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (Int.gcd 2 (A251416 (n + 1)) + n)

end

end A251549.P10793202565700570115

/-! ## A251549.P14396702055222501628

`2*A251547(n+1)-A251551(n+1)`
-/

namespace A251549.P14396702055222501628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251547 (n + 1) - A251551 (n + 1)

end

end A251549.P14396702055222501628

/-! ## A251549.P8796733018819087465

`A006530(A251550(n+1)+A251550(n+1)+1)`
-/

namespace A251549.P8796733018819087465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A251550 (n + 1) + (A251550 (n + 1) + 1)).toNat

end

end A251549.P8796733018819087465

/-! ## A251549.P10112200173408499567

`A014963(A251550(n+1)+A251550(n+1)+1)`
-/

namespace A251549.P10112200173408499567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A251550 (n + 1) + (A251550 (n + 1) + 1)).toNat

end

end A251549.P10112200173408499567

/-! ## A251549.P9699538016338319159

`A020639(A251550(n+1)+A251550(n+1)+1)`
-/

namespace A251549.P9699538016338319159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A251550 (n + 1) + (A251550 (n + 1) + 1)).toNat

end

end A251549.P9699538016338319159

/-! ## A251549.P6524026496474509722

`A251547(n+1)+A251550(n+1)-A251552(n+1)`
-/

namespace A251549.P6524026496474509722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251547 (n + 1) + (A251550 (n + 1) - A251552 (n + 1))

end

end A251549.P6524026496474509722

/-! ## A251549.P17703717530116530325

`floor(A251416(n+1)+A251416(n+1)/A251546(n+1))`
-/

namespace A251549.P17703717530116530325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251416 (n + 1) : ℚ) + (A251416 (n + 1) : ℚ) / (A251546 (n + 1) : ℚ)⌋

end

end A251549.P17703717530116530325

/-!
# A251550: a(n) = (A251549(n)-1)/2.

The programs for A251550, there is no canonical definition to state claims against.
-/

/-! ## A251550.P5839450744301166057

`(A251549(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251550.P5839450744301166057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251549 (n + 1) - 1 : ℚ) / 2

end

end A251550.P5839450744301166057

/-! ## A251550.P12292048186088374635

`floor(A251416(n+1)/2)`
-/

namespace A251550.P12292048186088374635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251416 (n + 1) : ℚ) / 2⌋

end

end A251550.P12292048186088374635

/-! ## A251550.P1879368032670722359

`floor(A251549(n+1)/2)`
-/

namespace A251550.P1879368032670722359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251549 (n + 1) : ℚ) / 2⌋

end

end A251550.P1879368032670722359

/-! ## A251550.P12417161007535795272

`A002616(A251549(n+1))`
-/

namespace A251550.P12417161007535795272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A251549 (n + 1)).toNat

end

end A251550.P12417161007535795272

/-! ## A251550.P9030255563976413485

`A004526(A251416(n+1))`
-/

namespace A251550.P9030255563976413485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A251416 (n + 1)).toNat

end

end A251550.P9030255563976413485

/-! ## A251550.P13511364390508901441

`A004525(A251549(n+1)-1)`
-/

namespace A251550.P13511364390508901441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A251549 (n + 1) - 1).toNat

end

end A251550.P13511364390508901441

/-! ## A251550.P15964452966924344019

`A064680(A251549(n+1)-1)`
-/

namespace A251550.P15964452966924344019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A251549 (n + 1) - 1).toNat

end

end A251550.P15964452966924344019

/-! ## A251550.P1198108118925521232

`A002265(2*A251416(n+1))`
-/

namespace A251550.P1198108118925521232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A251416 (n + 1)).toNat

end

end A251550.P1198108118925521232

/-! ## A251550.P2317454652336601756

`A000010(or(1, A251416(n+1)))/2`
-/

namespace A251550.P2317454652336601756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Int.lor 1 (A251416 (n + 1))).toNat : ℚ) / 2

end

end A251550.P2317454652336601756

/-! ## A251550.P11172269945413435627

`A251547(n+1)-(A251552(n+1)+1)`
-/

namespace A251550.P11172269945413435627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251547 (n + 1) - (A251552 (n + 1) + 1)

end

end A251550.P11172269945413435627

/-! ## A251550.P11657543698225810442

`floor((A251546(n+1)-A251551(n+1))/2)`
-/

namespace A251550.P11657543698225810442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251546 (n + 1) - A251551 (n + 1) : ℚ) / 2⌋

end

end A251550.P11657543698225810442

/-! ## A251550.P1264558000584674279

`A002265(A251416(n+1)+A251416(n+1)+1)`
-/

namespace A251550.P1264558000584674279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A251416 (n + 1) + (A251416 (n + 1) + 1)).toNat

end

end A251550.P1264558000584674279

/-! ## A251550.P9625364196178373019

`A000010(A251546(n+1)-A251551(n+1))/2`
-/

namespace A251550.P9625364196178373019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A251546 (n + 1) - A251551 (n + 1)).toNat : ℚ) / 2

end

end A251550.P9625364196178373019

/-!
# A251551: a(n) = A251546(n) - A251549(n).

The programs for A251551, there is no canonical definition to state claims against.
-/

/-! ## A251551.P8050735261506195409

`A251546(n+1)-A251549(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251551.P8050735261506195409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251546 (n + 1) - A251549 (n + 1)

end

end A251551.P8050735261506195409

/-! ## A251551.P17012205058735432568

`2*A251552(n+1)+1`
-/

namespace A251551.P17012205058735432568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251552 (n + 1) + 1

end

end A251551.P17012205058735432568

/-! ## A251551.P7472388368578148269

`2*A251547(n+1)-A251549(n+1)`
-/

namespace A251551.P7472388368578148269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251547 (n + 1) - A251549 (n + 1)

end

end A251551.P7472388368578148269

/-! ## A251551.P4545336619668077548

`A251546(n+1)-or(1, A251416(n+1))`
-/

namespace A251551.P4545336619668077548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251546 (n + 1) - Int.lor 1 (A251416 (n + 1))

end

end A251551.P4545336619668077548

/-! ## A251551.P6944314194646208881

`A251547(n+1)+A251552(n+1)-A251550(n+1)`
-/

namespace A251551.P6944314194646208881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251547 (n + 1) + (A251552 (n + 1) - A251550 (n + 1))

end

end A251551.P6944314194646208881

/-!
# A251552: a(n) = (A251551(n)-1)/2.

The programs for A251552, there is no canonical definition to state claims against.
-/

/-! ## A251552.P1103432982913209099

`(A251551(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251552.P1103432982913209099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251551 (n + 1) - 1 : ℚ) / 2

end

end A251552.P1103432982913209099

/-! ## A251552.P8868766004287481503

`floor(A251551(n+1)/2)`
-/

namespace A251552.P8868766004287481503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251551 (n + 1) : ℚ) / 2⌋

end

end A251552.P8868766004287481503

/-! ## A251552.P9155306925124922560

`A001281(A251551(n+1)+1)-1`
-/

namespace A251552.P9155306925124922560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A251551 (n + 1) + 1).toNat - 1

end

end A251552.P9155306925124922560

/-! ## A251552.P7059699298343010659

`A025480(A251551(n+1)+1)-1`
-/

namespace A251552.P7059699298343010659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A251551 (n + 1) + 1).toNat - 1

end

end A251552.P7059699298343010659

/-! ## A251552.P2054337613379332764

`A142150(A251551(n+1)+1)-1`
-/

namespace A251552.P2054337613379332764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A251551 (n + 1) + 1).toNat - 1

end

end A251552.P2054337613379332764

/-! ## A251552.P11498452091884981681

`A251547(n+1)-(A251550(n+1)+1)`
-/

namespace A251552.P11498452091884981681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251547 (n + 1) - (A251550 (n + 1) + 1)

end

end A251552.P11498452091884981681

/-! ## A251552.P17687623147925534019

`(A251546(n+1)-A251549(n+1)-1)/2`
-/

namespace A251552.P17687623147925534019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251546 (n + 1) - A251549 (n + 1) - 1 : ℚ) / 2

end

end A251552.P17687623147925534019

/-!
# A251553: Numbers k such that A098550(k) is a multiple of 3.

The programs for A251553, there is no canonical definition to state claims against.
-/

/-! ## A251553.P10286339424877736274

`eq[0, A098550(n+1)%3]+1`
-/

namespace A251553.P10286339424877736274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098550 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A251553.P10286339424877736274

/-! ## A251553.P15918436847921447610

`eq[3, gcd(3, A098550(n+2))]+2`
-/

namespace A251553.P15918436847921447610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A098550 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A251553.P15918436847921447610

/-! ## A251553.P16139337120703098299

`lt[1, gcd(6, A251089(n+1))-1]+1`
-/

namespace A251553.P16139337120703098299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (A251089 (n + 1)) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A251553.P16139337120703098299

/-! ## A251553.P16587777416766581686

`eq[3, gcd(3, A251089(A028310(n)))]`
-/

namespace A251553.P16587777416766581686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A251089 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A251553.P16587777416766581686

/-! ## A251553.P14301760694229701380

`lt[A011655(A098550(n+1)), 1]+1`
-/

namespace A251553.P14301760694229701380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A098550 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A251553.P14301760694229701380

/-! ## A251553.P13621125456541185090

`A251716(∑[n+2])`
-/

namespace A251553.P13621125456541185090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251716 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251553.P13621125456541185090

/-! ## A251553.P12425484168059546215

`record[A251716(abs(A201163(n)))]`
-/

namespace A251553.P12425484168059546215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251716 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251553.P12425484168059546215

/-! ## A251553.P17358082648562147353

`A098551(A251637(∑[n+2]))`
-/

namespace A251553.P17358082648562147353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A251637 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A251553.P17358082648562147353

/-! ## A251553.P15361000986372591217

`record[A251716(A000096(A065648(n)))]`
-/

namespace A251553.P15361000986372591217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251716 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251553.P15361000986372591217

/-! ## A251553.P2150091681103629129

`record[A251716(A000096(A126759(n)))]`
-/

namespace A251553.P2150091681103629129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251716 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251553.P2150091681103629129

/-! ## A251553.P8269955348708694627

`record[A251716(A000096(A141256(n)))]`
-/

namespace A251553.P8269955348708694627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251716 (A000096 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251553.P8269955348708694627

/-! ## A251553.P3059572693995531517

`record[A251716(A000096(A002260(n+1)))]`
-/

namespace A251553.P3059572693995531517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251716 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251553.P3059572693995531517

/-! ## A251553.P3832518930336873012

`record[A251716(A000096(A023129(n+1)))]`
-/

namespace A251553.P3832518930336873012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251716 (A000096 (A023129 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251553.P3832518930336873012

/-!
# A251556: Conjectured values of n which are the minimal cycle representatives of finite cycles in the permutation of the natural numbers defined by A098550.

The programs for A251556, there is no canonical definition to state claims against.
-/

/-! ## A251556.P3129761221712811623

`∑[A270469(∏[A276433(n)])]`
-/

namespace A251556.P3129761221712811623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276433 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270469 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251556.P3129761221712811623

/-! ## A251556.P2206116581270907910

`A322260(n+1)+∑[A202168(n+1)]`
-/

namespace A251556.P2206116581270907910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322260 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251556.P2206116581270907910

/-! ## A251556.P11785899586978756122

`lt[A329704(n+1), A329649(n+1)²]`
-/

namespace A251556.P11785899586978756122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329649 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A251556.P11785899586978756122

/-! ## A251556.P173198486993861761

`lt[A097860(2*n), comp[A097865(n+1)]]`
-/

namespace A251556.P173198486993861761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097865 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A251556.P173198486993861761

/-! ## A251556.P12837281140776124726

`lt[A177372(A177352(n)), A158799(n)]`
-/

namespace A251556.P12837281140776124726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177372 (A177352 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A251556.P12837281140776124726

/-!
# A251559: a(n) = 2 more than the largest odd number among {A098550(1), A098550(2), ..., A098550(n)} which is neither a prime nor a term of A251542.

The programs for A251559, there is no canonical definition to state claims against.
-/

/-! ## A251559.P8073235717220566739

`3*p?[A014421(A091228(n))]`
-/

namespace A251559.P8073235717220566739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 (A091228 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A251559.P8073235717220566739

/-! ## A251559.P15906840192650177356

`A008486(p?[A014421(A091228(n))])`
-/

namespace A251559.P15906840192650177356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 (A091228 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251559.P15906840192650177356

/-! ## A251559.P1179422870732056488

`A008486(p?[A024724(A082447(n+1))])`
-/

namespace A251559.P1179422870732056488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024724 (A082447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251559.P1179422870732056488

/-!
# A251561: A permutation of the natural numbers: interchange p and 2p for every prime p.

The programs for A251561, there is no canonical definition to state claims against.
-/

/-! ## A251561.P6544778651922004249

`A000720(p?[A253047(n+1)])`
-/

namespace A251561.P6544778651922004249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251561.P6544778651922004249

/-! ## A251561.P13935029399004698191

`A061395(p?[A253047(n+1)])`
-/

namespace A251561.P13935029399004698191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251561.P13935029399004698191

/-! ## A251561.P1207696725761164091

`A003963(p?[A253047(n+1)])`
-/

namespace A251561.P1207696725761164091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251561.P1207696725761164091

/-! ## A251561.P12269597133046748253

`A026233(p?[A253047(n+1)])`
-/

namespace A251561.P12269597133046748253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251561.P12269597133046748253

/-! ## A251561.P1161631955860527606

`A055396(p?[A253047(n+1)])`
-/

namespace A251561.P1161631955860527606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251561.P1161631955860527606

/-! ## A251561.P10909716159513567891

`A230980(p?[A253047(n+1)])`
-/

namespace A251561.P10909716159513567891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251561.P10909716159513567891

/-! ## A251561.P6005459520275024478

`A049084(A253047(A000040(n+1)))`
-/

namespace A251561.P6005459520275024478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A253047 (A000040 (n + 1)).toNat).toNat

end

end A251561.P6005459520275024478

/-! ## A251561.P6143763107317462473

`A284114(p?[A253047(n+1)])`
-/

namespace A251561.P6143763107317462473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284114 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251561.P6143763107317462473

/-!
# A251562: Number of (n+1)X(1+1) 0..7 arrays with every 2X2 subblock summing to a prime.

The programs for A251562, there is no canonical definition to state claims against.
-/

/-! ## A251562.P9848141562404957189

`A251567(∑[n]+1)`
-/

namespace A251562.P9848141562404957189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251567 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251562.P9848141562404957189

/-! ## A251562.P628436197795042913

`lcm(2, A251567(A000124(n)))`
-/

namespace A251562.P628436197795042913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251567 (A000124 n).toNat)

end

end A251562.P628436197795042913

/-! ## A251562.P6224518791465612397

`record[A251567(n+1)/A239633(n)]`
-/

namespace A251562.P6224518791465612397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251567 (n + 1) : ℚ) / (A239633 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251562.P6224518791465612397

/-! ## A251562.P14710982056431313982

`record[gcd(A002262(n), A251567(n+1))]`
-/

namespace A251562.P14710982056431313982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251567 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251562.P14710982056431313982

/-! ## A251562.P9524636532671997924

`A251567(A000124(n))*A299581(n+1)`
-/

namespace A251562.P9524636532671997924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251567 (A000124 n).toNat * A299581 (n + 1)

end

end A251562.P9524636532671997924

/-!
# A251563: Number of (n+1)X(2+1) 0..7 arrays with every 2X2 subblock summing to a prime.

The programs for A251563, there is no canonical definition to state claims against.
-/

/-! ## A251563.P9305583734244915465

`A251567(∑[n+1]+2)`
-/

namespace A251563.P9305583734244915465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251567 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251563.P9305583734244915465

/-! ## A251563.P5637441359704093641

`lcm(2, A251567(A133263(n+1)))`
-/

namespace A251563.P5637441359704093641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251567 (A133263 (n + 1)).toNat)

end

end A251563.P5637441359704093641

/-! ## A251563.P10667298472361989526

`record[gcd(A002262(n), A251567(n+2))]`
-/

namespace A251563.P10667298472361989526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251567 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251563.P10667298472361989526

/-! ## A251563.P10456661715516202494

`record[A251567(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A251563.P10456661715516202494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251567 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251563.P10456661715516202494

/-! ## A251563.P16347929905051990947

`record[A251567(Δ[A003453(n+5)])]`
-/

namespace A251563.P16347929905051990947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251567 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251563.P16347929905051990947

/-!
# A251564: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock summing to a prime.

The programs for A251564, there is no canonical definition to state claims against.
-/

/-! ## A251564.P10484011246369327786

`A251567(A046691(n)+7)`
-/

namespace A251564.P10484011246369327786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251567 (A046691 n + 7).toNat

end

end A251564.P10484011246369327786

/-! ## A251564.P2714301849530451366

`A251567(A000124(n+2)+2)`
-/

namespace A251564.P2714301849530451366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251567 (A000124 (n + 2) + 2).toNat

end

end A251564.P2714301849530451366

/-! ## A251564.P10711871323090391883

`A251567(∑[n+3]+1)`
-/

namespace A251564.P10711871323090391883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251567 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251564.P10711871323090391883

/-!
# A251568: Expansion of e.g.f. exp(x*C(x)^2) where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers, A000108.

The programs for A251568, there is no canonical definition to state claims against.
-/

/-! ## A251568.P3930577295656719861

`2*A152059(n)-A082545(n)`
-/

namespace A251568.P3930577295656719861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152059 n - A082545 n

end

end A251568.P3930577295656719861

/-! ## A251568.P1445668132342741709

`A382101(∑[n+3])`
-/

namespace A251568.P1445668132342741709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251568.P1445668132342741709

/-! ## A251568.P4518329212515737206

`A293985(2*n*(n+2))`
-/

namespace A251568.P4518329212515737206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (2 * (n * (n + 2)))

end

end A251568.P4518329212515737206

/-! ## A251568.P5779053856349415197

`A176120(A132209(n))`
-/

namespace A251568.P5779053856349415197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A132209 n).toNat

end

end A251568.P5779053856349415197

/-! ## A251568.P16509087502514362891

`A176120(abs(A142463(n)))`
-/

namespace A251568.P16509087502514362891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 |A142463 n|.toNat

end

end A251568.P16509087502514362891

/-!
# A251569: E.g.f.: exp(x*G(x)) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A251569, there is no canonical definition to state claims against.
-/

/-! ## A251569.P5554612288484074828

`floor(2*(n^gcd(5, n))!²/3)+1`
-/

namespace A251569.P5554612288484074828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * Nat.factorial (n ^ Nat.gcd 5 n) ^ 2 : ℚ) / 3⌋ + 1

end

end A251569.P5554612288484074828

/-!
# A251570: G.f. A(x) satisfies the condition that M(A(x)) is a power series in x consisting entirely of positive integer coefficients such that M(A(x) - x^k) has negative coefficients for k>0, where M(x) = 1 + x*M(x) + x*M(x)^2 is the g.f. of the Motzkin numbers A001006.

The programs for A251570, there is no canonical definition to state claims against.
-/

/-! ## A251570.P439646698849936934

`A010892(A014631(n+1)^A189006(n))`
-/

namespace A251570.P439646698849936934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (SequenceMachineLib.roundAway ((A014631 (n + 1) : ℚ) ^ (A189006 n : ℤ))).toNat

end

end A251570.P439646698849936934

/-! ## A251570.P4608855731982417564

`char[n²]-A328891(A277101(n+1))`
-/

namespace A251570.P4608855731982417564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A328891 (A277101 (n + 1)).toNat

end

end A251570.P4608855731982417564

/-! ## A251570.P15893069908252205568

`A292047(A011772(n+1))^A185350(n)`
-/

namespace A251570.P15893069908252205568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292047 (A011772 (n + 1)).toNat : ℚ) ^ (A185350 n : ℤ)

end

end A251570.P15893069908252205568

/-! ## A251570.P8394169842042764067

`A010892(∑[A000188(A094373(n))])`
-/

namespace A251570.P8394169842042764067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A094373 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251570.P8394169842042764067

/-! ## A251570.P11099262334006298011

`A008683(A251685(n)+A193866(n))`
-/

namespace A251570.P11099262334006298011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A251685 n + A193866 n).toNat

end

end A251570.P11099262334006298011

/-!
# A251571: G.f.: M(F(x)) is a power series in x consisting entirely of positive integer coefficients such that M(F(x) - x^k) has negative coefficients for k>0, where M(x) = 1 + x*M(x) + x*M(x)^2 is the g.f. of the Motzkin numbers A001006.

The programs for A251571, there is no canonical definition to state claims against.
-/

/-! ## A251571.P6556067400999496205

`A185283(A097074(n))-A062299(A248103(n+1))`
-/

namespace A251571.P6556067400999496205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A097074 n).toNat - A062299 (A248103 (n + 1)).toNat

end

end A251571.P6556067400999496205

/-! ## A251571.P8732878053646879671

`A008620(∑[A202305(A034008(n))])`
-/

namespace A251571.P8732878053646879671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251571.P8732878053646879671

/-! ## A251571.P17824283751860233315

`A071860(A382378(n))`
-/

namespace A251571.P17824283751860233315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A382378 n).toNat

end

end A251571.P17824283751860233315

/-! ## A251571.P15447121809204499066

`A257639(A128020(n+2)-A214899(n+1))`
-/

namespace A251571.P15447121809204499066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A128020 (n + 2) - A214899 (n + 1)).toNat

end

end A251571.P15447121809204499066

/-! ## A251571.P219047390475025671

`A276581(A282831(n+1)+Δ[A211228(2*n)])`
-/

namespace A251571.P219047390475025671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A282831 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A251571.P219047390475025671

/-!
# A251572: G.f. satisfies: A(x) = A(x^2 + x^3)/(1-x).

The programs for A251572, there is no canonical definition to state claims against.
-/

/-! ## A251572.P17975695113145299718

`A193832(A358937(n)-floor(n/2))`
-/

namespace A251572.P17975695113145299718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A358937 n - ⌊(n : ℚ) / 2⌋).toNat

end

end A251572.P17975695113145299718

/-! ## A251572.P6944358362580710195

`A257639(A195971(2*n)+A001072(n+3))`
-/

namespace A251572.P6944358362580710195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A195971 (2 * n) + A001072 (n + 3)).toNat

end

end A251572.P6944358362580710195

/-! ## A251572.P1586238605920574622

`floor(root(A124462(2*(n+1)), 7))`
-/

namespace A251572.P1586238605920574622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124462 (2 * (n + 1)) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A251572.P1586238605920574622

/-! ## A251572.P11138070214953564030

`A000194(A002026(n+1))`
-/

namespace A251572.P11138070214953564030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A002026 (n + 1)).toNat

end

end A251572.P11138070214953564030

/-! ## A251572.P13888057431804930980

`A100617(A079223(n+1))`
-/

namespace A251572.P13888057431804930980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A079223 (n + 1)).toNat

end

end A251572.P13888057431804930980

/-!
# A251573: E.g.f.: exp(3*x*G(x)^2) / G(x)^2 where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A251573, there is no canonical definition to state claims against.
-/

/-! ## A251573.P3233074384004148284

`A251660(∑[n+3]+1)`
-/

namespace A251573.P3233074384004148284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251660 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251573.P3233074384004148284

/-! ## A251573.P18392733840657008816

`A289234(A289374(∑[and(4, n)]+n))`
-/

namespace A251573.P18392733840657008816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (A289374 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A251573.P18392733840657008816

/-!
# A251574: E.g.f.: exp(4*x*G(x)^3) / G(x)^3 where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A251574, there is no canonical definition to state claims against.
-/

/-! ## A251574.P18066764849217696708

`A251660(A141214(n+1))`
-/

namespace A251574.P18066764849217696708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251660 (A141214 (n + 1)).toNat

end

end A251574.P18066764849217696708

/-! ## A251574.P15800838660935973276

`A251660(A027379(n+2))`
-/

namespace A251574.P15800838660935973276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251660 (A027379 (n + 2)).toNat

end

end A251574.P15800838660935973276

/-! ## A251574.P15616574332449046177

`A251660(A055998(n+2))`
-/

namespace A251574.P15616574332449046177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251660 (A055998 (n + 2)).toNat

end

end A251574.P15616574332449046177

/-! ## A251574.P5004845575424102645

`A251660(A155212(n)+5)`
-/

namespace A251574.P5004845575424102645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251660 (A155212 n + 5).toNat

end

end A251574.P5004845575424102645

/-!
# A251575: E.g.f.: exp(5*x*G(x)^4) / G(x)^4 where G(x) = 1 + x*G(x)^5 is the g.f. of A002294.

The programs for A251575, there is no canonical definition to state claims against.
-/

/-! ## A251575.P17742585812172307076

`A251660(∑[n+5]+6)`
-/

namespace A251575.P17742585812172307076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251660 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A251575.P17742585812172307076

/-!
# A251576: E.g.f.: exp(6*x*G(x)^5) / G(x)^5 where G(x) = 1 + x*G(x)^6 is the g.f. of A002295.

The programs for A251576, there is no canonical definition to state claims against.
-/

/-! ## A251576.P18251047367402825380

`A251660(eq[3, A219347(n)])`
-/

namespace A251576.P18251047367402825380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251576.P18251047367402825380

/-! ## A251576.P7555501821868245171

`A251660(eq[5, A152157(n)])`
-/

namespace A251576.P7555501821868245171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251576.P7555501821868245171

/-!
# A251577: E.g.f.: exp(7*x*G(x)^6) / G(x)^6 where G(x) = 1 + x*G(x)^7 is the g.f. of A002296.

The programs for A251577, there is no canonical definition to state claims against.
-/

/-! ## A251577.P1349558966420216796

`A374135((n+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A251577.P1349558966420216796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A374135 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A251577.P1349558966420216796

/-!
# A251578: E.g.f.: exp(8*x*G(x)^7) / G(x)^7 where G(x) = 1 + x*G(x)^8 is the g.f. of A007556.

The programs for A251578, there is no canonical definition to state claims against.
-/

/-! ## A251578.P13957411367705176035

`A000010(∑[n*A230388(n)]+1)`
-/

namespace A251578.P13957411367705176035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A251578.P13957411367705176035

/-!
# A251579: E.g.f.: exp(9*x*G(x)^8) / G(x)^8 where G(x) = 1 + x*G(x)^9 is the g.f. of A059967.

The programs for A251579, there is no canonical definition to state claims against.
-/

/-! ## A251579.P3272029693742231614

`A071042(comp[2*(n+1)]!)`
-/

namespace A251579.P3272029693742231614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071042 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A251579.P3272029693742231614

/-!
# A251580: E.g.f.: exp(10*x*G(x)^9) / G(x)^9 where G(x) = 1 + x*G(x)^10 is the g.f. of A059968.

The programs for A251580, there is no canonical definition to state claims against.
-/

/-! ## A251580.P17507095388266352088

`A005004(∏[A100104(n)])`
-/

namespace A251580.P17507095388266352088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251580.P17507095388266352088

/-!
# A251581: G.f. satisfies: A(x) = A(x^2 + 2*x^3)/(1-x).

The programs for A251581, there is no canonical definition to state claims against.
-/

/-! ## A251581.P18018148425411564478

`A003056(A353016(n+2))-A004247(n)`
-/

namespace A251581.P18018148425411564478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A353016 (n + 2)).toNat - A004247 n

end

end A251581.P18018148425411564478

/-! ## A251581.P3318837644277107868

`A003056(xor(A007453(n+1), A254128(n)))`
-/

namespace A251581.P3318837644277107868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (A007453 (n + 1)) (A254128 n)).toNat

end

end A251581.P3318837644277107868

/-! ## A251581.P15346021991936766111

`A213259(A038392(n+1))+A179807(n+1)`
-/

namespace A251581.P15346021991936766111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A038392 (n + 1)).toNat + A179807 (n + 1)

end

end A251581.P15346021991936766111

/-!
# A251582: G.f. satisfies: A(x) = A(2*x^2 + x^3)/(1-x).

The programs for A251582, there is no canonical definition to state claims against.
-/

/-! ## A251582.P495862747984940981

`A298538(A000070(n))-A012781(A000120(n))`
-/

namespace A251582.P495862747984940981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (A000070 n).toNat - A012781 (A000120 n).toNat

end

end A251582.P495862747984940981

/-!
# A251583: a(n) = 3^(n-1) * (n+1)^(n-3) * (n+3).

The programs for A251583, the canonical program `A251583.P8910026891617991750` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251583 has offset 0).

The definition of A251583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251583.P8910026891617991750

`3^(n-1)*(n+1)^(n-3)*(n+3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251583

/-- `3^(n-1)*(n+1)^(n-3)*(n+3)` -/
def P8910026891617991750.Spec : Prop :=
  ∀ n, P8910026891617991750.a n = (A251583 n : ℚ)

end A251583

/-!
# A251584: a(n) = 4^(n-2) * (n+1)^(n-4) * (3*n^2 + 13*n + 16).

The programs for A251584, the canonical program `A251584.P7515185479979683614` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251584 has offset 0).

The definition of A251584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251584.P7515185479979683614

`4^(n-2)*(n+1)^(n-4)*(3*n²+13*n+16)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251584

/-- `4^(n-2)*(n+1)^(n-4)*(3*n²+13*n+16)` -/
def P7515185479979683614.Spec : Prop :=
  ∀ n, P7515185479979683614.a n = (A251584 n : ℚ)

end A251584

/-!
# A251585: a(n) = 5^(n-3) * (n+1)^(n-5) * (16*n^3 + 87*n^2 + 172*n + 125).

The programs for A251585, the canonical program `A251585.P11109566970301105775` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251585 has offset 0).

The definition of A251585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251585.P11109566970301105775

`5^(n-3)*(n+1)^(n-5)*(16*n^3+87*n²+172*n+125)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251585

/-- `5^(n-3)*(n+1)^(n-5)*(16*n^3+87*n²+172*n+125)` -/
def P11109566970301105775.Spec : Prop :=
  ∀ n, P11109566970301105775.a n = (A251585 n : ℚ)

end A251585

/-!
# A251586: a(n) = 6^(n-4) * (n+1)^(n-6) * (125*n^4 + 810*n^3 + 2095*n^2 + 2586*n + 1296).

The programs for A251586, there is no canonical definition to state claims against.
-/

/-! ## A251586.P8544850909412171696

`A008507(A008186(n!))`
-/

namespace A251586.P8544850909412171696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (A008186 (Nat.factorial n)).toNat

end

end A251586.P8544850909412171696

/-!
# A251587: a(n) = 7^(n-5) * (n+1)^(n-7) * (1296*n^5 + 9720*n^4 + 30555*n^3 + 50665*n^2 + 44621*n + 16807).

The programs for A251587, there is no canonical definition to state claims against.
-/

/-! ## A251587.P299007185696490501

`A001951(or(A001951(n), A126156(n)))`
-/

namespace A251587.P299007185696490501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Int.lor (A001951 n) (A126156 n)).toNat

end

end A251587.P299007185696490501

/-!
# A251591: Dimension of space of invariant tensors in 2n-th tensor power of the third fundamental representation of Sp(6).

The programs for A251591, there is no canonical definition to state claims against.
-/

/-! ## A251591.P335326872602860810

`A218252(n²*a(n-1))` with `a(0)=1`
-/

namespace A251591.P335326872602860810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218252 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A251591.P335326872602860810

/-!
# A251592: Triangle of coefficients of polynomials P(n,t) related to the Mittag-Leffler function, where P(n,t) = Product_{k=0..n-2} n*t-k.

The programs for A251592, there is no canonical definition to state claims against.
-/

/-! ## A251592.P6361528596264717908

`A048994(n)*A076112(n+1)`
-/

namespace A251592.P6361528596264717908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A076112 (n + 1)

end

end A251592.P6361528596264717908

/-! ## A251592.P15841176307008102900

`A009999(A245300(n))*A048994(n)`
-/

namespace A251592.P15841176307008102900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A245300 n).toNat * A048994 n

end

end A251592.P15841176307008102900

/-! ## A251592.P9102143436477323690

`A048994(n)*A079901(A007401(n+1))`
-/

namespace A251592.P9102143436477323690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A079901 (A007401 (n + 1)).toNat

end

end A251592.P9102143436477323690

/-! ## A251592.P10313865161035126040

`A048994(n)*A095888(A038722(n+1))`
-/

namespace A251592.P10313865161035126040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A095888 (A038722 (n + 1)).toNat

end

end A251592.P10313865161035126040

/-! ## A251592.P7562296350948298972

`A054654(A061579(n))*A076112(n+1)`
-/

namespace A251592.P7562296350948298972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A061579 n).toNat * A076112 (n + 1)

end

end A251592.P7562296350948298972

/-!
# A251593: Dimension of space of invariant tensors in n-th tensor power of second fundamental representation of Sp(8).

The programs for A251593, there is no canonical definition to state claims against.
-/

/-! ## A251593.P13134226323867932663

`C(A214781(round(ϕ*a(n-1))), 2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A251593.P13134226323867932663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  Nat.choose (A214781 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat).toNat 2

end

end A251593.P13134226323867932663

/-! ## A251593.P7895474304954924215

`A324690(A258041(n))`
-/

namespace A251593.P7895474304954924215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324690 (A258041 n).toNat

end

end A251593.P7895474304954924215

/-! ## A251593.P13163083570813820049

`A116399(A317535(n+1))`
-/

namespace A251593.P13163083570813820049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116399 (A317535 (n + 1)).toNat

end

end A251593.P13163083570813820049

/-!
# A251594: Dimension of space of invariant tensors in 2n-th tensor power of third fundamental representation of Sp(8).

The programs for A251594, there is no canonical definition to state claims against.
-/

/-! ## A251594.P8618291278937207324

`A322575(n+1)+A095114(A001044(n))`
-/

namespace A251594.P8618291278937207324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322575 (n + 1) + A095114 (A001044 n).toNat

end

end A251594.P8618291278937207324

/-!
# A251595: Distinct terms in A251416.

The programs for A251595, there is no canonical definition to state claims against.
-/

/-! ## A251595.P18138667641858826650

`A251416(∑[A251417(n+1)]-A251417(n+1)+1)`
-/

namespace A251595.P18138667641858826650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (∑ j ∈ Finset.range (n + 1), f1 j - A251417 (n + 1) + 1).toNat

end

end A251595.P18138667641858826650

/-! ## A251595.P14532492303353071414

`A251416(∑[A251417(n+1)])`
-/

namespace A251595.P14532492303353071414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251595.P14532492303353071414

/-! ## A251595.P10612752106637825082

`record[A251416(n+1)%A251416(2*(n+1))]`
-/

namespace A251595.P10612752106637825082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251416 (n + 1)) (A251416 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251595.P10612752106637825082

/-! ## A251595.P16172183425590305534

`lt[0, char[A251416(n+1)]]`
-/

namespace A251595.P16172183425590305534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A251595.P16172183425590305534

/-! ## A251595.P3616386243840195062

`eq[A098551(n+2), A249943(n+2)]+2`
-/

namespace A251595.P3616386243840195062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A251595.P3616386243840195062

/-! ## A251595.P12432204551955039029

`∑[A251621(n+1)]+1`
-/

namespace A251595.P12432204551955039029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A251595.P12432204551955039029

/-! ## A251595.P9292976506729424365

`A251416(A251620(n+1))`
-/

namespace A251595.P9292976506729424365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (A251620 (n + 1)).toNat

end

end A251595.P9292976506729424365

/-! ## A251595.P3695618894871157159

`record[A251416(n+1)%A305369(n+5)]`
-/

namespace A251595.P3695618894871157159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251416 (n + 1)) (A305369 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251595.P3695618894871157159

/-! ## A251595.P14395380824742294771

`A251416(lt[A098550(n+1), A251416(n+1)]+1)`
-/

namespace A251595.P14395380824742294771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A251595.P14395380824742294771

/-! ## A251595.P16633113433411848801

`A098550(A251620(n+2))`
-/

namespace A251595.P16633113433411848801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A251620 (n + 2)).toNat

end

end A251595.P16633113433411848801

/-! ## A251595.P2444511101048881085

`A098550(record[A098551(n+2)])`
-/

namespace A251595.P2444511101048881085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251595.P2444511101048881085

/-! ## A251595.P5989339793992984887

`A098550(∑[A251417(n+1)]+1)`
-/

namespace A251595.P5989339793992984887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A251595.P5989339793992984887

/-!
# A251598: Dimension of space of invariant tensors in 2n-th tensor power of natural representation of Sp(8).

The programs for A251598, there is no canonical definition to state claims against.
-/

/-! ## A251598.P1992350206467794558

`A001147(n)-A045914(A137356(n))`
-/

namespace A251598.P1992350206467794558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A045914 (A137356 n).toNat

end

end A251598.P1992350206467794558

/-! ## A251598.P18068635543759487858

`A001147(n)-A321378(A006882(n))`
-/

namespace A251598.P18068635543759487858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A321378 (A006882 n).toNat

end

end A251598.P18068635543759487858

/-! ## A251598.P6065327783089969560

`A001147(n)-A025443(A330895(n))`
-/

namespace A251598.P6065327783089969560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A025443 (A330895 n).toNat

end

end A251598.P6065327783089969560

/-!
# A251599: Centers of rows of the triangular array formed by the natural numbers.

The programs for A251599, the canonical program `A251599.P4845947750457186620` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251599 has offset 1).

The definition of A251599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251599.P4845947750457186620

`C(round(2*n/3), 2)+n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251599

/-- `C(round(2*n/3), 2)+n+1` -/
def P4845947750457186620.Spec : Prop :=
  ∀ n, (P4845947750457186620.a n : ℤ) = A251599 (n + 1)

theorem P4845947750457186620.correct : P4845947750457186620.Spec := by
  intro n
  simp only [A251599, Nat.add_sub_cancel]

end A251599

/-! ## A251599.P17658423812347959087

`∑[C(round(2*n/3), a(n-1))]` with `a(0)=1`
-/

namespace A251599.P17658423812347959087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251599.P17658423812347959087

namespace A251599

/-- `∑[C(round(2*n/3), a(n-1))]` -/
def P17658423812347959087.Spec : Prop :=
  ∀ n, (P17658423812347959087.a n : ℤ) = A251599 (n + 1)

end A251599

/-! ## A251599.P17110291865322706620

`∑[gcd(C(n, 2)%3, ∑[n²%3])]+1`
-/

namespace A251599.P17110291865322706620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose n 2 % 3) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A251599.P17110291865322706620

namespace A251599

/-- `∑[gcd(C(n, 2)%3, ∑[n²%3])]+1` -/
def P17110291865322706620.Spec : Prop :=
  ∀ n, (P17110291865322706620.a n : ℤ) = A251599 (n + 1)

end A251599

/-! ## A251599.P7246458698652422386

`∑[gcd((2*n+1)*2*n, round(2*n/3))]+1`
-/

namespace A251599.P7246458698652422386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1) * (2 * n) : ℤ) (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A251599.P7246458698652422386

namespace A251599

/-- `∑[gcd((2*n+1)*2*n, round(2*n/3))]+1` -/
def P7246458698652422386.Spec : Prop :=
  ∀ n, (P7246458698652422386.a n : ℤ) = A251599 (n + 1)

end A251599

/-! ## A251599.P17147129029353692994

`∑[A092942(n)]+1`
-/

namespace A251599.P17147129029353692994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A251599.P17147129029353692994

namespace A251599

/-- `∑[A092942(n)]+1` -/
def P17147129029353692994.Spec : Prop :=
  ∀ n, P17147129029353692994.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P7459334245974938650

`C(A004396(n), 2)+1+n`
-/

namespace A251599.P7459334245974938650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004396 n).toNat 2 + 1 + n

end

end A251599.P7459334245974938650

namespace A251599

/-- `C(A004396(n), 2)+1+n` -/
def P7459334245974938650.Spec : Prop :=
  ∀ n, (P7459334245974938650.a n : ℤ) = A251599 (n + 1)

end A251599

/-! ## A251599.P4032230152315381973

`A161680(A004396(n))+1+n`
-/

namespace A251599.P4032230152315381973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004396 n).toNat + 1 + (n : ℤ)

end

end A251599.P4032230152315381973

namespace A251599

/-- `A161680(A004396(n))+1+n` -/
def P4032230152315381973.Spec : Prop :=
  ∀ n, P4032230152315381973.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P7191683063748074178

`A211547(n)+A050271(n+1)`
-/

namespace A251599.P7191683063748074178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211547 n + A050271 (n + 1)

end

end A251599.P7191683063748074178

namespace A251599

/-- `A211547(n)+A050271(n+1)` -/
def P7191683063748074178.Spec : Prop :=
  ∀ n, P7191683063748074178.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P11612134267173744124

`A050271(n+1)+A002264(n)²`
-/

namespace A251599.P11612134267173744124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050271 (n + 1) + A002264 n ^ 2

end

end A251599.P11612134267173744124

namespace A251599

/-- `A050271(n+1)+A002264(n)²` -/
def P11612134267173744124.Spec : Prop :=
  ∀ n, P11612134267173744124.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P8719167821170398426

`A087483(n)-(n-A004396(n))²`
-/

namespace A251599.P8719167821170398426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 n - ((n : ℤ) - A004396 n) ^ 2

end

end A251599.P8719167821170398426

namespace A251599

/-- `A087483(n)-(n-A004396(n))²` -/
def P8719167821170398426.Spec : Prop :=
  ∀ n, P8719167821170398426.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P13718245310647877760

`A004396(n+1)+A000982(A004396(n))`
-/

namespace A251599.P13718245310647877760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) + A000982 (A004396 n).toNat

end

end A251599.P13718245310647877760

namespace A251599

/-- `A004396(n+1)+A000982(A004396(n))` -/
def P13718245310647877760.Spec : Prop :=
  ∀ n, P13718245310647877760.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P5745187246054063088

`A007980(n+1)-(A087278(n+1)+A002264(n+1))`
-/

namespace A251599.P5745187246054063088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (n + 1) - (A087278 (n + 1) + A002264 (n + 1))

end

end A251599.P5745187246054063088

namespace A251599

/-- `A007980(n+1)-(A087278(n+1)+A002264(n+1))` -/
def P5745187246054063088.Spec : Prop :=
  ∀ n, P5745187246054063088.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P17299080267692652876

`A002522(n+1)-(A211547(n+1)+A071619(n+1))`
-/

namespace A251599.P17299080267692652876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) - (A211547 (n + 1) + A071619 (n + 1))

end

end A251599.P17299080267692652876

namespace A251599

/-- `A002522(n+1)-(A211547(n+1)+A071619(n+1))` -/
def P17299080267692652876.Spec : Prop :=
  ∀ n, P17299080267692652876.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P12765793489449780613

`∑[A166514(A131452(n))]+1`
-/

namespace A251599.P12765793489449780613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A131452 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A251599.P12765793489449780613

namespace A251599

/-- `∑[A166514(A131452(n))]+1` -/
def P12765793489449780613.Spec : Prop :=
  ∀ n, P12765793489449780613.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P8502157438640914845

`A211534(Δ[n²])+n+1`
-/

namespace A251599.P8502157438640914845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211534 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A251599.P8502157438640914845

namespace A251599

/-- `A211534(Δ[n²])+n+1` -/
def P8502157438640914845.Spec : Prop :=
  ∀ n, P8502157438640914845.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P11320827589851974128

`(A087278(2*n+1)+1)/2`
-/

namespace A251599.P11320827589851974128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087278 (2 * n + 1) + 1 : ℚ) / 2

end

end A251599.P11320827589851974128

namespace A251599

/-- `(A087278(2*n+1)+1)/2` -/
def P11320827589851974128.Spec : Prop :=
  ∀ n, P11320827589851974128.a n = (A251599 (n + 1) : ℚ)

end A251599

/-! ## A251599.P7535878775341535338

`A211534(2*n+1)+1+n`
-/

namespace A251599.P7535878775341535338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211534 (2 * n + 1) + 1 + (n : ℤ)

end

end A251599.P7535878775341535338

namespace A251599

/-- `A211534(2*n+1)+1+n` -/
def P7535878775341535338.Spec : Prop :=
  ∀ n, P7535878775341535338.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P15330678550239171844

`n+1+C(A002264(2*n+1), 2)`
-/

namespace A251599.P15330678550239171844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + Nat.choose (A002264 (2 * n + 1)).toNat 2

end

end A251599.P15330678550239171844

namespace A251599

/-- `n+1+C(A002264(2*n+1), 2)` -/
def P15330678550239171844.Spec : Prop :=
  ∀ n, (P15330678550239171844.a n : ℤ) = A251599 (n + 1)

end A251599

/-! ## A251599.P14854457087944859919

`A152947(A008620(2*n+1))+n`
-/

namespace A251599.P14854457087944859919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A008620 (2 * n + 1)).toNat + (n : ℤ)

end

end A251599.P14854457087944859919

namespace A251599

/-- `A152947(A008620(2*n+1))+n` -/
def P14854457087944859919.Spec : Prop :=
  ∀ n, P14854457087944859919.a n = A251599 (n + 1)

end A251599

/-! ## A251599.P5635002622252088978

`record[(A087278(n)+1)/A020639(n+1)]`
-/

namespace A251599.P5635002622252088978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087278 n + 1 : ℚ) / (A020639 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251599.P5635002622252088978

namespace A251599

/-- `record[(A087278(n)+1)/A020639(n+1)]` -/
def P5635002622252088978.Spec : Prop :=
  ∀ n, P5635002622252088978.a n = (A251599 (n + 1) : ℚ)

end A251599

